// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liturgi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Liturgi _$LiturgiFromJson(Map<String, dynamic> json) => _Liturgi(
  id: json['id'] as String,
  fileUrl: json['fileUrl'] as String,
  fileName: json['fileName'] as String,
  fileSizeBytes: (json['fileSizeBytes'] as num).toInt(),
  liturgiDate: json['liturgiDate'] as String?,
  scheduleId: json['scheduleId'] as String?,
  scheduleTitle: json['scheduleTitle'] as String?,
  scheduleDate: json['scheduleDate'] as String?,
  worshipTypeName: json['worshipTypeName'] as String?,
  startTime: json['startTime'] as String?,
);

Map<String, dynamic> _$LiturgiToJson(_Liturgi instance) => <String, dynamic>{
  'id': instance.id,
  'fileUrl': instance.fileUrl,
  'fileName': instance.fileName,
  'fileSizeBytes': instance.fileSizeBytes,
  'liturgiDate': instance.liturgiDate,
  'scheduleId': instance.scheduleId,
  'scheduleTitle': instance.scheduleTitle,
  'scheduleDate': instance.scheduleDate,
  'worshipTypeName': instance.worshipTypeName,
  'startTime': instance.startTime,
};
