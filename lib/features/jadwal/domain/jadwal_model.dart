import 'package:freezed_annotation/freezed_annotation.dart';

part 'jadwal_model.freezed.dart';
part 'jadwal_model.g.dart';

@freezed
abstract class WeeklySchedule with _$WeeklySchedule {
  const factory WeeklySchedule({
    required String id,
    required String title,
    required int dayOfWeek,
    String? startTime,
    String? endTime,
    String? location,
    String? worshipTypeName,
  }) = _WeeklySchedule;

  factory WeeklySchedule.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleFromJson(json);
}

@freezed
abstract class UpcomingSchedule with _$UpcomingSchedule {
  const factory UpcomingSchedule({
    required String id,
    required String title,
    required String date,
    String? startTime,
    String? endTime,
    String? location,
    String? address,
    double? latitude,
    double? longitude,
    String? googleMapsLink,
    @Default([]) List<String> pastors,
    String? sermon,
    String? theme,
    String? scriptureReading,
    String? worshipTypeName,
    String? sectorName,
    String? liturgiFileUrl,
    String? liturgiFileName,
  }) = _UpcomingSchedule;

  factory UpcomingSchedule.fromJson(Map<String, dynamic> json) =>
      _$UpcomingScheduleFromJson(json);
}
