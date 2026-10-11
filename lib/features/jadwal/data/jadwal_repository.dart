import 'package:gmit_jemaat_kemah_airnona_app/features/jadwal/data/jadwal_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/jadwal/domain/jadwal_model.dart';

class JadwalRepository {
  final JadwalDatasource _datasource;

  JadwalRepository(this._datasource);

  Future<List<WeeklySchedule>> getWeekly() => _datasource.getWeekly();

  Future<List<UpcomingSchedule>> getUpcoming({int limit = 10}) =>
      _datasource.getUpcoming(limit: limit);
}
