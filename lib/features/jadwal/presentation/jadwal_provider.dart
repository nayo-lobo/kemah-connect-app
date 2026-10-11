import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/jadwal/data/jadwal_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/jadwal/data/jadwal_repository.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/jadwal/domain/jadwal_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/utils/riverpod_cache.dart';

part 'jadwal_provider.g.dart';

@riverpod
JadwalDatasource jadwalDatasource(Ref ref) =>
    JadwalDatasource(ref.read(dioProvider));

@riverpod
JadwalRepository jadwalRepository(Ref ref) =>
    JadwalRepository(ref.read(jadwalDatasourceProvider));

@riverpod
Future<List<WeeklySchedule>> weeklySchedules(Ref ref) async {
  ref.cacheFor(const Duration(minutes: 10));
  return ref.read(jadwalRepositoryProvider).getWeekly();
}

@riverpod
Future<List<UpcomingSchedule>> upcomingSchedules(Ref ref) async {
  ref.cacheFor(const Duration(minutes: 5));
  return ref.read(jadwalRepositoryProvider).getUpcoming();
}
