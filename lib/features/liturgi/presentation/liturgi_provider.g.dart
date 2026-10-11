// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liturgi_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(liturgiDatasource)
final liturgiDatasourceProvider = LiturgiDatasourceProvider._();

final class LiturgiDatasourceProvider
    extends
        $FunctionalProvider<
          LiturgiDatasource,
          LiturgiDatasource,
          LiturgiDatasource
        >
    with $Provider<LiturgiDatasource> {
  LiturgiDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liturgiDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liturgiDatasourceHash();

  @$internal
  @override
  $ProviderElement<LiturgiDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LiturgiDatasource create(Ref ref) {
    return liturgiDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LiturgiDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LiturgiDatasource>(value),
    );
  }
}

String _$liturgiDatasourceHash() => r'598b2b5ebd5cd13d10caaf4bc21a7613e508b16f';

@ProviderFor(liturgiRepository)
final liturgiRepositoryProvider = LiturgiRepositoryProvider._();

final class LiturgiRepositoryProvider
    extends
        $FunctionalProvider<
          LiturgiRepository,
          LiturgiRepository,
          LiturgiRepository
        >
    with $Provider<LiturgiRepository> {
  LiturgiRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liturgiRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liturgiRepositoryHash();

  @$internal
  @override
  $ProviderElement<LiturgiRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LiturgiRepository create(Ref ref) {
    return liturgiRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LiturgiRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LiturgiRepository>(value),
    );
  }
}

String _$liturgiRepositoryHash() => r'af92478bc82200317cedfb8a0e81f0b89ac6b68e';

@ProviderFor(liturgiList)
final liturgiListProvider = LiturgiListProvider._();

final class LiturgiListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Liturgi>>,
          List<Liturgi>,
          FutureOr<List<Liturgi>>
        >
    with $FutureModifier<List<Liturgi>>, $FutureProvider<List<Liturgi>> {
  LiturgiListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liturgiListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liturgiListHash();

  @$internal
  @override
  $FutureProviderElement<List<Liturgi>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Liturgi>> create(Ref ref) {
    return liturgiList(ref);
  }
}

String _$liturgiListHash() => r'c1f0b0fa441bde8486dd830eb514cef3d29cf0c6';
