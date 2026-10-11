import 'package:gmit_jemaat_kemah_airnona_app/core/storage/secure_storage.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/data/auth_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/domain/user_model.dart';

class AuthRepository {
  final AuthDatasource _datasource;
  final SecureStorage _storage;

  AuthRepository(this._datasource, this._storage);

  Future<User> login(String email, String password) async {
    final data = await _datasource.login(email, password);
    final token = data['token'] as String;
    final user = User.fromJson(data['user'] as Map<String, dynamic>);
    await _storage.saveToken(token);
    await _storage.saveUser(user.toJson());
    return user;
  }

  Future<void> logout() => _storage.clearAll();

  Future<void> forgotPassword(String email) => _datasource.forgotPassword(email);

  Future<bool> isLoggedIn() async {
    final token = await _storage.getToken();
    return token != null;
  }

  Future<User?> getCachedUser() async {
    final data = await _storage.getUser();
    if (data == null) return null;
    return User.fromJson(data);
  }
}
