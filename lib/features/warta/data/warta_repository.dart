import 'package:gmit_jemaat_kemah_airnona_app/features/warta/data/warta_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/warta/domain/warta_model.dart';



class WartaRepository {
  final WartaDatasource _datasource;

  WartaRepository(this._datasource);

  Future<List<Warta>> getWartas() => _datasource.getWartas();

}