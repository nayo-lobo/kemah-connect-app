import 'package:dio/dio.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/errors/app_exception.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/domain/liturgi_model.dart';

class LiturgiDatasource {
  final Dio _dio;

  LiturgiDatasource(this._dio);

  Future<List<Liturgi>> getLiturgis() async {
    try {
      final response = await _dio.get('/api/mobile/liturgi');
      final data = (response.data['data'] as List)
          .map((e) => Liturgi.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } on DioException catch (e) {
      final raw = e.response?.data;
      final message = raw is Map
          ? raw['message'] as String? ?? 'Gagal mengambil data liturgi'
          : 'Gagal mengambil data liturgi';
      throw ServerException(message, statusCode: e.response?.statusCode);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }
}
