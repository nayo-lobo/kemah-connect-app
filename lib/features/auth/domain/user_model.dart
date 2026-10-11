import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    required String role,
    // Human-readable label from the backend (e.g. "Jemaat" for role
    // MEMBER) — kept in sync with the web app's role mapping so both
    // surfaces always show the same text instead of the raw enum value.
    String? roleLabel,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
