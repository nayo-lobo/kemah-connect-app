import 'package:dio/dio.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/errors/app_exception.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/families/domain/family_model.dart';

class FamilyDatasource {
  final Dio _dio;

  FamilyDatasource(this._dio);

  Future<FamilyResponse> getMyFamily() async {
    try {
      final response = await _dio.get('/api/mobile/families');
      return FamilyResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      final raw = e.response?.data;
      final message = raw is Map
          ? raw['message'] as String? ?? 'Gagal mengambil data keluarga'
          : 'Gagal mengambil data keluarga';
      throw ServerException(message, statusCode: e.response?.statusCode);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }
}
