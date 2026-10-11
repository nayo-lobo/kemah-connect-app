import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/constants/app_constants.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/api/auth_interceptor.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/storage/secure_storage.dart';

Dio createDio(SecureStorage storage) {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.baseUrl,
      connectTimeout: const Duration(milliseconds: AppConstants.connectTimeoutMs),
      receiveTimeout: const Duration(milliseconds: AppConstants.receiveTimeoutMs),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  dio.interceptors.addAll([
    AuthInterceptor(storage),
    LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (o) => debugPrint(o.toString()),
    ),
  ]);

  return dio;
}
