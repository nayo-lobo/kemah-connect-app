import 'package:gmit_jemaat_kemah_airnona_app/features/families/data/family_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/families/domain/family_model.dart';

class FamilyRepository {
  final FamilyDatasource _datasource;

  FamilyRepository(this._datasource);

  Future<FamilyResponse> getMyFamily() => _datasource.getMyFamily();
}
