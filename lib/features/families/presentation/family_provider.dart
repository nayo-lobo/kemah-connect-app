import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/families/data/family_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/families/data/family_repository.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/families/domain/family_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/utils/riverpod_cache.dart';

part 'family_provider.g.dart';

@riverpod
FamilyDatasource familyDatasource(Ref ref) =>
    FamilyDatasource(ref.read(dioProvider));

@riverpod
FamilyRepository familyRepository(Ref ref) =>
    FamilyRepository(ref.read(familyDatasourceProvider));

@riverpod
Future<FamilyResponse> myFamily(Ref ref) async {
  ref.cacheFor(const Duration(minutes: 5));
  return ref.read(familyRepositoryProvider).getMyFamily();
}
