// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppInfoModel {

 String get appName; String get version; String get buildNumber; String get description; String get companyName; String get companyWebsite; String get supportEmail; String get supportPhone; List<String> get features; List<TeamMemberModel> get team; List<TechnologyModel> get technologies; String get license;
/// Create a copy of AppInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppInfoModelCopyWith<AppInfoModel> get copyWith => _$AppInfoModelCopyWithImpl<AppInfoModel>(this as AppInfoModel, _$identity);

  /// Serializes this AppInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppInfoModel&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyWebsite, companyWebsite) || other.companyWebsite == companyWebsite)&&(identical(other.supportEmail, supportEmail) || other.supportEmail == supportEmail)&&(identical(other.supportPhone, supportPhone) || other.supportPhone == supportPhone)&&const DeepCollectionEquality().equals(other.features, features)&&const DeepCollectionEquality().equals(other.team, team)&&const DeepCollectionEquality().equals(other.technologies, technologies)&&(identical(other.license, license) || other.license == license));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appName,version,buildNumber,description,companyName,companyWebsite,supportEmail,supportPhone,const DeepCollectionEquality().hash(features),const DeepCollectionEquality().hash(team),const DeepCollectionEquality().hash(technologies),license);

@override
String toString() {
  return 'AppInfoModel(appName: $appName, version: $version, buildNumber: $buildNumber, description: $description, companyName: $companyName, companyWebsite: $companyWebsite, supportEmail: $supportEmail, supportPhone: $supportPhone, features: $features, team: $team, technologies: $technologies, license: $license)';
}


}

/// @nodoc
abstract mixin class $AppInfoModelCopyWith<$Res>  {
  factory $AppInfoModelCopyWith(AppInfoModel value, $Res Function(AppInfoModel) _then) = _$AppInfoModelCopyWithImpl;
@useResult
$Res call({
 String appName, String version, String buildNumber, String description, String companyName, String companyWebsite, String supportEmail, String supportPhone, List<String> features, List<TeamMemberModel> team, List<TechnologyModel> technologies, String license
});




}
/// @nodoc
class _$AppInfoModelCopyWithImpl<$Res>
    implements $AppInfoModelCopyWith<$Res> {
  _$AppInfoModelCopyWithImpl(this._self, this._then);

  final AppInfoModel _self;
  final $Res Function(AppInfoModel) _then;

/// Create a copy of AppInfoModel
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
as List<TeamMemberModel>,technologies: null == technologies ? _self.technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<TechnologyModel>,license: null == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppInfoModel].
extension AppInfoModelPatterns on AppInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _AppInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appName,  String version,  String buildNumber,  String description,  String companyName,  String companyWebsite,  String supportEmail,  String supportPhone,  List<String> features,  List<TeamMemberModel> team,  List<TechnologyModel> technologies,  String license)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppInfoModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appName,  String version,  String buildNumber,  String description,  String companyName,  String companyWebsite,  String supportEmail,  String supportPhone,  List<String> features,  List<TeamMemberModel> team,  List<TechnologyModel> technologies,  String license)  $default,) {final _that = this;
switch (_that) {
case _AppInfoModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appName,  String version,  String buildNumber,  String description,  String companyName,  String companyWebsite,  String supportEmail,  String supportPhone,  List<String> features,  List<TeamMemberModel> team,  List<TechnologyModel> technologies,  String license)?  $default,) {final _that = this;
switch (_that) {
case _AppInfoModel() when $default != null:
return $default(_that.appName,_that.version,_that.buildNumber,_that.description,_that.companyName,_that.companyWebsite,_that.supportEmail,_that.supportPhone,_that.features,_that.team,_that.technologies,_that.license);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppInfoModel extends AppInfoModel {
  const _AppInfoModel({required this.appName, required this.version, required this.buildNumber, required this.description, required this.companyName, required this.companyWebsite, required this.supportEmail, required this.supportPhone, required final  List<String> features, required final  List<TeamMemberModel> team, required final  List<TechnologyModel> technologies, required this.license}): _features = features,_team = team,_technologies = technologies,super._();
  factory _AppInfoModel.fromJson(Map<String, dynamic> json) => _$AppInfoModelFromJson(json);

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

 final  List<TeamMemberModel> _team;
@override List<TeamMemberModel> get team {
  if (_team is EqualUnmodifiableListView) return _team;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_team);
}

 final  List<TechnologyModel> _technologies;
@override List<TechnologyModel> get technologies {
  if (_technologies is EqualUnmodifiableListView) return _technologies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_technologies);
}

@override final  String license;

/// Create a copy of AppInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppInfoModelCopyWith<_AppInfoModel> get copyWith => __$AppInfoModelCopyWithImpl<_AppInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppInfoModel&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyWebsite, companyWebsite) || other.companyWebsite == companyWebsite)&&(identical(other.supportEmail, supportEmail) || other.supportEmail == supportEmail)&&(identical(other.supportPhone, supportPhone) || other.supportPhone == supportPhone)&&const DeepCollectionEquality().equals(other._features, _features)&&const DeepCollectionEquality().equals(other._team, _team)&&const DeepCollectionEquality().equals(other._technologies, _technologies)&&(identical(other.license, license) || other.license == license));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appName,version,buildNumber,description,companyName,companyWebsite,supportEmail,supportPhone,const DeepCollectionEquality().hash(_features),const DeepCollectionEquality().hash(_team),const DeepCollectionEquality().hash(_technologies),license);

@override
String toString() {
  return 'AppInfoModel(appName: $appName, version: $version, buildNumber: $buildNumber, description: $description, companyName: $companyName, companyWebsite: $companyWebsite, supportEmail: $supportEmail, supportPhone: $supportPhone, features: $features, team: $team, technologies: $technologies, license: $license)';
}


}

/// @nodoc
abstract mixin class _$AppInfoModelCopyWith<$Res> implements $AppInfoModelCopyWith<$Res> {
  factory _$AppInfoModelCopyWith(_AppInfoModel value, $Res Function(_AppInfoModel) _then) = __$AppInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String appName, String version, String buildNumber, String description, String companyName, String companyWebsite, String supportEmail, String supportPhone, List<String> features, List<TeamMemberModel> team, List<TechnologyModel> technologies, String license
});




}
/// @nodoc
class __$AppInfoModelCopyWithImpl<$Res>
    implements _$AppInfoModelCopyWith<$Res> {
  __$AppInfoModelCopyWithImpl(this._self, this._then);

  final _AppInfoModel _self;
  final $Res Function(_AppInfoModel) _then;

/// Create a copy of AppInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appName = null,Object? version = null,Object? buildNumber = null,Object? description = null,Object? companyName = null,Object? companyWebsite = null,Object? supportEmail = null,Object? supportPhone = null,Object? features = null,Object? team = null,Object? technologies = null,Object? license = null,}) {
  return _then(_AppInfoModel(
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
as List<TeamMemberModel>,technologies: null == technologies ? _self._technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<TechnologyModel>,license: null == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TeamMemberModel {

 String get name; String get role; String? get imageUrl;
/// Create a copy of TeamMemberModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamMemberModelCopyWith<TeamMemberModel> get copyWith => _$TeamMemberModelCopyWithImpl<TeamMemberModel>(this as TeamMemberModel, _$identity);

  /// Serializes this TeamMemberModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMemberModel&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role,imageUrl);

@override
String toString() {
  return 'TeamMemberModel(name: $name, role: $role, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $TeamMemberModelCopyWith<$Res>  {
  factory $TeamMemberModelCopyWith(TeamMemberModel value, $Res Function(TeamMemberModel) _then) = _$TeamMemberModelCopyWithImpl;
@useResult
$Res call({
 String name, String role, String? imageUrl
});




}
/// @nodoc
class _$TeamMemberModelCopyWithImpl<$Res>
    implements $TeamMemberModelCopyWith<$Res> {
  _$TeamMemberModelCopyWithImpl(this._self, this._then);

  final TeamMemberModel _self;
  final $Res Function(TeamMemberModel) _then;

/// Create a copy of TeamMemberModel
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


/// Adds pattern-matching-related methods to [TeamMemberModel].
extension TeamMemberModelPatterns on TeamMemberModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamMemberModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamMemberModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamMemberModel value)  $default,){
final _that = this;
switch (_that) {
case _TeamMemberModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamMemberModel value)?  $default,){
final _that = this;
switch (_that) {
case _TeamMemberModel() when $default != null:
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
case _TeamMemberModel() when $default != null:
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
case _TeamMemberModel():
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
case _TeamMemberModel() when $default != null:
return $default(_that.name,_that.role,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeamMemberModel extends TeamMemberModel {
  const _TeamMemberModel({required this.name, required this.role, this.imageUrl}): super._();
  factory _TeamMemberModel.fromJson(Map<String, dynamic> json) => _$TeamMemberModelFromJson(json);

@override final  String name;
@override final  String role;
@override final  String? imageUrl;

/// Create a copy of TeamMemberModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamMemberModelCopyWith<_TeamMemberModel> get copyWith => __$TeamMemberModelCopyWithImpl<_TeamMemberModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamMemberModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamMemberModel&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role,imageUrl);

@override
String toString() {
  return 'TeamMemberModel(name: $name, role: $role, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$TeamMemberModelCopyWith<$Res> implements $TeamMemberModelCopyWith<$Res> {
  factory _$TeamMemberModelCopyWith(_TeamMemberModel value, $Res Function(_TeamMemberModel) _then) = __$TeamMemberModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String role, String? imageUrl
});




}
/// @nodoc
class __$TeamMemberModelCopyWithImpl<$Res>
    implements _$TeamMemberModelCopyWith<$Res> {
  __$TeamMemberModelCopyWithImpl(this._self, this._then);

  final _TeamMemberModel _self;
  final $Res Function(_TeamMemberModel) _then;

/// Create a copy of TeamMemberModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? role = null,Object? imageUrl = freezed,}) {
  return _then(_TeamMemberModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TechnologyModel {

 String get name; String get version; String? get description;
/// Create a copy of TechnologyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechnologyModelCopyWith<TechnologyModel> get copyWith => _$TechnologyModelCopyWithImpl<TechnologyModel>(this as TechnologyModel, _$identity);

  /// Serializes this TechnologyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechnologyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,version,description);

@override
String toString() {
  return 'TechnologyModel(name: $name, version: $version, description: $description)';
}


}

/// @nodoc
abstract mixin class $TechnologyModelCopyWith<$Res>  {
  factory $TechnologyModelCopyWith(TechnologyModel value, $Res Function(TechnologyModel) _then) = _$TechnologyModelCopyWithImpl;
@useResult
$Res call({
 String name, String version, String? description
});




}
/// @nodoc
class _$TechnologyModelCopyWithImpl<$Res>
    implements $TechnologyModelCopyWith<$Res> {
  _$TechnologyModelCopyWithImpl(this._self, this._then);

  final TechnologyModel _self;
  final $Res Function(TechnologyModel) _then;

/// Create a copy of TechnologyModel
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


/// Adds pattern-matching-related methods to [TechnologyModel].
extension TechnologyModelPatterns on TechnologyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechnologyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechnologyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechnologyModel value)  $default,){
final _that = this;
switch (_that) {
case _TechnologyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechnologyModel value)?  $default,){
final _that = this;
switch (_that) {
case _TechnologyModel() when $default != null:
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
case _TechnologyModel() when $default != null:
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
case _TechnologyModel():
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
case _TechnologyModel() when $default != null:
return $default(_that.name,_that.version,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TechnologyModel extends TechnologyModel {
  const _TechnologyModel({required this.name, required this.version, this.description}): super._();
  factory _TechnologyModel.fromJson(Map<String, dynamic> json) => _$TechnologyModelFromJson(json);

@override final  String name;
@override final  String version;
@override final  String? description;

/// Create a copy of TechnologyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechnologyModelCopyWith<_TechnologyModel> get copyWith => __$TechnologyModelCopyWithImpl<_TechnologyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TechnologyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechnologyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,version,description);

@override
String toString() {
  return 'TechnologyModel(name: $name, version: $version, description: $description)';
}


}

/// @nodoc
abstract mixin class _$TechnologyModelCopyWith<$Res> implements $TechnologyModelCopyWith<$Res> {
  factory _$TechnologyModelCopyWith(_TechnologyModel value, $Res Function(_TechnologyModel) _then) = __$TechnologyModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String version, String? description
});




}
/// @nodoc
class __$TechnologyModelCopyWithImpl<$Res>
    implements _$TechnologyModelCopyWith<$Res> {
  __$TechnologyModelCopyWithImpl(this._self, this._then);

  final _TechnologyModel _self;
  final $Res Function(_TechnologyModel) _then;

/// Create a copy of TechnologyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? version = null,Object? description = freezed,}) {
  return _then(_TechnologyModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
