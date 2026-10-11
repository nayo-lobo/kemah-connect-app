import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    required ProfileAccount account,
    ProfileMember? member,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
abstract class ProfileAccount with _$ProfileAccount {
  const factory ProfileAccount({
    required String id,
    String? username,
    required String email,
    String? whatsappNumber,
    required String role,
    String? roleLabel,
    required bool isActive,
  }) = _ProfileAccount;

  factory ProfileAccount.fromJson(Map<String, dynamic> json) =>
      _$ProfileAccountFromJson(json);
}

@freezed
abstract class ProfileMember with _$ProfileMember {
  const factory ProfileMember({
    required String id,
    required String name,
    String? gender,
    String? birthPlace,
    required String birthDate,
    String? education,
    String? currentAddress,
    required String status,
    String? occupationName,
  }) = _ProfileMember;

  factory ProfileMember.fromJson(Map<String, dynamic> json) =>
      _$ProfileMemberFromJson(json);
}
