import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/api/api_client.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/storage/secure_storage.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/data/auth_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/data/auth_repository.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/domain/user_model.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
SecureStorage secureStorage(Ref ref) => SecureStorage();

@Riverpod(keepAlive: true)
Dio dio(Ref ref) => createDio(ref.read(secureStorageProvider));

@Riverpod(keepAlive: true)
AuthDatasource authDatasource(Ref ref) =>
    AuthDatasource(ref.read(dioProvider));

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) => AuthRepository(
  ref.read(authDatasourceProvider),
  ref.read(secureStorageProvider),
);

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  Future<User?> build() async {
    return ref.read(authRepositoryProvider).getCachedUser();
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(authRepositoryProvider).login(email, password),
    );
  }

  Future<void> logout() async {
    await ref.read(authRepositoryProvider).logout();
    state = const AsyncData(null);
  }
}
