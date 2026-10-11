import 'package:dio/dio.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/errors/app_exception.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/domain/user_model.dart';

class AuthDatasource {
  final Dio _dio;

  AuthDatasource(this._dio);

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await _dio.post(
        '/api/mobile/auth/login',
        data: {'email': email, 'password': password},
      );
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      final raw = e.response?.data;
      final message = raw is Map
          ? raw['message'] as String? ?? 'Login gagal'
          : 'Login gagal';
      throw ServerException(message, statusCode: e.response?.statusCode);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }

  Future<void> forgotPassword(String email) async {
    try {
      await _dio.post('/api/auth/forgot-password', data: {'email': email});
    } on DioException catch (e) {
      final raw = e.response?.data;
      final message = raw is Map
          ? raw['message'] as String? ?? 'Gagal mengirim permintaan reset'
          : 'Gagal mengirim permintaan reset';
      throw ServerException(message, statusCode: e.response?.statusCode);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }

  Future<User> getMe() async {
    try {
      final response = await _dio.get('/api/mobile/auth/me');
      return User.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) throw const UnauthorizedException();
      final raw = e.response?.data;
      final message = raw is Map
          ? raw['message'] as String? ?? 'Gagal mengambil data user'
          : 'Gagal mengambil data user';
      throw ServerException(message, statusCode: e.response?.statusCode);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }
}
