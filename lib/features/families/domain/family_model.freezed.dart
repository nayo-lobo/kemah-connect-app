// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FamilyResponse {

 Family? get family; List<FamilyMember> get members;
/// Create a copy of FamilyResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyResponseCopyWith<FamilyResponse> get copyWith => _$FamilyResponseCopyWithImpl<FamilyResponse>(this as FamilyResponse, _$identity);

  /// Serializes this FamilyResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyResponse&&(identical(other.family, family) || other.family == family)&&const DeepCollectionEquality().equals(other.members, members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,family,const DeepCollectionEquality().hash(members));

@override
String toString() {
  return 'FamilyResponse(family: $family, members: $members)';
}


}

/// @nodoc
abstract mixin class $FamilyResponseCopyWith<$Res>  {
  factory $FamilyResponseCopyWith(FamilyResponse value, $Res Function(FamilyResponse) _then) = _$FamilyResponseCopyWithImpl;
@useResult
$Res call({
 Family? family, List<FamilyMember> members
});


$FamilyCopyWith<$Res>? get family;

}
/// @nodoc
class _$FamilyResponseCopyWithImpl<$Res>
    implements $FamilyResponseCopyWith<$Res> {
  _$FamilyResponseCopyWithImpl(this._self, this._then);

  final FamilyResponse _self;
  final $Res Function(FamilyResponse) _then;

/// Create a copy of FamilyResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? family = freezed,Object? members = null,}) {
  return _then(_self.copyWith(
family: freezed == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as Family?,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<FamilyMember>,
  ));
}
/// Create a copy of FamilyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyCopyWith<$Res>? get family {
    if (_self.family == null) {
    return null;
  }

  return $FamilyCopyWith<$Res>(_self.family!, (value) {
    return _then(_self.copyWith(family: value));
  });
}
}


/// Adds pattern-matching-related methods to [FamilyResponse].
extension FamilyResponsePatterns on FamilyResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FamilyResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FamilyResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FamilyResponse value)  $default,){
final _that = this;
switch (_that) {
case _FamilyResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FamilyResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FamilyResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Family? family,  List<FamilyMember> members)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FamilyResponse() when $default != null:
return $default(_that.family,_that.members);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Family? family,  List<FamilyMember> members)  $default,) {final _that = this;
switch (_that) {
case _FamilyResponse():
return $default(_that.family,_that.members);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Family? family,  List<FamilyMember> members)?  $default,) {final _that = this;
switch (_that) {
case _FamilyResponse() when $default != null:
return $default(_that.family,_that.members);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FamilyResponse implements FamilyResponse {
  const _FamilyResponse({this.family, required final  List<FamilyMember> members}): _members = members;
  factory _FamilyResponse.fromJson(Map<String, dynamic> json) => _$FamilyResponseFromJson(json);

@override final  Family? family;
 final  List<FamilyMember> _members;
@override List<FamilyMember> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}


/// Create a copy of FamilyResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyResponseCopyWith<_FamilyResponse> get copyWith => __$FamilyResponseCopyWithImpl<_FamilyResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyResponse&&(identical(other.family, family) || other.family == family)&&const DeepCollectionEquality().equals(other._members, _members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,family,const DeepCollectionEquality().hash(_members));

@override
String toString() {
  return 'FamilyResponse(family: $family, members: $members)';
}


}

/// @nodoc
abstract mixin class _$FamilyResponseCopyWith<$Res> implements $FamilyResponseCopyWith<$Res> {
  factory _$FamilyResponseCopyWith(_FamilyResponse value, $Res Function(_FamilyResponse) _then) = __$FamilyResponseCopyWithImpl;
@override @useResult
$Res call({
 Family? family, List<FamilyMember> members
});


@override $FamilyCopyWith<$Res>? get family;

}
/// @nodoc
class __$FamilyResponseCopyWithImpl<$Res>
    implements _$FamilyResponseCopyWith<$Res> {
  __$FamilyResponseCopyWithImpl(this._self, this._then);

  final _FamilyResponse _self;
  final $Res Function(_FamilyResponse) _then;

/// Create a copy of FamilyResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? family = freezed,Object? members = null,}) {
  return _then(_FamilyResponse(
family: freezed == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as Family?,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<FamilyMember>,
  ));
}

/// Create a copy of FamilyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyCopyWith<$Res>? get family {
    if (_self.family == null) {
    return null;
  }

  return $FamilyCopyWith<$Res>(_self.family!, (value) {
    return _then(_self.copyWith(family: value));
  });
}
}


/// @nodoc
mixin _$Family {

 String get id; String get subDistrict; int get neighborhoodWard; int get hamletWard; String get street; String? get familyStatus; String? get houseOwnershipStatus; String? get houseCondition; int get buildingNumber; String? get familyCardNumber; String get sectorId;
/// Create a copy of Family
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyCopyWith<Family> get copyWith => _$FamilyCopyWithImpl<Family>(this as Family, _$identity);

  /// Serializes this Family to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Family&&(identical(other.id, id) || other.id == id)&&(identical(other.subDistrict, subDistrict) || other.subDistrict == subDistrict)&&(identical(other.neighborhoodWard, neighborhoodWard) || other.neighborhoodWard == neighborhoodWard)&&(identical(other.hamletWard, hamletWard) || other.hamletWard == hamletWard)&&(identical(other.street, street) || other.street == street)&&(identical(other.familyStatus, familyStatus) || other.familyStatus == familyStatus)&&(identical(other.houseOwnershipStatus, houseOwnershipStatus) || other.houseOwnershipStatus == houseOwnershipStatus)&&(identical(other.houseCondition, houseCondition) || other.houseCondition == houseCondition)&&(identical(other.buildingNumber, buildingNumber) || other.buildingNumber == buildingNumber)&&(identical(other.familyCardNumber, familyCardNumber) || other.familyCardNumber == familyCardNumber)&&(identical(other.sectorId, sectorId) || other.sectorId == sectorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,subDistrict,neighborhoodWard,hamletWard,street,familyStatus,houseOwnershipStatus,houseCondition,buildingNumber,familyCardNumber,sectorId);

@override
String toString() {
  return 'Family(id: $id, subDistrict: $subDistrict, neighborhoodWard: $neighborhoodWard, hamletWard: $hamletWard, street: $street, familyStatus: $familyStatus, houseOwnershipStatus: $houseOwnershipStatus, houseCondition: $houseCondition, buildingNumber: $buildingNumber, familyCardNumber: $familyCardNumber, sectorId: $sectorId)';
}


}

/// @nodoc
abstract mixin class $FamilyCopyWith<$Res>  {
  factory $FamilyCopyWith(Family value, $Res Function(Family) _then) = _$FamilyCopyWithImpl;
@useResult
$Res call({
 String id, String subDistrict, int neighborhoodWard, int hamletWard, String street, String? familyStatus, String? houseOwnershipStatus, String? houseCondition, int buildingNumber, String? familyCardNumber, String sectorId
});




}
/// @nodoc
class _$FamilyCopyWithImpl<$Res>
    implements $FamilyCopyWith<$Res> {
  _$FamilyCopyWithImpl(this._self, this._then);

  final Family _self;
  final $Res Function(Family) _then;

/// Create a copy of Family
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? subDistrict = null,Object? neighborhoodWard = null,Object? hamletWard = null,Object? street = null,Object? familyStatus = freezed,Object? houseOwnershipStatus = freezed,Object? houseCondition = freezed,Object? buildingNumber = null,Object? familyCardNumber = freezed,Object? sectorId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subDistrict: null == subDistrict ? _self.subDistrict : subDistrict // ignore: cast_nullable_to_non_nullable
as String,neighborhoodWard: null == neighborhoodWard ? _self.neighborhoodWard : neighborhoodWard // ignore: cast_nullable_to_non_nullable
as int,hamletWard: null == hamletWard ? _self.hamletWard : hamletWard // ignore: cast_nullable_to_non_nullable
as int,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,familyStatus: freezed == familyStatus ? _self.familyStatus : familyStatus // ignore: cast_nullable_to_non_nullable
as String?,houseOwnershipStatus: freezed == houseOwnershipStatus ? _self.houseOwnershipStatus : houseOwnershipStatus // ignore: cast_nullable_to_non_nullable
as String?,houseCondition: freezed == houseCondition ? _self.houseCondition : houseCondition // ignore: cast_nullable_to_non_nullable
as String?,buildingNumber: null == buildingNumber ? _self.buildingNumber : buildingNumber // ignore: cast_nullable_to_non_nullable
as int,familyCardNumber: freezed == familyCardNumber ? _self.familyCardNumber : familyCardNumber // ignore: cast_nullable_to_non_nullable
as String?,sectorId: null == sectorId ? _self.sectorId : sectorId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Family].
extension FamilyPatterns on Family {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Family value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Family() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Family value)  $default,){
final _that = this;
switch (_that) {
case _Family():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Family value)?  $default,){
final _that = this;
switch (_that) {
case _Family() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String subDistrict,  int neighborhoodWard,  int hamletWard,  String street,  String? familyStatus,  String? houseOwnershipStatus,  String? houseCondition,  int buildingNumber,  String? familyCardNumber,  String sectorId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Family() when $default != null:
return $default(_that.id,_that.subDistrict,_that.neighborhoodWard,_that.hamletWard,_that.street,_that.familyStatus,_that.houseOwnershipStatus,_that.houseCondition,_that.buildingNumber,_that.familyCardNumber,_that.sectorId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String subDistrict,  int neighborhoodWard,  int hamletWard,  String street,  String? familyStatus,  String? houseOwnershipStatus,  String? houseCondition,  int buildingNumber,  String? familyCardNumber,  String sectorId)  $default,) {final _that = this;
switch (_that) {
case _Family():
return $default(_that.id,_that.subDistrict,_that.neighborhoodWard,_that.hamletWard,_that.street,_that.familyStatus,_that.houseOwnershipStatus,_that.houseCondition,_that.buildingNumber,_that.familyCardNumber,_that.sectorId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String subDistrict,  int neighborhoodWard,  int hamletWard,  String street,  String? familyStatus,  String? houseOwnershipStatus,  String? houseCondition,  int buildingNumber,  String? familyCardNumber,  String sectorId)?  $default,) {final _that = this;
switch (_that) {
case _Family() when $default != null:
return $default(_that.id,_that.subDistrict,_that.neighborhoodWard,_that.hamletWard,_that.street,_that.familyStatus,_that.houseOwnershipStatus,_that.houseCondition,_that.buildingNumber,_that.familyCardNumber,_that.sectorId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Family implements Family {
  const _Family({required this.id, required this.subDistrict, required this.neighborhoodWard, required this.hamletWard, required this.street, this.familyStatus, this.houseOwnershipStatus, this.houseCondition, required this.buildingNumber, this.familyCardNumber, required this.sectorId});
  factory _Family.fromJson(Map<String, dynamic> json) => _$FamilyFromJson(json);

@override final  String id;
@override final  String subDistrict;
@override final  int neighborhoodWard;
@override final  int hamletWard;
@override final  String street;
@override final  String? familyStatus;
@override final  String? houseOwnershipStatus;
@override final  String? houseCondition;
@override final  int buildingNumber;
@override final  String? familyCardNumber;
@override final  String sectorId;

/// Create a copy of Family
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyCopyWith<_Family> get copyWith => __$FamilyCopyWithImpl<_Family>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Family&&(identical(other.id, id) || other.id == id)&&(identical(other.subDistrict, subDistrict) || other.subDistrict == subDistrict)&&(identical(other.neighborhoodWard, neighborhoodWard) || other.neighborhoodWard == neighborhoodWard)&&(identical(other.hamletWard, hamletWard) || other.hamletWard == hamletWard)&&(identical(other.street, street) || other.street == street)&&(identical(other.familyStatus, familyStatus) || other.familyStatus == familyStatus)&&(identical(other.houseOwnershipStatus, houseOwnershipStatus) || other.houseOwnershipStatus == houseOwnershipStatus)&&(identical(other.houseCondition, houseCondition) || other.houseCondition == houseCondition)&&(identical(other.buildingNumber, buildingNumber) || other.buildingNumber == buildingNumber)&&(identical(other.familyCardNumber, familyCardNumber) || other.familyCardNumber == familyCardNumber)&&(identical(other.sectorId, sectorId) || other.sectorId == sectorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,subDistrict,neighborhoodWard,hamletWard,street,familyStatus,houseOwnershipStatus,houseCondition,buildingNumber,familyCardNumber,sectorId);

@override
String toString() {
  return 'Family(id: $id, subDistrict: $subDistrict, neighborhoodWard: $neighborhoodWard, hamletWard: $hamletWard, street: $street, familyStatus: $familyStatus, houseOwnershipStatus: $houseOwnershipStatus, houseCondition: $houseCondition, buildingNumber: $buildingNumber, familyCardNumber: $familyCardNumber, sectorId: $sectorId)';
}


}

/// @nodoc
abstract mixin class _$FamilyCopyWith<$Res> implements $FamilyCopyWith<$Res> {
  factory _$FamilyCopyWith(_Family value, $Res Function(_Family) _then) = __$FamilyCopyWithImpl;
@override @useResult
$Res call({
 String id, String subDistrict, int neighborhoodWard, int hamletWard, String street, String? familyStatus, String? houseOwnershipStatus, String? houseCondition, int buildingNumber, String? familyCardNumber, String sectorId
});




}
/// @nodoc
class __$FamilyCopyWithImpl<$Res>
    implements _$FamilyCopyWith<$Res> {
  __$FamilyCopyWithImpl(this._self, this._then);

  final _Family _self;
  final $Res Function(_Family) _then;

/// Create a copy of Family
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? subDistrict = null,Object? neighborhoodWard = null,Object? hamletWard = null,Object? street = null,Object? familyStatus = freezed,Object? houseOwnershipStatus = freezed,Object? houseCondition = freezed,Object? buildingNumber = null,Object? familyCardNumber = freezed,Object? sectorId = null,}) {
  return _then(_Family(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subDistrict: null == subDistrict ? _self.subDistrict : subDistrict // ignore: cast_nullable_to_non_nullable
as String,neighborhoodWard: null == neighborhoodWard ? _self.neighborhoodWard : neighborhoodWard // ignore: cast_nullable_to_non_nullable
as int,hamletWard: null == hamletWard ? _self.hamletWard : hamletWard // ignore: cast_nullable_to_non_nullable
as int,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,familyStatus: freezed == familyStatus ? _self.familyStatus : familyStatus // ignore: cast_nullable_to_non_nullable
as String?,houseOwnershipStatus: freezed == houseOwnershipStatus ? _self.houseOwnershipStatus : houseOwnershipStatus // ignore: cast_nullable_to_non_nullable
as String?,houseCondition: freezed == houseCondition ? _self.houseCondition : houseCondition // ignore: cast_nullable_to_non_nullable
as String?,buildingNumber: null == buildingNumber ? _self.buildingNumber : buildingNumber // ignore: cast_nullable_to_non_nullable
as int,familyCardNumber: freezed == familyCardNumber ? _self.familyCardNumber : familyCardNumber // ignore: cast_nullable_to_non_nullable
as String?,sectorId: null == sectorId ? _self.sectorId : sectorId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FamilyMember {

 String get id; String get name; String? get gender; String get birthDate; String get familyStatus; String get status; String? get currentAddress; bool get isCurrentUser;
/// Create a copy of FamilyMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyMemberCopyWith<FamilyMember> get copyWith => _$FamilyMemberCopyWithImpl<FamilyMember>(this as FamilyMember, _$identity);

  /// Serializes this FamilyMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.familyStatus, familyStatus) || other.familyStatus == familyStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.isCurrentUser, isCurrentUser) || other.isCurrentUser == isCurrentUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,gender,birthDate,familyStatus,status,currentAddress,isCurrentUser);

@override
String toString() {
  return 'FamilyMember(id: $id, name: $name, gender: $gender, birthDate: $birthDate, familyStatus: $familyStatus, status: $status, currentAddress: $currentAddress, isCurrentUser: $isCurrentUser)';
}


}

/// @nodoc
abstract mixin class $FamilyMemberCopyWith<$Res>  {
  factory $FamilyMemberCopyWith(FamilyMember value, $Res Function(FamilyMember) _then) = _$FamilyMemberCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? gender, String birthDate, String familyStatus, String status, String? currentAddress, bool isCurrentUser
});




}
/// @nodoc
class _$FamilyMemberCopyWithImpl<$Res>
    implements $FamilyMemberCopyWith<$Res> {
  _$FamilyMemberCopyWithImpl(this._self, this._then);

  final FamilyMember _self;
  final $Res Function(FamilyMember) _then;

/// Create a copy of FamilyMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? gender = freezed,Object? birthDate = null,Object? familyStatus = null,Object? status = null,Object? currentAddress = freezed,Object? isCurrentUser = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,familyStatus: null == familyStatus ? _self.familyStatus : familyStatus // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,isCurrentUser: null == isCurrentUser ? _self.isCurrentUser : isCurrentUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FamilyMember].
extension FamilyMemberPatterns on FamilyMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FamilyMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FamilyMember value)  $default,){
final _that = this;
switch (_that) {
case _FamilyMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FamilyMember value)?  $default,){
final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? gender,  String birthDate,  String familyStatus,  String status,  String? currentAddress,  bool isCurrentUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
return $default(_that.id,_that.name,_that.gender,_that.birthDate,_that.familyStatus,_that.status,_that.currentAddress,_that.isCurrentUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? gender,  String birthDate,  String familyStatus,  String status,  String? currentAddress,  bool isCurrentUser)  $default,) {final _that = this;
switch (_that) {
case _FamilyMember():
return $default(_that.id,_that.name,_that.gender,_that.birthDate,_that.familyStatus,_that.status,_that.currentAddress,_that.isCurrentUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? gender,  String birthDate,  String familyStatus,  String status,  String? currentAddress,  bool isCurrentUser)?  $default,) {final _that = this;
switch (_that) {
case _FamilyMember() when $default != null:
return $default(_that.id,_that.name,_that.gender,_that.birthDate,_that.familyStatus,_that.status,_that.currentAddress,_that.isCurrentUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FamilyMember implements FamilyMember {
  const _FamilyMember({required this.id, required this.name, this.gender, required this.birthDate, required this.familyStatus, required this.status, this.currentAddress, required this.isCurrentUser});
  factory _FamilyMember.fromJson(Map<String, dynamic> json) => _$FamilyMemberFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? gender;
@override final  String birthDate;
@override final  String familyStatus;
@override final  String status;
@override final  String? currentAddress;
@override final  bool isCurrentUser;

/// Create a copy of FamilyMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyMemberCopyWith<_FamilyMember> get copyWith => __$FamilyMemberCopyWithImpl<_FamilyMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.familyStatus, familyStatus) || other.familyStatus == familyStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.isCurrentUser, isCurrentUser) || other.isCurrentUser == isCurrentUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,gender,birthDate,familyStatus,status,currentAddress,isCurrentUser);

@override
String toString() {
  return 'FamilyMember(id: $id, name: $name, gender: $gender, birthDate: $birthDate, familyStatus: $familyStatus, status: $status, currentAddress: $currentAddress, isCurrentUser: $isCurrentUser)';
}


}

/// @nodoc
abstract mixin class _$FamilyMemberCopyWith<$Res> implements $FamilyMemberCopyWith<$Res> {
  factory _$FamilyMemberCopyWith(_FamilyMember value, $Res Function(_FamilyMember) _then) = __$FamilyMemberCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? gender, String birthDate, String familyStatus, String status, String? currentAddress, bool isCurrentUser
});




}
/// @nodoc
class __$FamilyMemberCopyWithImpl<$Res>
    implements _$FamilyMemberCopyWith<$Res> {
  __$FamilyMemberCopyWithImpl(this._self, this._then);

  final _FamilyMember _self;
  final $Res Function(_FamilyMember) _then;

/// Create a copy of FamilyMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? gender = freezed,Object? birthDate = null,Object? familyStatus = null,Object? status = null,Object? currentAddress = freezed,Object? isCurrentUser = null,}) {
  return _then(_FamilyMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,familyStatus: null == familyStatus ? _self.familyStatus : familyStatus // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,isCurrentUser: null == isCurrentUser ? _self.isCurrentUser : isCurrentUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
