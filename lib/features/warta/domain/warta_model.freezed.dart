// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Warta {

 String get id; String get fileUrl; String get fileName; int get fileSizeBytes; String? get weekDate; String? get publishedAt;
/// Create a copy of Warta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WartaCopyWith<Warta> get copyWith => _$WartaCopyWithImpl<Warta>(this as Warta, _$identity);

  /// Serializes this Warta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Warta&&(identical(other.id, id) || other.id == id)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.weekDate, weekDate) || other.weekDate == weekDate)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileUrl,fileName,fileSizeBytes,weekDate,publishedAt);

@override
String toString() {
  return 'Warta(id: $id, fileUrl: $fileUrl, fileName: $fileName, fileSizeBytes: $fileSizeBytes, weekDate: $weekDate, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class $WartaCopyWith<$Res>  {
  factory $WartaCopyWith(Warta value, $Res Function(Warta) _then) = _$WartaCopyWithImpl;
@useResult
$Res call({
 String id, String fileUrl, String fileName, int fileSizeBytes, String? weekDate, String? publishedAt
});




}
/// @nodoc
class _$WartaCopyWithImpl<$Res>
    implements $WartaCopyWith<$Res> {
  _$WartaCopyWithImpl(this._self, this._then);

  final Warta _self;
  final $Res Function(Warta) _then;

/// Create a copy of Warta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fileUrl = null,Object? fileName = null,Object? fileSizeBytes = null,Object? weekDate = freezed,Object? publishedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,fileSizeBytes: null == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int,weekDate: freezed == weekDate ? _self.weekDate : weekDate // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Warta].
extension WartaPatterns on Warta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Warta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Warta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Warta value)  $default,){
final _that = this;
switch (_that) {
case _Warta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Warta value)?  $default,){
final _that = this;
switch (_that) {
case _Warta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fileUrl,  String fileName,  int fileSizeBytes,  String? weekDate,  String? publishedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Warta() when $default != null:
return $default(_that.id,_that.fileUrl,_that.fileName,_that.fileSizeBytes,_that.weekDate,_that.publishedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fileUrl,  String fileName,  int fileSizeBytes,  String? weekDate,  String? publishedAt)  $default,) {final _that = this;
switch (_that) {
case _Warta():
return $default(_that.id,_that.fileUrl,_that.fileName,_that.fileSizeBytes,_that.weekDate,_that.publishedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fileUrl,  String fileName,  int fileSizeBytes,  String? weekDate,  String? publishedAt)?  $default,) {final _that = this;
switch (_that) {
case _Warta() when $default != null:
return $default(_that.id,_that.fileUrl,_that.fileName,_that.fileSizeBytes,_that.weekDate,_that.publishedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Warta implements Warta {
  const _Warta({required this.id, required this.fileUrl, required this.fileName, required this.fileSizeBytes, this.weekDate, this.publishedAt});
  factory _Warta.fromJson(Map<String, dynamic> json) => _$WartaFromJson(json);

@override final  String id;
@override final  String fileUrl;
@override final  String fileName;
@override final  int fileSizeBytes;
@override final  String? weekDate;
@override final  String? publishedAt;

/// Create a copy of Warta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WartaCopyWith<_Warta> get copyWith => __$WartaCopyWithImpl<_Warta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WartaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Warta&&(identical(other.id, id) || other.id == id)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.weekDate, weekDate) || other.weekDate == weekDate)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileUrl,fileName,fileSizeBytes,weekDate,publishedAt);

@override
String toString() {
  return 'Warta(id: $id, fileUrl: $fileUrl, fileName: $fileName, fileSizeBytes: $fileSizeBytes, weekDate: $weekDate, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class _$WartaCopyWith<$Res> implements $WartaCopyWith<$Res> {
  factory _$WartaCopyWith(_Warta value, $Res Function(_Warta) _then) = __$WartaCopyWithImpl;
@override @useResult
$Res call({
 String id, String fileUrl, String fileName, int fileSizeBytes, String? weekDate, String? publishedAt
});




}
/// @nodoc
class __$WartaCopyWithImpl<$Res>
    implements _$WartaCopyWith<$Res> {
  __$WartaCopyWithImpl(this._self, this._then);

  final _Warta _self;
  final $Res Function(_Warta) _then;

/// Create a copy of Warta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fileUrl = null,Object? fileName = null,Object? fileSizeBytes = null,Object? weekDate = freezed,Object? publishedAt = freezed,}) {
  return _then(_Warta(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,fileSizeBytes: null == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int,weekDate: freezed == weekDate ? _self.weekDate : weekDate // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
