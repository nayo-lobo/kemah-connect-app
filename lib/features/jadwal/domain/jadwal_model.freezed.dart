// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jadwal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeeklySchedule {

 String get id; String get title; int get dayOfWeek; String? get startTime; String? get endTime; String? get location; String? get worshipTypeName;
/// Create a copy of WeeklySchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyScheduleCopyWith<WeeklySchedule> get copyWith => _$WeeklyScheduleCopyWithImpl<WeeklySchedule>(this as WeeklySchedule, _$identity);

  /// Serializes this WeeklySchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklySchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.worshipTypeName, worshipTypeName) || other.worshipTypeName == worshipTypeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,dayOfWeek,startTime,endTime,location,worshipTypeName);

@override
String toString() {
  return 'WeeklySchedule(id: $id, title: $title, dayOfWeek: $dayOfWeek, startTime: $startTime, endTime: $endTime, location: $location, worshipTypeName: $worshipTypeName)';
}


}

/// @nodoc
abstract mixin class $WeeklyScheduleCopyWith<$Res>  {
  factory $WeeklyScheduleCopyWith(WeeklySchedule value, $Res Function(WeeklySchedule) _then) = _$WeeklyScheduleCopyWithImpl;
@useResult
$Res call({
 String id, String title, int dayOfWeek, String? startTime, String? endTime, String? location, String? worshipTypeName
});




}
/// @nodoc
class _$WeeklyScheduleCopyWithImpl<$Res>
    implements $WeeklyScheduleCopyWith<$Res> {
  _$WeeklyScheduleCopyWithImpl(this._self, this._then);

  final WeeklySchedule _self;
  final $Res Function(WeeklySchedule) _then;

/// Create a copy of WeeklySchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? dayOfWeek = null,Object? startTime = freezed,Object? endTime = freezed,Object? location = freezed,Object? worshipTypeName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,worshipTypeName: freezed == worshipTypeName ? _self.worshipTypeName : worshipTypeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklySchedule].
extension WeeklySchedulePatterns on WeeklySchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklySchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklySchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklySchedule value)  $default,){
final _that = this;
switch (_that) {
case _WeeklySchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklySchedule value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklySchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int dayOfWeek,  String? startTime,  String? endTime,  String? location,  String? worshipTypeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklySchedule() when $default != null:
return $default(_that.id,_that.title,_that.dayOfWeek,_that.startTime,_that.endTime,_that.location,_that.worshipTypeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int dayOfWeek,  String? startTime,  String? endTime,  String? location,  String? worshipTypeName)  $default,) {final _that = this;
switch (_that) {
case _WeeklySchedule():
return $default(_that.id,_that.title,_that.dayOfWeek,_that.startTime,_that.endTime,_that.location,_that.worshipTypeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int dayOfWeek,  String? startTime,  String? endTime,  String? location,  String? worshipTypeName)?  $default,) {final _that = this;
switch (_that) {
case _WeeklySchedule() when $default != null:
return $default(_that.id,_that.title,_that.dayOfWeek,_that.startTime,_that.endTime,_that.location,_that.worshipTypeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklySchedule implements WeeklySchedule {
  const _WeeklySchedule({required this.id, required this.title, required this.dayOfWeek, this.startTime, this.endTime, this.location, this.worshipTypeName});
  factory _WeeklySchedule.fromJson(Map<String, dynamic> json) => _$WeeklyScheduleFromJson(json);

@override final  String id;
@override final  String title;
@override final  int dayOfWeek;
@override final  String? startTime;
@override final  String? endTime;
@override final  String? location;
@override final  String? worshipTypeName;

/// Create a copy of WeeklySchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyScheduleCopyWith<_WeeklySchedule> get copyWith => __$WeeklyScheduleCopyWithImpl<_WeeklySchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklySchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.worshipTypeName, worshipTypeName) || other.worshipTypeName == worshipTypeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,dayOfWeek,startTime,endTime,location,worshipTypeName);

@override
String toString() {
  return 'WeeklySchedule(id: $id, title: $title, dayOfWeek: $dayOfWeek, startTime: $startTime, endTime: $endTime, location: $location, worshipTypeName: $worshipTypeName)';
}


}

/// @nodoc
abstract mixin class _$WeeklyScheduleCopyWith<$Res> implements $WeeklyScheduleCopyWith<$Res> {
  factory _$WeeklyScheduleCopyWith(_WeeklySchedule value, $Res Function(_WeeklySchedule) _then) = __$WeeklyScheduleCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int dayOfWeek, String? startTime, String? endTime, String? location, String? worshipTypeName
});




}
/// @nodoc
class __$WeeklyScheduleCopyWithImpl<$Res>
    implements _$WeeklyScheduleCopyWith<$Res> {
  __$WeeklyScheduleCopyWithImpl(this._self, this._then);

  final _WeeklySchedule _self;
  final $Res Function(_WeeklySchedule) _then;

/// Create a copy of WeeklySchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? dayOfWeek = null,Object? startTime = freezed,Object? endTime = freezed,Object? location = freezed,Object? worshipTypeName = freezed,}) {
  return _then(_WeeklySchedule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,worshipTypeName: freezed == worshipTypeName ? _self.worshipTypeName : worshipTypeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UpcomingSchedule {

 String get id; String get title; String get date; String? get startTime; String? get endTime; String? get location; String? get address; double? get latitude; double? get longitude; String? get googleMapsLink; List<String> get pastors; String? get sermon; String? get theme; String? get scriptureReading; String? get worshipTypeName; String? get sectorName; String? get liturgiFileUrl; String? get liturgiFileName;
/// Create a copy of UpcomingSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpcomingScheduleCopyWith<UpcomingSchedule> get copyWith => _$UpcomingScheduleCopyWithImpl<UpcomingSchedule>(this as UpcomingSchedule, _$identity);

  /// Serializes this UpcomingSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpcomingSchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.googleMapsLink, googleMapsLink) || other.googleMapsLink == googleMapsLink)&&const DeepCollectionEquality().equals(other.pastors, pastors)&&(identical(other.sermon, sermon) || other.sermon == sermon)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.scriptureReading, scriptureReading) || other.scriptureReading == scriptureReading)&&(identical(other.worshipTypeName, worshipTypeName) || other.worshipTypeName == worshipTypeName)&&(identical(other.sectorName, sectorName) || other.sectorName == sectorName)&&(identical(other.liturgiFileUrl, liturgiFileUrl) || other.liturgiFileUrl == liturgiFileUrl)&&(identical(other.liturgiFileName, liturgiFileName) || other.liturgiFileName == liturgiFileName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,date,startTime,endTime,location,address,latitude,longitude,googleMapsLink,const DeepCollectionEquality().hash(pastors),sermon,theme,scriptureReading,worshipTypeName,sectorName,liturgiFileUrl,liturgiFileName);

@override
String toString() {
  return 'UpcomingSchedule(id: $id, title: $title, date: $date, startTime: $startTime, endTime: $endTime, location: $location, address: $address, latitude: $latitude, longitude: $longitude, googleMapsLink: $googleMapsLink, pastors: $pastors, sermon: $sermon, theme: $theme, scriptureReading: $scriptureReading, worshipTypeName: $worshipTypeName, sectorName: $sectorName, liturgiFileUrl: $liturgiFileUrl, liturgiFileName: $liturgiFileName)';
}


}

/// @nodoc
abstract mixin class $UpcomingScheduleCopyWith<$Res>  {
  factory $UpcomingScheduleCopyWith(UpcomingSchedule value, $Res Function(UpcomingSchedule) _then) = _$UpcomingScheduleCopyWithImpl;
@useResult
$Res call({
 String id, String title, String date, String? startTime, String? endTime, String? location, String? address, double? latitude, double? longitude, String? googleMapsLink, List<String> pastors, String? sermon, String? theme, String? scriptureReading, String? worshipTypeName, String? sectorName, String? liturgiFileUrl, String? liturgiFileName
});




}
/// @nodoc
class _$UpcomingScheduleCopyWithImpl<$Res>
    implements $UpcomingScheduleCopyWith<$Res> {
  _$UpcomingScheduleCopyWithImpl(this._self, this._then);

  final UpcomingSchedule _self;
  final $Res Function(UpcomingSchedule) _then;

/// Create a copy of UpcomingSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? date = null,Object? startTime = freezed,Object? endTime = freezed,Object? location = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? googleMapsLink = freezed,Object? pastors = null,Object? sermon = freezed,Object? theme = freezed,Object? scriptureReading = freezed,Object? worshipTypeName = freezed,Object? sectorName = freezed,Object? liturgiFileUrl = freezed,Object? liturgiFileName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,googleMapsLink: freezed == googleMapsLink ? _self.googleMapsLink : googleMapsLink // ignore: cast_nullable_to_non_nullable
as String?,pastors: null == pastors ? _self.pastors : pastors // ignore: cast_nullable_to_non_nullable
as List<String>,sermon: freezed == sermon ? _self.sermon : sermon // ignore: cast_nullable_to_non_nullable
as String?,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String?,scriptureReading: freezed == scriptureReading ? _self.scriptureReading : scriptureReading // ignore: cast_nullable_to_non_nullable
as String?,worshipTypeName: freezed == worshipTypeName ? _self.worshipTypeName : worshipTypeName // ignore: cast_nullable_to_non_nullable
as String?,sectorName: freezed == sectorName ? _self.sectorName : sectorName // ignore: cast_nullable_to_non_nullable
as String?,liturgiFileUrl: freezed == liturgiFileUrl ? _self.liturgiFileUrl : liturgiFileUrl // ignore: cast_nullable_to_non_nullable
as String?,liturgiFileName: freezed == liturgiFileName ? _self.liturgiFileName : liturgiFileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpcomingSchedule].
extension UpcomingSchedulePatterns on UpcomingSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpcomingSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpcomingSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpcomingSchedule value)  $default,){
final _that = this;
switch (_that) {
case _UpcomingSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpcomingSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _UpcomingSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String date,  String? startTime,  String? endTime,  String? location,  String? address,  double? latitude,  double? longitude,  String? googleMapsLink,  List<String> pastors,  String? sermon,  String? theme,  String? scriptureReading,  String? worshipTypeName,  String? sectorName,  String? liturgiFileUrl,  String? liturgiFileName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpcomingSchedule() when $default != null:
return $default(_that.id,_that.title,_that.date,_that.startTime,_that.endTime,_that.location,_that.address,_that.latitude,_that.longitude,_that.googleMapsLink,_that.pastors,_that.sermon,_that.theme,_that.scriptureReading,_that.worshipTypeName,_that.sectorName,_that.liturgiFileUrl,_that.liturgiFileName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String date,  String? startTime,  String? endTime,  String? location,  String? address,  double? latitude,  double? longitude,  String? googleMapsLink,  List<String> pastors,  String? sermon,  String? theme,  String? scriptureReading,  String? worshipTypeName,  String? sectorName,  String? liturgiFileUrl,  String? liturgiFileName)  $default,) {final _that = this;
switch (_that) {
case _UpcomingSchedule():
return $default(_that.id,_that.title,_that.date,_that.startTime,_that.endTime,_that.location,_that.address,_that.latitude,_that.longitude,_that.googleMapsLink,_that.pastors,_that.sermon,_that.theme,_that.scriptureReading,_that.worshipTypeName,_that.sectorName,_that.liturgiFileUrl,_that.liturgiFileName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String date,  String? startTime,  String? endTime,  String? location,  String? address,  double? latitude,  double? longitude,  String? googleMapsLink,  List<String> pastors,  String? sermon,  String? theme,  String? scriptureReading,  String? worshipTypeName,  String? sectorName,  String? liturgiFileUrl,  String? liturgiFileName)?  $default,) {final _that = this;
switch (_that) {
case _UpcomingSchedule() when $default != null:
return $default(_that.id,_that.title,_that.date,_that.startTime,_that.endTime,_that.location,_that.address,_that.latitude,_that.longitude,_that.googleMapsLink,_that.pastors,_that.sermon,_that.theme,_that.scriptureReading,_that.worshipTypeName,_that.sectorName,_that.liturgiFileUrl,_that.liturgiFileName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpcomingSchedule implements UpcomingSchedule {
  const _UpcomingSchedule({required this.id, required this.title, required this.date, this.startTime, this.endTime, this.location, this.address, this.latitude, this.longitude, this.googleMapsLink, final  List<String> pastors = const [], this.sermon, this.theme, this.scriptureReading, this.worshipTypeName, this.sectorName, this.liturgiFileUrl, this.liturgiFileName}): _pastors = pastors;
  factory _UpcomingSchedule.fromJson(Map<String, dynamic> json) => _$UpcomingScheduleFromJson(json);

@override final  String id;
@override final  String title;
@override final  String date;
@override final  String? startTime;
@override final  String? endTime;
@override final  String? location;
@override final  String? address;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? googleMapsLink;
 final  List<String> _pastors;
@override@JsonKey() List<String> get pastors {
  if (_pastors is EqualUnmodifiableListView) return _pastors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pastors);
}

@override final  String? sermon;
@override final  String? theme;
@override final  String? scriptureReading;
@override final  String? worshipTypeName;
@override final  String? sectorName;
@override final  String? liturgiFileUrl;
@override final  String? liturgiFileName;

/// Create a copy of UpcomingSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpcomingScheduleCopyWith<_UpcomingSchedule> get copyWith => __$UpcomingScheduleCopyWithImpl<_UpcomingSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpcomingScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpcomingSchedule&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.googleMapsLink, googleMapsLink) || other.googleMapsLink == googleMapsLink)&&const DeepCollectionEquality().equals(other._pastors, _pastors)&&(identical(other.sermon, sermon) || other.sermon == sermon)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.scriptureReading, scriptureReading) || other.scriptureReading == scriptureReading)&&(identical(other.worshipTypeName, worshipTypeName) || other.worshipTypeName == worshipTypeName)&&(identical(other.sectorName, sectorName) || other.sectorName == sectorName)&&(identical(other.liturgiFileUrl, liturgiFileUrl) || other.liturgiFileUrl == liturgiFileUrl)&&(identical(other.liturgiFileName, liturgiFileName) || other.liturgiFileName == liturgiFileName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,date,startTime,endTime,location,address,latitude,longitude,googleMapsLink,const DeepCollectionEquality().hash(_pastors),sermon,theme,scriptureReading,worshipTypeName,sectorName,liturgiFileUrl,liturgiFileName);

@override
String toString() {
  return 'UpcomingSchedule(id: $id, title: $title, date: $date, startTime: $startTime, endTime: $endTime, location: $location, address: $address, latitude: $latitude, longitude: $longitude, googleMapsLink: $googleMapsLink, pastors: $pastors, sermon: $sermon, theme: $theme, scriptureReading: $scriptureReading, worshipTypeName: $worshipTypeName, sectorName: $sectorName, liturgiFileUrl: $liturgiFileUrl, liturgiFileName: $liturgiFileName)';
}


}

/// @nodoc
abstract mixin class _$UpcomingScheduleCopyWith<$Res> implements $UpcomingScheduleCopyWith<$Res> {
  factory _$UpcomingScheduleCopyWith(_UpcomingSchedule value, $Res Function(_UpcomingSchedule) _then) = __$UpcomingScheduleCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String date, String? startTime, String? endTime, String? location, String? address, double? latitude, double? longitude, String? googleMapsLink, List<String> pastors, String? sermon, String? theme, String? scriptureReading, String? worshipTypeName, String? sectorName, String? liturgiFileUrl, String? liturgiFileName
});




}
/// @nodoc
class __$UpcomingScheduleCopyWithImpl<$Res>
    implements _$UpcomingScheduleCopyWith<$Res> {
  __$UpcomingScheduleCopyWithImpl(this._self, this._then);

  final _UpcomingSchedule _self;
  final $Res Function(_UpcomingSchedule) _then;

/// Create a copy of UpcomingSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? date = null,Object? startTime = freezed,Object? endTime = freezed,Object? location = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? googleMapsLink = freezed,Object? pastors = null,Object? sermon = freezed,Object? theme = freezed,Object? scriptureReading = freezed,Object? worshipTypeName = freezed,Object? sectorName = freezed,Object? liturgiFileUrl = freezed,Object? liturgiFileName = freezed,}) {
  return _then(_UpcomingSchedule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,googleMapsLink: freezed == googleMapsLink ? _self.googleMapsLink : googleMapsLink // ignore: cast_nullable_to_non_nullable
as String?,pastors: null == pastors ? _self._pastors : pastors // ignore: cast_nullable_to_non_nullable
as List<String>,sermon: freezed == sermon ? _self.sermon : sermon // ignore: cast_nullable_to_non_nullable
as String?,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String?,scriptureReading: freezed == scriptureReading ? _self.scriptureReading : scriptureReading // ignore: cast_nullable_to_non_nullable
as String?,worshipTypeName: freezed == worshipTypeName ? _self.worshipTypeName : worshipTypeName // ignore: cast_nullable_to_non_nullable
as String?,sectorName: freezed == sectorName ? _self.sectorName : sectorName // ignore: cast_nullable_to_non_nullable
as String?,liturgiFileUrl: freezed == liturgiFileUrl ? _self.liturgiFileUrl : liturgiFileUrl // ignore: cast_nullable_to_non_nullable
as String?,liturgiFileName: freezed == liturgiFileName ? _self.liturgiFileName : liturgiFileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
