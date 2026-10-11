// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jadwal_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(jadwalDatasource)
final jadwalDatasourceProvider = JadwalDatasourceProvider._();

final class JadwalDatasourceProvider
    extends
        $FunctionalProvider<
          JadwalDatasource,
          JadwalDatasource,
          JadwalDatasource
        >
    with $Provider<JadwalDatasource> {
  JadwalDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'jadwalDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$jadwalDatasourceHash();

  @$internal
  @override
  $ProviderElement<JadwalDatasource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  JadwalDatasource create(Ref ref) {
    return jadwalDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JadwalDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JadwalDatasource>(value),
    );
  }
}

String _$jadwalDatasourceHash() => r'a13443db6fe970922ec443d71afa28bc6c7147f6';

@ProviderFor(jadwalRepository)
final jadwalRepositoryProvider = JadwalRepositoryProvider._();

final class JadwalRepositoryProvider
    extends
        $FunctionalProvider<
          JadwalRepository,
          JadwalRepository,
          JadwalRepository
        >
    with $Provider<JadwalRepository> {
  JadwalRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'jadwalRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$jadwalRepositoryHash();

  @$internal
  @override
  $ProviderElement<JadwalRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  JadwalRepository create(Ref ref) {
    return jadwalRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JadwalRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JadwalRepository>(value),
    );
  }
}

String _$jadwalRepositoryHash() => r'809d1625373f28ec5c1e33a4e9cddd030e347d4f';

@ProviderFor(weeklySchedules)
final weeklySchedulesProvider = WeeklySchedulesProvider._();

final class WeeklySchedulesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<WeeklySchedule>>,
          List<WeeklySchedule>,
          FutureOr<List<WeeklySchedule>>
        >
    with
        $FutureModifier<List<WeeklySchedule>>,
        $FutureProvider<List<WeeklySchedule>> {
  WeeklySchedulesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weeklySchedulesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weeklySchedulesHash();

  @$internal
  @override
  $FutureProviderElement<List<WeeklySchedule>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<WeeklySchedule>> create(Ref ref) {
    return weeklySchedules(ref);
  }
}

String _$weeklySchedulesHash() => r'be31a5afe3aa82f7d9c36b9ea11ddc5d4cbce783';

@ProviderFor(upcomingSchedules)
final upcomingSchedulesProvider = UpcomingSchedulesProvider._();

final class UpcomingSchedulesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<UpcomingSchedule>>,
          List<UpcomingSchedule>,
          FutureOr<List<UpcomingSchedule>>
        >
    with
        $FutureModifier<List<UpcomingSchedule>>,
        $FutureProvider<List<UpcomingSchedule>> {
  UpcomingSchedulesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'upcomingSchedulesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$upcomingSchedulesHash();

  @$internal
  @override
  $FutureProviderElement<List<UpcomingSchedule>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<UpcomingSchedule>> create(Ref ref) {
    return upcomingSchedules(ref);
  }
}

String _$upcomingSchedulesHash() => r'743c3310db9a4c75e35ea74d9624862eed5595cc';
