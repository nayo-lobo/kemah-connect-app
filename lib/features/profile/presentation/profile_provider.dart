import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/profile/data/profile_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/profile/data/profile_repository.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/profile/domain/profile_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/utils/riverpod_cache.dart';

part 'profile_provider.g.dart';

@riverpod
ProfileDatasource profileDatasource(Ref ref) =>
    ProfileDatasource(ref.read(dioProvider));

@riverpod
ProfileRepository profileRepository(Ref ref) =>
    ProfileRepository(ref.read(profileDatasourceProvider));

@riverpod
Future<ProfileResponse> myProfile(Ref ref) async {
  ref.cacheFor(const Duration(minutes: 5));
  return ref.read(profileRepositoryProvider).getProfile();
}
