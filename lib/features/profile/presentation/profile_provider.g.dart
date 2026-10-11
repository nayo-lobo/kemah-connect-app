// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(profileDatasource)
final profileDatasourceProvider = ProfileDatasourceProvider._();

final class ProfileDatasourceProvider
    extends
        $FunctionalProvider<
          ProfileDatasource,
          ProfileDatasource,
          ProfileDatasource
        >
    with $Provider<ProfileDatasource> {
  ProfileDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileDatasourceHash();

  @$internal
  @override
  $ProviderElement<ProfileDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfileDatasource create(Ref ref) {
    return profileDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileDatasource>(value),
    );
  }
}

String _$profileDatasourceHash() => r'fec516a746d27c75abbd299d9402d939ad064319';

@ProviderFor(profileRepository)
final profileRepositoryProvider = ProfileRepositoryProvider._();

final class ProfileRepositoryProvider
    extends
        $FunctionalProvider<
          ProfileRepository,
          ProfileRepository,
          ProfileRepository
        >
    with $Provider<ProfileRepository> {
  ProfileRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProfileRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfileRepository create(Ref ref) {
    return profileRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileRepository>(value),
    );
  }
}

String _$profileRepositoryHash() => r'b492e22b6d58f1edacc53a09da2fdefe971ced2a';

@ProviderFor(myProfile)
final myProfileProvider = MyProfileProvider._();

final class MyProfileProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProfileResponse>,
          ProfileResponse,
          FutureOr<ProfileResponse>
        >
    with $FutureModifier<ProfileResponse>, $FutureProvider<ProfileResponse> {
  MyProfileProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myProfileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myProfileHash();

  @$internal
  @override
  $FutureProviderElement<ProfileResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProfileResponse> create(Ref ref) {
    return myProfile(ref);
  }
}

String _$myProfileHash() => r'736c47e10be2dedc48e70cd0a30792c4dd67560f';
