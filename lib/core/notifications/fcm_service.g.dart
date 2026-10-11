// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Keeps the backend's copy of this device's FCM token in sync with the
/// logged-in user: registers on login (and on token refresh), clears on
/// logout so a stale token doesn't keep receiving pushes for this account.

@ProviderFor(FcmTokenSync)
final fcmTokenSyncProvider = FcmTokenSyncProvider._();

/// Keeps the backend's copy of this device's FCM token in sync with the
/// logged-in user: registers on login (and on token refresh), clears on
/// logout so a stale token doesn't keep receiving pushes for this account.
final class FcmTokenSyncProvider extends $NotifierProvider<FcmTokenSync, void> {
  /// Keeps the backend's copy of this device's FCM token in sync with the
  /// logged-in user: registers on login (and on token refresh), clears on
  /// logout so a stale token doesn't keep receiving pushes for this account.
  FcmTokenSyncProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fcmTokenSyncProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fcmTokenSyncHash();

  @$internal
  @override
  FcmTokenSync create() => FcmTokenSync();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$fcmTokenSyncHash() => r'22cef5821358dca3cb8d98384064d9b800b0044a';

/// Keeps the backend's copy of this device's FCM token in sync with the
/// logged-in user: registers on login (and on token refresh), clears on
/// logout so a stale token doesn't keep receiving pushes for this account.

abstract class _$FcmTokenSync extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
