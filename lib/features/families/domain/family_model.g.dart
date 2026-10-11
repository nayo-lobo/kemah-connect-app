// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FamilyResponse _$FamilyResponseFromJson(Map<String, dynamic> json) =>
    _FamilyResponse(
      family: json['family'] == null
          ? null
          : Family.fromJson(json['family'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>)
          .map((e) => FamilyMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FamilyResponseToJson(_FamilyResponse instance) =>
    <String, dynamic>{'family': instance.family, 'members': instance.members};

_Family _$FamilyFromJson(Map<String, dynamic> json) => _Family(
  id: json['id'] as String,
  subDistrict: json['subDistrict'] as String,
  neighborhoodWard: (json['neighborhoodWard'] as num).toInt(),
  hamletWard: (json['hamletWard'] as num).toInt(),
  street: json['street'] as String,
  familyStatus: json['familyStatus'] as String?,
  houseOwnershipStatus: json['houseOwnershipStatus'] as String?,
  houseCondition: json['houseCondition'] as String?,
  buildingNumber: (json['buildingNumber'] as num).toInt(),
  familyCardNumber: json['familyCardNumber'] as String?,
  sectorId: json['sectorId'] as String,
);

Map<String, dynamic> _$FamilyToJson(_Family instance) => <String, dynamic>{
  'id': instance.id,
  'subDistrict': instance.subDistrict,
  'neighborhoodWard': instance.neighborhoodWard,
  'hamletWard': instance.hamletWard,
  'street': instance.street,
  'familyStatus': instance.familyStatus,
  'houseOwnershipStatus': instance.houseOwnershipStatus,
  'houseCondition': instance.houseCondition,
  'buildingNumber': instance.buildingNumber,
  'familyCardNumber': instance.familyCardNumber,
  'sectorId': instance.sectorId,
};

_FamilyMember _$FamilyMemberFromJson(Map<String, dynamic> json) =>
    _FamilyMember(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String?,
      birthDate: json['birthDate'] as String,
      familyStatus: json['familyStatus'] as String,
      status: json['status'] as String,
      currentAddress: json['currentAddress'] as String?,
      isCurrentUser: json['isCurrentUser'] as bool,
    );

Map<String, dynamic> _$FamilyMemberToJson(_FamilyMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'familyStatus': instance.familyStatus,
      'status': instance.status,
      'currentAddress': instance.currentAddress,
      'isCurrentUser': instance.isCurrentUser,
    };
