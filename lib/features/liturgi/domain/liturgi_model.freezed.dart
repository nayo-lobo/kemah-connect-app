// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liturgi_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Liturgi {

 String get id; String get fileUrl; String get fileName; int get fileSizeBytes; String? get liturgiDate; String? get scheduleId; String? get scheduleTitle; String? get scheduleDate; String? get worshipTypeName; String? get startTime;
/// Create a copy of Liturgi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiturgiCopyWith<Liturgi> get copyWith => _$LiturgiCopyWithImpl<Liturgi>(this as Liturgi, _$identity);

  /// Serializes this Liturgi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Liturgi&&(identical(other.id, id) || other.id == id)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.liturgiDate, liturgiDate) || other.liturgiDate == liturgiDate)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.scheduleTitle, scheduleTitle) || other.scheduleTitle == scheduleTitle)&&(identical(other.scheduleDate, scheduleDate) || other.scheduleDate == scheduleDate)&&(identical(other.worshipTypeName, worshipTypeName) || other.worshipTypeName == worshipTypeName)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileUrl,fileName,fileSizeBytes,liturgiDate,scheduleId,scheduleTitle,scheduleDate,worshipTypeName,startTime);

@override
String toString() {
  return 'Liturgi(id: $id, fileUrl: $fileUrl, fileName: $fileName, fileSizeBytes: $fileSizeBytes, liturgiDate: $liturgiDate, scheduleId: $scheduleId, scheduleTitle: $scheduleTitle, scheduleDate: $scheduleDate, worshipTypeName: $worshipTypeName, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class $LiturgiCopyWith<$Res>  {
  factory $LiturgiCopyWith(Liturgi value, $Res Function(Liturgi) _then) = _$LiturgiCopyWithImpl;
@useResult
$Res call({
 String id, String fileUrl, String fileName, int fileSizeBytes, String? liturgiDate, String? scheduleId, String? scheduleTitle, String? scheduleDate, String? worshipTypeName, String? startTime
});




}
/// @nodoc
class _$LiturgiCopyWithImpl<$Res>
    implements $LiturgiCopyWith<$Res> {
  _$LiturgiCopyWithImpl(this._self, this._then);

  final Liturgi _self;
  final $Res Function(Liturgi) _then;

/// Create a copy of Liturgi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fileUrl = null,Object? fileName = null,Object? fileSizeBytes = null,Object? liturgiDate = freezed,Object? scheduleId = freezed,Object? scheduleTitle = freezed,Object? scheduleDate = freezed,Object? worshipTypeName = freezed,Object? startTime = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,fileSizeBytes: null == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int,liturgiDate: freezed == liturgiDate ? _self.liturgiDate : liturgiDate // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,scheduleTitle: freezed == scheduleTitle ? _self.scheduleTitle : scheduleTitle // ignore: cast_nullable_to_non_nullable
as String?,scheduleDate: freezed == scheduleDate ? _self.scheduleDate : scheduleDate // ignore: cast_nullable_to_non_nullable
as String?,worshipTypeName: freezed == worshipTypeName ? _self.worshipTypeName : worshipTypeName // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Liturgi].
extension LiturgiPatterns on Liturgi {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Liturgi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Liturgi() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Liturgi value)  $default,){
final _that = this;
switch (_that) {
case _Liturgi():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Liturgi value)?  $default,){
final _that = this;
switch (_that) {
case _Liturgi() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fileUrl,  String fileName,  int fileSizeBytes,  String? liturgiDate,  String? scheduleId,  String? scheduleTitle,  String? scheduleDate,  String? worshipTypeName,  String? startTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Liturgi() when $default != null:
return $default(_that.id,_that.fileUrl,_that.fileName,_that.fileSizeBytes,_that.liturgiDate,_that.scheduleId,_that.scheduleTitle,_that.scheduleDate,_that.worshipTypeName,_that.startTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fileUrl,  String fileName,  int fileSizeBytes,  String? liturgiDate,  String? scheduleId,  String? scheduleTitle,  String? scheduleDate,  String? worshipTypeName,  String? startTime)  $default,) {final _that = this;
switch (_that) {
case _Liturgi():
return $default(_that.id,_that.fileUrl,_that.fileName,_that.fileSizeBytes,_that.liturgiDate,_that.scheduleId,_that.scheduleTitle,_that.scheduleDate,_that.worshipTypeName,_that.startTime);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fileUrl,  String fileName,  int fileSizeBytes,  String? liturgiDate,  String? scheduleId,  String? scheduleTitle,  String? scheduleDate,  String? worshipTypeName,  String? startTime)?  $default,) {final _that = this;
switch (_that) {
case _Liturgi() when $default != null:
return $default(_that.id,_that.fileUrl,_that.fileName,_that.fileSizeBytes,_that.liturgiDate,_that.scheduleId,_that.scheduleTitle,_that.scheduleDate,_that.worshipTypeName,_that.startTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Liturgi implements Liturgi {
  const _Liturgi({required this.id, required this.fileUrl, required this.fileName, required this.fileSizeBytes, this.liturgiDate, this.scheduleId, this.scheduleTitle, this.scheduleDate, this.worshipTypeName, this.startTime});
  factory _Liturgi.fromJson(Map<String, dynamic> json) => _$LiturgiFromJson(json);

@override final  String id;
@override final  String fileUrl;
@override final  String fileName;
@override final  int fileSizeBytes;
@override final  String? liturgiDate;
@override final  String? scheduleId;
@override final  String? scheduleTitle;
@override final  String? scheduleDate;
@override final  String? worshipTypeName;
@override final  String? startTime;

/// Create a copy of Liturgi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiturgiCopyWith<_Liturgi> get copyWith => __$LiturgiCopyWithImpl<_Liturgi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiturgiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Liturgi&&(identical(other.id, id) || other.id == id)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.liturgiDate, liturgiDate) || other.liturgiDate == liturgiDate)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.scheduleTitle, scheduleTitle) || other.scheduleTitle == scheduleTitle)&&(identical(other.scheduleDate, scheduleDate) || other.scheduleDate == scheduleDate)&&(identical(other.worshipTypeName, worshipTypeName) || other.worshipTypeName == worshipTypeName)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileUrl,fileName,fileSizeBytes,liturgiDate,scheduleId,scheduleTitle,scheduleDate,worshipTypeName,startTime);

@override
String toString() {
  return 'Liturgi(id: $id, fileUrl: $fileUrl, fileName: $fileName, fileSizeBytes: $fileSizeBytes, liturgiDate: $liturgiDate, scheduleId: $scheduleId, scheduleTitle: $scheduleTitle, scheduleDate: $scheduleDate, worshipTypeName: $worshipTypeName, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class _$LiturgiCopyWith<$Res> implements $LiturgiCopyWith<$Res> {
  factory _$LiturgiCopyWith(_Liturgi value, $Res Function(_Liturgi) _then) = __$LiturgiCopyWithImpl;
@override @useResult
$Res call({
 String id, String fileUrl, String fileName, int fileSizeBytes, String? liturgiDate, String? scheduleId, String? scheduleTitle, String? scheduleDate, String? worshipTypeName, String? startTime
});




}
/// @nodoc
class __$LiturgiCopyWithImpl<$Res>
    implements _$LiturgiCopyWith<$Res> {
  __$LiturgiCopyWithImpl(this._self, this._then);

  final _Liturgi _self;
  final $Res Function(_Liturgi) _then;

/// Create a copy of Liturgi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fileUrl = null,Object? fileName = null,Object? fileSizeBytes = null,Object? liturgiDate = freezed,Object? scheduleId = freezed,Object? scheduleTitle = freezed,Object? scheduleDate = freezed,Object? worshipTypeName = freezed,Object? startTime = freezed,}) {
  return _then(_Liturgi(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,fileSizeBytes: null == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int,liturgiDate: freezed == liturgiDate ? _self.liturgiDate : liturgiDate // ignore: cast_nullable_to_non_nullable
as String?,scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,scheduleTitle: freezed == scheduleTitle ? _self.scheduleTitle : scheduleTitle // ignore: cast_nullable_to_non_nullable
as String?,scheduleDate: freezed == scheduleDate ? _self.scheduleDate : scheduleDate // ignore: cast_nullable_to_non_nullable
as String?,worshipTypeName: freezed == worshipTypeName ? _self.worshipTypeName : worshipTypeName // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
