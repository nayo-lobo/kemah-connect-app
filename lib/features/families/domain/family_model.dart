import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_model.freezed.dart';
part 'family_model.g.dart';

@freezed
abstract class FamilyResponse with _$FamilyResponse {
  const factory FamilyResponse({
    Family? family,
    required List<FamilyMember> members,
  }) = _FamilyResponse;

  factory FamilyResponse.fromJson(Map<String, dynamic> json) =>
      _$FamilyResponseFromJson(json);
}

@freezed
abstract class Family with _$Family {
  const factory Family({
    required String id,
    required String subDistrict,
    required int neighborhoodWard,
    required int hamletWard,
    required String street,
    String? familyStatus,
    String? houseOwnershipStatus,
    String? houseCondition,
    required int buildingNumber,
    String? familyCardNumber,
    required String sectorId,
  }) = _Family;

  factory Family.fromJson(Map<String, dynamic> json) =>
      _$FamilyFromJson(json);
}

@freezed
abstract class FamilyMember with _$FamilyMember {
  const factory FamilyMember({
    required String id,
    required String name,
    String? gender,
    required String birthDate,
    required String familyStatus,
    required String status,
    String? currentAddress,
    required bool isCurrentUser,
  }) = _FamilyMember;

  factory FamilyMember.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberFromJson(json);
}