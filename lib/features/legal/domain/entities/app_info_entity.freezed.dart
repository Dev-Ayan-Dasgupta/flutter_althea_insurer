// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppInfoEntity {

 String get appName; String get version; String get buildNumber; String get description; String get companyName; String get companyWebsite; String get supportEmail; String get supportPhone; List<String> get features; List<TeamMemberEntity> get team; List<TechnologyEntity> get technologies; String get license;
/// Create a copy of AppInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppInfoEntityCopyWith<AppInfoEntity> get copyWith => _$AppInfoEntityCopyWithImpl<AppInfoEntity>(this as AppInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppInfoEntity&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyWebsite, companyWebsite) || other.companyWebsite == companyWebsite)&&(identical(other.supportEmail, supportEmail) || other.supportEmail == supportEmail)&&(identical(other.supportPhone, supportPhone) || other.supportPhone == supportPhone)&&const DeepCollectionEquality().equals(other.features, features)&&const DeepCollectionEquality().equals(other.team, team)&&const DeepCollectionEquality().equals(other.technologies, technologies)&&(identical(other.license, license) || other.license == license));
}


@override
int get hashCode => Object.hash(runtimeType,appName,version,buildNumber,description,companyName,companyWebsite,supportEmail,supportPhone,const DeepCollectionEquality().hash(features),const DeepCollectionEquality().hash(team),const DeepCollectionEquality().hash(technologies),license);

@override
String toString() {
  return 'AppInfoEntity(appName: $appName, version: $version, buildNumber: $buildNumber, description: $description, companyName: $companyName, companyWebsite: $companyWebsite, supportEmail: $supportEmail, supportPhone: $supportPhone, features: $features, team: $team, technologies: $technologies, license: $license)';
}


}

/// @nodoc
abstract mixin class $AppInfoEntityCopyWith<$Res>  {
  factory $AppInfoEntityCopyWith(AppInfoEntity value, $Res Function(AppInfoEntity) _then) = _$AppInfoEntityCopyWithImpl;
@useResult
$Res call({
 String appName, String version, String buildNumber, String description, String companyName, String companyWebsite, String supportEmail, String supportPhone, List<String> features, List<TeamMemberEntity> team, List<TechnologyEntity> technologies, String license
});




}
/// @nodoc
class _$AppInfoEntityCopyWithImpl<$Res>
    implements $AppInfoEntityCopyWith<$Res> {
  _$AppInfoEntityCopyWithImpl(this._self, this._then);

  final AppInfoEntity _self;
  final $Res Function(AppInfoEntity) _then;

/// Create a copy of AppInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appName = null,Object? version = null,Object? buildNumber = null,Object? description = null,Object? companyName = null,Object? companyWebsite = null,Object? supportEmail = null,Object? supportPhone = null,Object? features = null,Object? team = null,Object? technologies = null,Object? license = null,}) {
  return _then(_self.copyWith(
appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyWebsite: null == companyWebsite ? _self.companyWebsite : companyWebsite // ignore: cast_nullable_to_non_nullable
as String,supportEmail: null == supportEmail ? _self.supportEmail : supportEmail // ignore: cast_nullable_to_non_nullable
as String,supportPhone: null == supportPhone ? _self.supportPhone : supportPhone // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,team: null == team ? _self.team : team // ignore: cast_nullable_to_non_nullable
as List<TeamMemberEntity>,technologies: null == technologies ? _self.technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<TechnologyEntity>,license: null == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppInfoEntity].
extension AppInfoEntityPatterns on AppInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _AppInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AppInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appName,  String version,  String buildNumber,  String description,  String companyName,  String companyWebsite,  String supportEmail,  String supportPhone,  List<String> features,  List<TeamMemberEntity> team,  List<TechnologyEntity> technologies,  String license)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppInfoEntity() when $default != null:
return $default(_that.appName,_that.version,_that.buildNumber,_that.description,_that.companyName,_that.companyWebsite,_that.supportEmail,_that.supportPhone,_that.features,_that.team,_that.technologies,_that.license);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appName,  String version,  String buildNumber,  String description,  String companyName,  String companyWebsite,  String supportEmail,  String supportPhone,  List<String> features,  List<TeamMemberEntity> team,  List<TechnologyEntity> technologies,  String license)  $default,) {final _that = this;
switch (_that) {
case _AppInfoEntity():
return $default(_that.appName,_that.version,_that.buildNumber,_that.description,_that.companyName,_that.companyWebsite,_that.supportEmail,_that.supportPhone,_that.features,_that.team,_that.technologies,_that.license);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appName,  String version,  String buildNumber,  String description,  String companyName,  String companyWebsite,  String supportEmail,  String supportPhone,  List<String> features,  List<TeamMemberEntity> team,  List<TechnologyEntity> technologies,  String license)?  $default,) {final _that = this;
switch (_that) {
case _AppInfoEntity() when $default != null:
return $default(_that.appName,_that.version,_that.buildNumber,_that.description,_that.companyName,_that.companyWebsite,_that.supportEmail,_that.supportPhone,_that.features,_that.team,_that.technologies,_that.license);case _:
  return null;

}
}

}

/// @nodoc


class _AppInfoEntity implements AppInfoEntity {
  const _AppInfoEntity({required this.appName, required this.version, required this.buildNumber, required this.description, required this.companyName, required this.companyWebsite, required this.supportEmail, required this.supportPhone, required final  List<String> features, required final  List<TeamMemberEntity> team, required final  List<TechnologyEntity> technologies, required this.license}): _features = features,_team = team,_technologies = technologies;
  

@override final  String appName;
@override final  String version;
@override final  String buildNumber;
@override final  String description;
@override final  String companyName;
@override final  String companyWebsite;
@override final  String supportEmail;
@override final  String supportPhone;
 final  List<String> _features;
@override List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

 final  List<TeamMemberEntity> _team;
@override List<TeamMemberEntity> get team {
  if (_team is EqualUnmodifiableListView) return _team;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_team);
}

 final  List<TechnologyEntity> _technologies;
@override List<TechnologyEntity> get technologies {
  if (_technologies is EqualUnmodifiableListView) return _technologies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_technologies);
}

@override final  String license;

/// Create a copy of AppInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppInfoEntityCopyWith<_AppInfoEntity> get copyWith => __$AppInfoEntityCopyWithImpl<_AppInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppInfoEntity&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyWebsite, companyWebsite) || other.companyWebsite == companyWebsite)&&(identical(other.supportEmail, supportEmail) || other.supportEmail == supportEmail)&&(identical(other.supportPhone, supportPhone) || other.supportPhone == supportPhone)&&const DeepCollectionEquality().equals(other._features, _features)&&const DeepCollectionEquality().equals(other._team, _team)&&const DeepCollectionEquality().equals(other._technologies, _technologies)&&(identical(other.license, license) || other.license == license));
}


@override
int get hashCode => Object.hash(runtimeType,appName,version,buildNumber,description,companyName,companyWebsite,supportEmail,supportPhone,const DeepCollectionEquality().hash(_features),const DeepCollectionEquality().hash(_team),const DeepCollectionEquality().hash(_technologies),license);

@override
String toString() {
  return 'AppInfoEntity(appName: $appName, version: $version, buildNumber: $buildNumber, description: $description, companyName: $companyName, companyWebsite: $companyWebsite, supportEmail: $supportEmail, supportPhone: $supportPhone, features: $features, team: $team, technologies: $technologies, license: $license)';
}


}

/// @nodoc
abstract mixin class _$AppInfoEntityCopyWith<$Res> implements $AppInfoEntityCopyWith<$Res> {
  factory _$AppInfoEntityCopyWith(_AppInfoEntity value, $Res Function(_AppInfoEntity) _then) = __$AppInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 String appName, String version, String buildNumber, String description, String companyName, String companyWebsite, String supportEmail, String supportPhone, List<String> features, List<TeamMemberEntity> team, List<TechnologyEntity> technologies, String license
});




}
/// @nodoc
class __$AppInfoEntityCopyWithImpl<$Res>
    implements _$AppInfoEntityCopyWith<$Res> {
  __$AppInfoEntityCopyWithImpl(this._self, this._then);

  final _AppInfoEntity _self;
  final $Res Function(_AppInfoEntity) _then;

/// Create a copy of AppInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appName = null,Object? version = null,Object? buildNumber = null,Object? description = null,Object? companyName = null,Object? companyWebsite = null,Object? supportEmail = null,Object? supportPhone = null,Object? features = null,Object? team = null,Object? technologies = null,Object? license = null,}) {
  return _then(_AppInfoEntity(
appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyWebsite: null == companyWebsite ? _self.companyWebsite : companyWebsite // ignore: cast_nullable_to_non_nullable
as String,supportEmail: null == supportEmail ? _self.supportEmail : supportEmail // ignore: cast_nullable_to_non_nullable
as String,supportPhone: null == supportPhone ? _self.supportPhone : supportPhone // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,team: null == team ? _self._team : team // ignore: cast_nullable_to_non_nullable
as List<TeamMemberEntity>,technologies: null == technologies ? _self._technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<TechnologyEntity>,license: null == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TeamMemberEntity {

 String get name; String get role; String? get imageUrl;
/// Create a copy of TeamMemberEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamMemberEntityCopyWith<TeamMemberEntity> get copyWith => _$TeamMemberEntityCopyWithImpl<TeamMemberEntity>(this as TeamMemberEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMemberEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,role,imageUrl);

@override
String toString() {
  return 'TeamMemberEntity(name: $name, role: $role, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $TeamMemberEntityCopyWith<$Res>  {
  factory $TeamMemberEntityCopyWith(TeamMemberEntity value, $Res Function(TeamMemberEntity) _then) = _$TeamMemberEntityCopyWithImpl;
@useResult
$Res call({
 String name, String role, String? imageUrl
});




}
/// @nodoc
class _$TeamMemberEntityCopyWithImpl<$Res>
    implements $TeamMemberEntityCopyWith<$Res> {
  _$TeamMemberEntityCopyWithImpl(this._self, this._then);

  final TeamMemberEntity _self;
  final $Res Function(TeamMemberEntity) _then;

/// Create a copy of TeamMemberEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? role = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamMemberEntity].
extension TeamMemberEntityPatterns on TeamMemberEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamMemberEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamMemberEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamMemberEntity value)  $default,){
final _that = this;
switch (_that) {
case _TeamMemberEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamMemberEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TeamMemberEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String role,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamMemberEntity() when $default != null:
return $default(_that.name,_that.role,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String role,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _TeamMemberEntity():
return $default(_that.name,_that.role,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String role,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _TeamMemberEntity() when $default != null:
return $default(_that.name,_that.role,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _TeamMemberEntity implements TeamMemberEntity {
  const _TeamMemberEntity({required this.name, required this.role, this.imageUrl});
  

@override final  String name;
@override final  String role;
@override final  String? imageUrl;

/// Create a copy of TeamMemberEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamMemberEntityCopyWith<_TeamMemberEntity> get copyWith => __$TeamMemberEntityCopyWithImpl<_TeamMemberEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamMemberEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,role,imageUrl);

@override
String toString() {
  return 'TeamMemberEntity(name: $name, role: $role, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$TeamMemberEntityCopyWith<$Res> implements $TeamMemberEntityCopyWith<$Res> {
  factory _$TeamMemberEntityCopyWith(_TeamMemberEntity value, $Res Function(_TeamMemberEntity) _then) = __$TeamMemberEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String role, String? imageUrl
});




}
/// @nodoc
class __$TeamMemberEntityCopyWithImpl<$Res>
    implements _$TeamMemberEntityCopyWith<$Res> {
  __$TeamMemberEntityCopyWithImpl(this._self, this._then);

  final _TeamMemberEntity _self;
  final $Res Function(_TeamMemberEntity) _then;

/// Create a copy of TeamMemberEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? role = null,Object? imageUrl = freezed,}) {
  return _then(_TeamMemberEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$TechnologyEntity {

 String get name; String get version; String? get description;
/// Create a copy of TechnologyEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechnologyEntityCopyWith<TechnologyEntity> get copyWith => _$TechnologyEntityCopyWithImpl<TechnologyEntity>(this as TechnologyEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechnologyEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,version,description);

@override
String toString() {
  return 'TechnologyEntity(name: $name, version: $version, description: $description)';
}


}

/// @nodoc
abstract mixin class $TechnologyEntityCopyWith<$Res>  {
  factory $TechnologyEntityCopyWith(TechnologyEntity value, $Res Function(TechnologyEntity) _then) = _$TechnologyEntityCopyWithImpl;
@useResult
$Res call({
 String name, String version, String? description
});




}
/// @nodoc
class _$TechnologyEntityCopyWithImpl<$Res>
    implements $TechnologyEntityCopyWith<$Res> {
  _$TechnologyEntityCopyWithImpl(this._self, this._then);

  final TechnologyEntity _self;
  final $Res Function(TechnologyEntity) _then;

/// Create a copy of TechnologyEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? version = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TechnologyEntity].
extension TechnologyEntityPatterns on TechnologyEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechnologyEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechnologyEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechnologyEntity value)  $default,){
final _that = this;
switch (_that) {
case _TechnologyEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechnologyEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TechnologyEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String version,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TechnologyEntity() when $default != null:
return $default(_that.name,_that.version,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String version,  String? description)  $default,) {final _that = this;
switch (_that) {
case _TechnologyEntity():
return $default(_that.name,_that.version,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String version,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _TechnologyEntity() when $default != null:
return $default(_that.name,_that.version,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _TechnologyEntity implements TechnologyEntity {
  const _TechnologyEntity({required this.name, required this.version, this.description});
  

@override final  String name;
@override final  String version;
@override final  String? description;

/// Create a copy of TechnologyEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechnologyEntityCopyWith<_TechnologyEntity> get copyWith => __$TechnologyEntityCopyWithImpl<_TechnologyEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechnologyEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,version,description);

@override
String toString() {
  return 'TechnologyEntity(name: $name, version: $version, description: $description)';
}


}

/// @nodoc
abstract mixin class _$TechnologyEntityCopyWith<$Res> implements $TechnologyEntityCopyWith<$Res> {
  factory _$TechnologyEntityCopyWith(_TechnologyEntity value, $Res Function(_TechnologyEntity) _then) = __$TechnologyEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String version, String? description
});




}
/// @nodoc
class __$TechnologyEntityCopyWithImpl<$Res>
    implements _$TechnologyEntityCopyWith<$Res> {
  __$TechnologyEntityCopyWithImpl(this._self, this._then);

  final _TechnologyEntity _self;
  final $Res Function(_TechnologyEntity) _then;

/// Create a copy of TechnologyEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? version = null,Object? description = freezed,}) {
  return _then(_TechnologyEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
