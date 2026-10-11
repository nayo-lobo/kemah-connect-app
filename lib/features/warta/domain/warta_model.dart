import 'package:freezed_annotation/freezed_annotation.dart';

part 'warta_model.freezed.dart';
part 'warta_model.g.dart';


@freezed
abstract class Warta with _$Warta{
  const factory Warta({
    required String id,
    required String fileUrl,
    required String fileName,
    required int fileSizeBytes,

    String? weekDate,
    String? publishedAt,

})= _Warta;
  factory Warta.fromJson(Map<String, dynamic> json) => _$WartaFromJson(json);

}