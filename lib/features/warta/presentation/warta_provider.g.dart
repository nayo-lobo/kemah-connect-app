// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warta_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(wartaDatasource)
final wartaDatasourceProvider = WartaDatasourceProvider._();

final class WartaDatasourceProvider
    extends
        $FunctionalProvider<WartaDatasource, WartaDatasource, WartaDatasource>
    with $Provider<WartaDatasource> {
  WartaDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wartaDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wartaDatasourceHash();

  @$internal
  @override
  $ProviderElement<WartaDatasource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WartaDatasource create(Ref ref) {
    return wartaDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WartaDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WartaDatasource>(value),
    );
  }
}

String _$wartaDatasourceHash() => r'0616298db49e555c5e73c4ff723f7a09bc4ef135';

@ProviderFor(wartaRepository)
final wartaRepositoryProvider = WartaRepositoryProvider._();

final class WartaRepositoryProvider
    extends
        $FunctionalProvider<WartaRepository, WartaRepository, WartaRepository>
    with $Provider<WartaRepository> {
  WartaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wartaRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wartaRepositoryHash();

  @$internal
  @override
  $ProviderElement<WartaRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WartaRepository create(Ref ref) {
    return wartaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WartaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WartaRepository>(value),
    );
  }
}

String _$wartaRepositoryHash() => r'9b538b28d80531dfccd931a9a55892985370167b';

@ProviderFor(wartaList)
final wartaListProvider = WartaListProvider._();

final class WartaListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Warta>>,
          List<Warta>,
          FutureOr<List<Warta>>
        >
    with $FutureModifier<List<Warta>>, $FutureProvider<List<Warta>> {
  WartaListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wartaListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wartaListHash();

  @$internal
  @override
  $FutureProviderElement<List<Warta>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Warta>> create(Ref ref) {
    return wartaList(ref);
  }
}

String _$wartaListHash() => r'd4b43e35cd372ecf1a71ed52008ca84afc3f5996';
