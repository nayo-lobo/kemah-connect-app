import 'package:dio/dio.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/errors/app_exception.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/profile/domain/profile_model.dart';

class ProfileDatasource {
  final Dio _dio;

  ProfileDatasource(this._dio);

  Future<ProfileResponse> getProfile() async {
    try {
      final response = await _dio.get('/api/mobile/profile');
      return ProfileResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) throw const UnauthorizedException();
      final raw = e.response?.data;
      final message = raw is Map
          ? raw['message'] as String? ?? 'Gagal mengambil data profil'
          : 'Gagal mengambil data profil';
      throw ServerException(message, statusCode: e.response?.statusCode);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }
}
