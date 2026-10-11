// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(familyDatasource)
final familyDatasourceProvider = FamilyDatasourceProvider._();

final class FamilyDatasourceProvider
    extends
        $FunctionalProvider<
          FamilyDatasource,
          FamilyDatasource,
          FamilyDatasource
        >
    with $Provider<FamilyDatasource> {
  FamilyDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'familyDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$familyDatasourceHash();

  @$internal
  @override
  $ProviderElement<FamilyDatasource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FamilyDatasource create(Ref ref) {
    return familyDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FamilyDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FamilyDatasource>(value),
    );
  }
}

String _$familyDatasourceHash() => r'd9568063b6b6b3a66d31f51059aa0f8277f98f56';

@ProviderFor(familyRepository)
final familyRepositoryProvider = FamilyRepositoryProvider._();

final class FamilyRepositoryProvider
    extends
        $FunctionalProvider<
          FamilyRepository,
          FamilyRepository,
          FamilyRepository
        >
    with $Provider<FamilyRepository> {
  FamilyRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'familyRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$familyRepositoryHash();

  @$internal
  @override
  $ProviderElement<FamilyRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FamilyRepository create(Ref ref) {
    return familyRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FamilyRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FamilyRepository>(value),
    );
  }
}

String _$familyRepositoryHash() => r'7663eab375da842badf4c4a021b03685b51bac35';

@ProviderFor(myFamily)
final myFamilyProvider = MyFamilyProvider._();

final class MyFamilyProvider
    extends
        $FunctionalProvider<
          AsyncValue<FamilyResponse>,
          FamilyResponse,
          FutureOr<FamilyResponse>
        >
    with $FutureModifier<FamilyResponse>, $FutureProvider<FamilyResponse> {
  MyFamilyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myFamilyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myFamilyHash();

  @$internal
  @override
  $FutureProviderElement<FamilyResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FamilyResponse> create(Ref ref) {
    return myFamily(ref);
  }
}

String _$myFamilyHash() => r'e4597ac9980a8228bb4b30a4009e8cf8a11a037d';
