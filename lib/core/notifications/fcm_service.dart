import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';

part 'fcm_service.g.dart';

const fcmChannelId = 'high_importance_channel';
const fcmChannelName = 'Notifikasi Penting';

final FlutterLocalNotificationsPlugin localNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

/// Must stay top-level and keep this annotation — the engine looks it up by
/// name in the separate background isolate when a push arrives while the
/// app is terminated or backgrounded.
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // FCM renders the system notification itself in background/terminated
  // state as long as the payload carries a `notification` block.
}

/// One-time setup done at app start: Android notification channel +
/// permission request + a foreground listener. FCM does not show a system
/// notification automatically while the app is in the foreground, so that
/// case is rendered manually via flutter_local_notifications.
Future<void> initializeLocalNotifications() async {
  const androidChannel = AndroidNotificationChannel(
    fcmChannelId,
    fcmChannelName,
    description: 'Notifikasi warta, jadwal ibadah, dan pengumuman gereja',
    importance: Importance.high,
  );

  await localNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(androidChannel);

  await localNotificationsPlugin.initialize(
    settings: const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    ),
  );

  await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    sound: true,
  );

  FirebaseMessaging.onMessage.listen((message) async {
    final notification = message.notification;
    if (notification == null) return;
    await localNotificationsPlugin.show(
      id: notification.hashCode,
      title: notification.title,
      body: notification.body,
      notificationDetails: const NotificationDetails(
        android: AndroidNotificationDetails(
          fcmChannelId,
          fcmChannelName,
          importance: Importance.high,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
    );
  });
}

/// Keeps the backend's copy of this device's FCM token in sync with the
/// logged-in user: registers on login (and on token refresh), clears on
/// logout so a stale token doesn't keep receiving pushes for this account.
@Riverpod(keepAlive: true)
class FcmTokenSync extends _$FcmTokenSync {
  @override
  void build() {
    ref.listen(authProvider, (_, next) {
      if (next.asData?.value != null) _syncToken();
    });

    FirebaseMessaging.instance.onTokenRefresh.listen((_) => _syncToken());
  }

  Future<void> _syncToken() async {
    try {
      final token = await FirebaseMessaging.instance.getToken();
      if (token == null) return;
      await ref.read(dioProvider).post(
            '/api/mobile/notifications/register-token',
            data: {'token': token},
          );
    } catch (e) {
      debugPrint('FCM register token failed: $e');
    }
  }

  Future<void> unregister() async {
    try {
      await ref.read(dioProvider).post('/api/mobile/notifications/unregister-token');
    } catch (e) {
      debugPrint('FCM unregister token failed: $e');
    }
  }
}
