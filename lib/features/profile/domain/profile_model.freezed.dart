// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileResponse {

 ProfileAccount get account; ProfileMember? get member;
/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileResponseCopyWith<ProfileResponse> get copyWith => _$ProfileResponseCopyWithImpl<ProfileResponse>(this as ProfileResponse, _$identity);

  /// Serializes this ProfileResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileResponse&&(identical(other.account, account) || other.account == account)&&(identical(other.member, member) || other.member == member));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,account,member);

@override
String toString() {
  return 'ProfileResponse(account: $account, member: $member)';
}


}

/// @nodoc
abstract mixin class $ProfileResponseCopyWith<$Res>  {
  factory $ProfileResponseCopyWith(ProfileResponse value, $Res Function(ProfileResponse) _then) = _$ProfileResponseCopyWithImpl;
@useResult
$Res call({
 ProfileAccount account, ProfileMember? member
});


$ProfileAccountCopyWith<$Res> get account;$ProfileMemberCopyWith<$Res>? get member;

}
/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._self, this._then);

  final ProfileResponse _self;
  final $Res Function(ProfileResponse) _then;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? account = null,Object? member = freezed,}) {
  return _then(_self.copyWith(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as ProfileAccount,member: freezed == member ? _self.member : member // ignore: cast_nullable_to_non_nullable
as ProfileMember?,
  ));
}
/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileAccountCopyWith<$Res> get account {
  
  return $ProfileAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileMemberCopyWith<$Res>? get member {
    if (_self.member == null) {
    return null;
  }

  return $ProfileMemberCopyWith<$Res>(_self.member!, (value) {
    return _then(_self.copyWith(member: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileResponse].
extension ProfileResponsePatterns on ProfileResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProfileResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileAccount account,  ProfileMember? member)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
return $default(_that.account,_that.member);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileAccount account,  ProfileMember? member)  $default,) {final _that = this;
switch (_that) {
case _ProfileResponse():
return $default(_that.account,_that.member);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileAccount account,  ProfileMember? member)?  $default,) {final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
return $default(_that.account,_that.member);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileResponse implements ProfileResponse {
  const _ProfileResponse({required this.account, this.member});
  factory _ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

@override final  ProfileAccount account;
@override final  ProfileMember? member;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileResponseCopyWith<_ProfileResponse> get copyWith => __$ProfileResponseCopyWithImpl<_ProfileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileResponse&&(identical(other.account, account) || other.account == account)&&(identical(other.member, member) || other.member == member));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,account,member);

@override
String toString() {
  return 'ProfileResponse(account: $account, member: $member)';
}


}

/// @nodoc
abstract mixin class _$ProfileResponseCopyWith<$Res> implements $ProfileResponseCopyWith<$Res> {
  factory _$ProfileResponseCopyWith(_ProfileResponse value, $Res Function(_ProfileResponse) _then) = __$ProfileResponseCopyWithImpl;
@override @useResult
$Res call({
 ProfileAccount account, ProfileMember? member
});


@override $ProfileAccountCopyWith<$Res> get account;@override $ProfileMemberCopyWith<$Res>? get member;

}
/// @nodoc
class __$ProfileResponseCopyWithImpl<$Res>
    implements _$ProfileResponseCopyWith<$Res> {
  __$ProfileResponseCopyWithImpl(this._self, this._then);

  final _ProfileResponse _self;
  final $Res Function(_ProfileResponse) _then;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? account = null,Object? member = freezed,}) {
  return _then(_ProfileResponse(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as ProfileAccount,member: freezed == member ? _self.member : member // ignore: cast_nullable_to_non_nullable
as ProfileMember?,
  ));
}

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileAccountCopyWith<$Res> get account {
  
  return $ProfileAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileMemberCopyWith<$Res>? get member {
    if (_self.member == null) {
    return null;
  }

  return $ProfileMemberCopyWith<$Res>(_self.member!, (value) {
    return _then(_self.copyWith(member: value));
  });
}
}


/// @nodoc
mixin _$ProfileAccount {

 String get id; String? get username; String get email; String? get whatsappNumber; String get role; String? get roleLabel; bool get isActive;
/// Create a copy of ProfileAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileAccountCopyWith<ProfileAccount> get copyWith => _$ProfileAccountCopyWithImpl<ProfileAccount>(this as ProfileAccount, _$identity);

  /// Serializes this ProfileAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.whatsappNumber, whatsappNumber) || other.whatsappNumber == whatsappNumber)&&(identical(other.role, role) || other.role == role)&&(identical(other.roleLabel, roleLabel) || other.roleLabel == roleLabel)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,whatsappNumber,role,roleLabel,isActive);

@override
String toString() {
  return 'ProfileAccount(id: $id, username: $username, email: $email, whatsappNumber: $whatsappNumber, role: $role, roleLabel: $roleLabel, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $ProfileAccountCopyWith<$Res>  {
  factory $ProfileAccountCopyWith(ProfileAccount value, $Res Function(ProfileAccount) _then) = _$ProfileAccountCopyWithImpl;
@useResult
$Res call({
 String id, String? username, String email, String? whatsappNumber, String role, String? roleLabel, bool isActive
});




}
/// @nodoc
class _$ProfileAccountCopyWithImpl<$Res>
    implements $ProfileAccountCopyWith<$Res> {
  _$ProfileAccountCopyWithImpl(this._self, this._then);

  final ProfileAccount _self;
  final $Res Function(ProfileAccount) _then;

/// Create a copy of ProfileAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = freezed,Object? email = null,Object? whatsappNumber = freezed,Object? role = null,Object? roleLabel = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,whatsappNumber: freezed == whatsappNumber ? _self.whatsappNumber : whatsappNumber // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,roleLabel: freezed == roleLabel ? _self.roleLabel : roleLabel // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileAccount].
extension ProfileAccountPatterns on ProfileAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileAccount value)  $default,){
final _that = this;
switch (_that) {
case _ProfileAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileAccount value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? username,  String email,  String? whatsappNumber,  String role,  String? roleLabel,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileAccount() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.whatsappNumber,_that.role,_that.roleLabel,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? username,  String email,  String? whatsappNumber,  String role,  String? roleLabel,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _ProfileAccount():
return $default(_that.id,_that.username,_that.email,_that.whatsappNumber,_that.role,_that.roleLabel,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? username,  String email,  String? whatsappNumber,  String role,  String? roleLabel,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _ProfileAccount() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.whatsappNumber,_that.role,_that.roleLabel,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileAccount implements ProfileAccount {
  const _ProfileAccount({required this.id, this.username, required this.email, this.whatsappNumber, required this.role, this.roleLabel, required this.isActive});
  factory _ProfileAccount.fromJson(Map<String, dynamic> json) => _$ProfileAccountFromJson(json);

@override final  String id;
@override final  String? username;
@override final  String email;
@override final  String? whatsappNumber;
@override final  String role;
@override final  String? roleLabel;
@override final  bool isActive;

/// Create a copy of ProfileAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileAccountCopyWith<_ProfileAccount> get copyWith => __$ProfileAccountCopyWithImpl<_ProfileAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.whatsappNumber, whatsappNumber) || other.whatsappNumber == whatsappNumber)&&(identical(other.role, role) || other.role == role)&&(identical(other.roleLabel, roleLabel) || other.roleLabel == roleLabel)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,whatsappNumber,role,roleLabel,isActive);

@override
String toString() {
  return 'ProfileAccount(id: $id, username: $username, email: $email, whatsappNumber: $whatsappNumber, role: $role, roleLabel: $roleLabel, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$ProfileAccountCopyWith<$Res> implements $ProfileAccountCopyWith<$Res> {
  factory _$ProfileAccountCopyWith(_ProfileAccount value, $Res Function(_ProfileAccount) _then) = __$ProfileAccountCopyWithImpl;
@override @useResult
$Res call({
 String id, String? username, String email, String? whatsappNumber, String role, String? roleLabel, bool isActive
});




}
/// @nodoc
class __$ProfileAccountCopyWithImpl<$Res>
    implements _$ProfileAccountCopyWith<$Res> {
  __$ProfileAccountCopyWithImpl(this._self, this._then);

  final _ProfileAccount _self;
  final $Res Function(_ProfileAccount) _then;

/// Create a copy of ProfileAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = freezed,Object? email = null,Object? whatsappNumber = freezed,Object? role = null,Object? roleLabel = freezed,Object? isActive = null,}) {
  return _then(_ProfileAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,whatsappNumber: freezed == whatsappNumber ? _self.whatsappNumber : whatsappNumber // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,roleLabel: freezed == roleLabel ? _self.roleLabel : roleLabel // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ProfileMember {

 String get id; String get name; String? get gender; String? get birthPlace; String get birthDate; String? get education; String? get currentAddress; String get status; String? get occupationName;
/// Create a copy of ProfileMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileMemberCopyWith<ProfileMember> get copyWith => _$ProfileMemberCopyWithImpl<ProfileMember>(this as ProfileMember, _$identity);

  /// Serializes this ProfileMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.education, education) || other.education == education)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.status, status) || other.status == status)&&(identical(other.occupationName, occupationName) || other.occupationName == occupationName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,gender,birthPlace,birthDate,education,currentAddress,status,occupationName);

@override
String toString() {
  return 'ProfileMember(id: $id, name: $name, gender: $gender, birthPlace: $birthPlace, birthDate: $birthDate, education: $education, currentAddress: $currentAddress, status: $status, occupationName: $occupationName)';
}


}

/// @nodoc
abstract mixin class $ProfileMemberCopyWith<$Res>  {
  factory $ProfileMemberCopyWith(ProfileMember value, $Res Function(ProfileMember) _then) = _$ProfileMemberCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? gender, String? birthPlace, String birthDate, String? education, String? currentAddress, String status, String? occupationName
});




}
/// @nodoc
class _$ProfileMemberCopyWithImpl<$Res>
    implements $ProfileMemberCopyWith<$Res> {
  _$ProfileMemberCopyWithImpl(this._self, this._then);

  final ProfileMember _self;
  final $Res Function(ProfileMember) _then;

/// Create a copy of ProfileMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? gender = freezed,Object? birthPlace = freezed,Object? birthDate = null,Object? education = freezed,Object? currentAddress = freezed,Object? status = null,Object? occupationName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthPlace: freezed == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String?,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,occupationName: freezed == occupationName ? _self.occupationName : occupationName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileMember].
extension ProfileMemberPatterns on ProfileMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileMember value)  $default,){
final _that = this;
switch (_that) {
case _ProfileMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileMember value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? gender,  String? birthPlace,  String birthDate,  String? education,  String? currentAddress,  String status,  String? occupationName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileMember() when $default != null:
return $default(_that.id,_that.name,_that.gender,_that.birthPlace,_that.birthDate,_that.education,_that.currentAddress,_that.status,_that.occupationName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? gender,  String? birthPlace,  String birthDate,  String? education,  String? currentAddress,  String status,  String? occupationName)  $default,) {final _that = this;
switch (_that) {
case _ProfileMember():
return $default(_that.id,_that.name,_that.gender,_that.birthPlace,_that.birthDate,_that.education,_that.currentAddress,_that.status,_that.occupationName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? gender,  String? birthPlace,  String birthDate,  String? education,  String? currentAddress,  String status,  String? occupationName)?  $default,) {final _that = this;
switch (_that) {
case _ProfileMember() when $default != null:
return $default(_that.id,_that.name,_that.gender,_that.birthPlace,_that.birthDate,_that.education,_that.currentAddress,_that.status,_that.occupationName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileMember implements ProfileMember {
  const _ProfileMember({required this.id, required this.name, this.gender, this.birthPlace, required this.birthDate, this.education, this.currentAddress, required this.status, this.occupationName});
  factory _ProfileMember.fromJson(Map<String, dynamic> json) => _$ProfileMemberFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? gender;
@override final  String? birthPlace;
@override final  String birthDate;
@override final  String? education;
@override final  String? currentAddress;
@override final  String status;
@override final  String? occupationName;

/// Create a copy of ProfileMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileMemberCopyWith<_ProfileMember> get copyWith => __$ProfileMemberCopyWithImpl<_ProfileMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.education, education) || other.education == education)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.status, status) || other.status == status)&&(identical(other.occupationName, occupationName) || other.occupationName == occupationName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,gender,birthPlace,birthDate,education,currentAddress,status,occupationName);

@override
String toString() {
  return 'ProfileMember(id: $id, name: $name, gender: $gender, birthPlace: $birthPlace, birthDate: $birthDate, education: $education, currentAddress: $currentAddress, status: $status, occupationName: $occupationName)';
}


}

/// @nodoc
abstract mixin class _$ProfileMemberCopyWith<$Res> implements $ProfileMemberCopyWith<$Res> {
  factory _$ProfileMemberCopyWith(_ProfileMember value, $Res Function(_ProfileMember) _then) = __$ProfileMemberCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? gender, String? birthPlace, String birthDate, String? education, String? currentAddress, String status, String? occupationName
});




}
/// @nodoc
class __$ProfileMemberCopyWithImpl<$Res>
    implements _$ProfileMemberCopyWith<$Res> {
  __$ProfileMemberCopyWithImpl(this._self, this._then);

  final _ProfileMember _self;
  final $Res Function(_ProfileMember) _then;

/// Create a copy of ProfileMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? gender = freezed,Object? birthPlace = freezed,Object? birthDate = null,Object? education = freezed,Object? currentAddress = freezed,Object? status = null,Object? occupationName = freezed,}) {
  return _then(_ProfileMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthPlace: freezed == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String?,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,occupationName: freezed == occupationName ? _self.occupationName : occupationName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
