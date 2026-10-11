import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/constants/app_constants.dart';

class SecureStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> saveToken(String token) =>
      _storage.write(key: AppConstants.tokenKey, value: token);

  Future<String?> getToken() => _storage.read(key: AppConstants.tokenKey);

  Future<void> deleteToken() => _storage.delete(key: AppConstants.tokenKey);

  Future<void> saveUser(Map<String, dynamic> user) =>
      _storage.write(key: AppConstants.userKey, value: jsonEncode(user));

  Future<Map<String, dynamic>?> getUser() async {
    final data = await _storage.read(key: AppConstants.userKey);
    if (data == null) return null;
    return jsonDecode(data) as Map<String, dynamic>;
  }

  Future<void> deleteUser() => _storage.delete(key: AppConstants.userKey);

  Future<void> clearAll() => _storage.deleteAll();
}
