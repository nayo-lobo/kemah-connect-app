import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/domain/user_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';

part 'dashboard_provider.g.dart';

@riverpod
User? currentUser(Ref ref) {
  return ref.watch(authProvider).asData?.value;
}
