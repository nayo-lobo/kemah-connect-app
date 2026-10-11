import 'package:dio/dio.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/errors/app_exception.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/jadwal/domain/jadwal_model.dart';

class JadwalDatasource {
  final Dio _dio;

  JadwalDatasource(this._dio);

  Future<List<WeeklySchedule>> getWeekly() async {
    try {
      final response = await _dio.get('/api/mobile/jadwal/weekly');
      final data = (response.data['data'] as List)
          .map((e) => WeeklySchedule.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } on DioException catch (e) {
      final raw = e.response?.data;
      final message = raw is Map
          ? raw['message'] as String? ?? 'Gagal mengambil jadwal mingguan'
          : 'Gagal mengambil jadwal mingguan';
      throw ServerException(message, statusCode: e.response?.statusCode);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }

  Future<List<UpcomingSchedule>> getUpcoming({int limit = 10}) async {
    try {
      final response = await _dio.get(
        '/api/mobile/jadwal/upcoming',
        queryParameters: {'limit': limit},
      );
      final data = (response.data['data'] as List)
          .map((e) => UpcomingSchedule.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } on DioException catch (e) {
      final raw = e.response?.data;
      final message = raw is Map
          ? raw['message'] as String? ?? 'Gagal mengambil jadwal mendatang'
          : 'Gagal mengambil jadwal mendatang';
      throw ServerException(message, statusCode: e.response?.statusCode);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }
}
