// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    _ProfileResponse(
      account: ProfileAccount.fromJson(json['account'] as Map<String, dynamic>),
      member: json['member'] == null
          ? null
          : ProfileMember.fromJson(json['member'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseToJson(_ProfileResponse instance) =>
    <String, dynamic>{'account': instance.account, 'member': instance.member};

_ProfileAccount _$ProfileAccountFromJson(Map<String, dynamic> json) =>
    _ProfileAccount(
      id: json['id'] as String,
      username: json['username'] as String?,
      email: json['email'] as String,
      whatsappNumber: json['whatsappNumber'] as String?,
      role: json['role'] as String,
      roleLabel: json['roleLabel'] as String?,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$ProfileAccountToJson(_ProfileAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'whatsappNumber': instance.whatsappNumber,
      'role': instance.role,
      'roleLabel': instance.roleLabel,
      'isActive': instance.isActive,
    };

_ProfileMember _$ProfileMemberFromJson(Map<String, dynamic> json) =>
    _ProfileMember(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String?,
      birthPlace: json['birthPlace'] as String?,
      birthDate: json['birthDate'] as String,
      education: json['education'] as String?,
      currentAddress: json['currentAddress'] as String?,
      status: json['status'] as String,
      occupationName: json['occupationName'] as String?,
    );

Map<String, dynamic> _$ProfileMemberToJson(_ProfileMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'birthPlace': instance.birthPlace,
      'birthDate': instance.birthDate,
      'education': instance.education,
      'currentAddress': instance.currentAddress,
      'status': instance.status,
      'occupationName': instance.occupationName,
    };
