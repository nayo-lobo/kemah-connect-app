import 'package:dio/dio.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/errors/app_exception.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/warta/domain/warta_model.dart';


class WartaDatasource {
  final Dio  _dio;

  WartaDatasource(this._dio);

  Future<List<Warta>> getWartas() async{
    try {
      final response = await _dio.get('/api/mobile/warta');
      final data = (response.data['data'] as List)
          .map((e) => Warta.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } on DioException catch (e) {
      final raw = e.response?.data;
      final message = raw is Map
          ? raw['message'] as String? ?? 'Gagal mengambil data warta'
          : 'Gagal mengambil data warta';
      throw ServerException(message, statusCode: e.response?.statusCode);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }
  }
