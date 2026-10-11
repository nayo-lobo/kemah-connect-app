import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/data/liturgi_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/data/liturgi_repository.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/domain/liturgi_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/utils/riverpod_cache.dart';

part 'liturgi_provider.g.dart';

@riverpod
LiturgiDatasource liturgiDatasource(Ref ref) =>
    LiturgiDatasource(ref.read(dioProvider));

@riverpod
LiturgiRepository liturgiRepository(Ref ref) =>
    LiturgiRepository(ref.read(liturgiDatasourceProvider));

@riverpod
Future<List<Liturgi>> liturgiList(Ref ref) async {
  ref.cacheFor(const Duration(minutes: 5));
  return ref.read(liturgiRepositoryProvider).getLiturgis();
}