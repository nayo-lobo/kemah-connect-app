import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gmit_jemaat_kemah_airnona_app/app/router.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/notifications/fcm_service.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/theme/app_theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    // Keeps the FCM token registered with the backend in sync with login state.
    ref.watch(fcmTokenSyncProvider);

    return MaterialApp.router(
      title: 'GMIT Kemah Airnona',
      theme: AppTheme.dark,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
