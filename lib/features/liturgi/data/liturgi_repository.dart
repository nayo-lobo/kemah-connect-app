import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/data/liturgi_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/domain/liturgi_model.dart';

class LiturgiRepository {
  final LiturgiDatasource _datasource;

  LiturgiRepository(this._datasource);

  Future<List<Liturgi>> getLiturgis() => _datasource.getLiturgis();
}
