import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/warta/data/warta_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/warta/data/warta_repository.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/warta/domain/warta_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/utils/riverpod_cache.dart';

part 'warta_provider.g.dart';

@riverpod
WartaDatasource wartaDatasource(Ref ref) => WartaDatasource(ref.read(dioProvider));

@riverpod
WartaRepository wartaRepository(Ref ref) =>
    WartaRepository(ref.read(wartaDatasourceProvider));

@riverpod
Future<List<Warta>> wartaList(Ref ref) async {
  ref.cacheFor(const Duration(minutes: 5));
  return ref.read(wartaRepositoryProvider).getWartas();
}
