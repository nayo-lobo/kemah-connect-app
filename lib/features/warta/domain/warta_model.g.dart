// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Warta _$WartaFromJson(Map<String, dynamic> json) => _Warta(
  id: json['id'] as String,
  fileUrl: json['fileUrl'] as String,
  fileName: json['fileName'] as String,
  fileSizeBytes: (json['fileSizeBytes'] as num).toInt(),
  weekDate: json['weekDate'] as String?,
  publishedAt: json['publishedAt'] as String?,
);

Map<String, dynamic> _$WartaToJson(_Warta instance) => <String, dynamic>{
  'id': instance.id,
  'fileUrl': instance.fileUrl,
  'fileName': instance.fileName,
  'fileSizeBytes': instance.fileSizeBytes,
  'weekDate': instance.weekDate,
  'publishedAt': instance.publishedAt,
};
