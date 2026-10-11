import 'package:freezed_annotation/freezed_annotation.dart';

part 'liturgi_model.freezed.dart';
part 'liturgi_model.g.dart';

@freezed
abstract class Liturgi with _$Liturgi {
  const factory Liturgi({
    required String id,
    required String fileUrl,
    required String fileName,
    required int fileSizeBytes,
    String? liturgiDate,
    String? scheduleId,
    String? scheduleTitle,
    String? scheduleDate,
    String? worshipTypeName,
    String? startTime,
  }) = _Liturgi;

  factory Liturgi.fromJson(Map<String, dynamic> json) => _$LiturgiFromJson(json);
}
