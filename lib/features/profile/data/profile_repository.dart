import 'package:gmit_jemaat_kemah_airnona_app/features/profile/data/profile_datasource.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/profile/domain/profile_model.dart';

class ProfileRepository {
  final ProfileDatasource _datasource;

  ProfileRepository(this._datasource);

  Future<ProfileResponse> getProfile() => _datasource.getProfile();
}
