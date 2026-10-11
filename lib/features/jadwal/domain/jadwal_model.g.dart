// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jadwal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeeklySchedule _$WeeklyScheduleFromJson(Map<String, dynamic> json) =>
    _WeeklySchedule(
      id: json['id'] as String,
      title: json['title'] as String,
      dayOfWeek: (json['dayOfWeek'] as num).toInt(),
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      location: json['location'] as String?,
      worshipTypeName: json['worshipTypeName'] as String?,
    );

Map<String, dynamic> _$WeeklyScheduleToJson(_WeeklySchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'dayOfWeek': instance.dayOfWeek,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'location': instance.location,
      'worshipTypeName': instance.worshipTypeName,
    };

_UpcomingSchedule _$UpcomingScheduleFromJson(Map<String, dynamic> json) =>
    _UpcomingSchedule(
      id: json['id'] as String,
      title: json['title'] as String,
      date: json['date'] as String,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      googleMapsLink: json['googleMapsLink'] as String?,
      pastors:
          (json['pastors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sermon: json['sermon'] as String?,
      theme: json['theme'] as String?,
      scriptureReading: json['scriptureReading'] as String?,
      worshipTypeName: json['worshipTypeName'] as String?,
      sectorName: json['sectorName'] as String?,
      liturgiFileUrl: json['liturgiFileUrl'] as String?,
      liturgiFileName: json['liturgiFileName'] as String?,
    );

Map<String, dynamic> _$UpcomingScheduleToJson(_UpcomingSchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'location': instance.location,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'googleMapsLink': instance.googleMapsLink,
      'pastors': instance.pastors,
      'sermon': instance.sermon,
      'theme': instance.theme,
      'scriptureReading': instance.scriptureReading,
      'worshipTypeName': instance.worshipTypeName,
      'sectorName': instance.sectorName,
      'liturgiFileUrl': instance.liturgiFileUrl,
      'liturgiFileName': instance.liturgiFileName,
    };
