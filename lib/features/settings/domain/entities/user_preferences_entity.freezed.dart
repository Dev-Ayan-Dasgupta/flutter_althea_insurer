// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPreferencesEntity {

 String get userId; bool get darkMode; String get accentColor; bool get compactView; bool get showAvatars; int get itemsPerPage; String get dateFormat; String get timeFormat; String get currency; bool get autoRefresh; int get refreshInterval; bool get soundEnabled; bool get vibrationEnabled;
/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesEntityCopyWith<UserPreferencesEntity> get copyWith => _$UserPreferencesEntityCopyWithImpl<UserPreferencesEntity>(this as UserPreferencesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferencesEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.darkMode, darkMode) || other.darkMode == darkMode)&&(identical(other.accentColor, accentColor) || other.accentColor == accentColor)&&(identical(other.compactView, compactView) || other.compactView == compactView)&&(identical(other.showAvatars, showAvatars) || other.showAvatars == showAvatars)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.timeFormat, timeFormat) || other.timeFormat == timeFormat)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.autoRefresh, autoRefresh) || other.autoRefresh == autoRefresh)&&(identical(other.refreshInterval, refreshInterval) || other.refreshInterval == refreshInterval)&&(identical(other.soundEnabled, soundEnabled) || other.soundEnabled == soundEnabled)&&(identical(other.vibrationEnabled, vibrationEnabled) || other.vibrationEnabled == vibrationEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,userId,darkMode,accentColor,compactView,showAvatars,itemsPerPage,dateFormat,timeFormat,currency,autoRefresh,refreshInterval,soundEnabled,vibrationEnabled);

@override
String toString() {
  return 'UserPreferencesEntity(userId: $userId, darkMode: $darkMode, accentColor: $accentColor, compactView: $compactView, showAvatars: $showAvatars, itemsPerPage: $itemsPerPage, dateFormat: $dateFormat, timeFormat: $timeFormat, currency: $currency, autoRefresh: $autoRefresh, refreshInterval: $refreshInterval, soundEnabled: $soundEnabled, vibrationEnabled: $vibrationEnabled)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesEntityCopyWith<$Res>  {
  factory $UserPreferencesEntityCopyWith(UserPreferencesEntity value, $Res Function(UserPreferencesEntity) _then) = _$UserPreferencesEntityCopyWithImpl;
@useResult
$Res call({
 String userId, bool darkMode, String accentColor, bool compactView, bool showAvatars, int itemsPerPage, String dateFormat, String timeFormat, String currency, bool autoRefresh, int refreshInterval, bool soundEnabled, bool vibrationEnabled
});




}
/// @nodoc
class _$UserPreferencesEntityCopyWithImpl<$Res>
    implements $UserPreferencesEntityCopyWith<$Res> {
  _$UserPreferencesEntityCopyWithImpl(this._self, this._then);

  final UserPreferencesEntity _self;
  final $Res Function(UserPreferencesEntity) _then;

/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? darkMode = null,Object? accentColor = null,Object? compactView = null,Object? showAvatars = null,Object? itemsPerPage = null,Object? dateFormat = null,Object? timeFormat = null,Object? currency = null,Object? autoRefresh = null,Object? refreshInterval = null,Object? soundEnabled = null,Object? vibrationEnabled = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,darkMode: null == darkMode ? _self.darkMode : darkMode // ignore: cast_nullable_to_non_nullable
as bool,accentColor: null == accentColor ? _self.accentColor : accentColor // ignore: cast_nullable_to_non_nullable
as String,compactView: null == compactView ? _self.compactView : compactView // ignore: cast_nullable_to_non_nullable
as bool,showAvatars: null == showAvatars ? _self.showAvatars : showAvatars // ignore: cast_nullable_to_non_nullable
as bool,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,dateFormat: null == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String,timeFormat: null == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,autoRefresh: null == autoRefresh ? _self.autoRefresh : autoRefresh // ignore: cast_nullable_to_non_nullable
as bool,refreshInterval: null == refreshInterval ? _self.refreshInterval : refreshInterval // ignore: cast_nullable_to_non_nullable
as int,soundEnabled: null == soundEnabled ? _self.soundEnabled : soundEnabled // ignore: cast_nullable_to_non_nullable
as bool,vibrationEnabled: null == vibrationEnabled ? _self.vibrationEnabled : vibrationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreferencesEntity].
extension UserPreferencesEntityPatterns on UserPreferencesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferencesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferencesEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferencesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  bool darkMode,  String accentColor,  bool compactView,  bool showAvatars,  int itemsPerPage,  String dateFormat,  String timeFormat,  String currency,  bool autoRefresh,  int refreshInterval,  bool soundEnabled,  bool vibrationEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
return $default(_that.userId,_that.darkMode,_that.accentColor,_that.compactView,_that.showAvatars,_that.itemsPerPage,_that.dateFormat,_that.timeFormat,_that.currency,_that.autoRefresh,_that.refreshInterval,_that.soundEnabled,_that.vibrationEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  bool darkMode,  String accentColor,  bool compactView,  bool showAvatars,  int itemsPerPage,  String dateFormat,  String timeFormat,  String currency,  bool autoRefresh,  int refreshInterval,  bool soundEnabled,  bool vibrationEnabled)  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesEntity():
return $default(_that.userId,_that.darkMode,_that.accentColor,_that.compactView,_that.showAvatars,_that.itemsPerPage,_that.dateFormat,_that.timeFormat,_that.currency,_that.autoRefresh,_that.refreshInterval,_that.soundEnabled,_that.vibrationEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  bool darkMode,  String accentColor,  bool compactView,  bool showAvatars,  int itemsPerPage,  String dateFormat,  String timeFormat,  String currency,  bool autoRefresh,  int refreshInterval,  bool soundEnabled,  bool vibrationEnabled)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
return $default(_that.userId,_that.darkMode,_that.accentColor,_that.compactView,_that.showAvatars,_that.itemsPerPage,_that.dateFormat,_that.timeFormat,_that.currency,_that.autoRefresh,_that.refreshInterval,_that.soundEnabled,_that.vibrationEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _UserPreferencesEntity implements UserPreferencesEntity {
  const _UserPreferencesEntity({required this.userId, required this.darkMode, required this.accentColor, required this.compactView, required this.showAvatars, required this.itemsPerPage, required this.dateFormat, required this.timeFormat, required this.currency, required this.autoRefresh, required this.refreshInterval, required this.soundEnabled, required this.vibrationEnabled});
  

@override final  String userId;
@override final  bool darkMode;
@override final  String accentColor;
@override final  bool compactView;
@override final  bool showAvatars;
@override final  int itemsPerPage;
@override final  String dateFormat;
@override final  String timeFormat;
@override final  String currency;
@override final  bool autoRefresh;
@override final  int refreshInterval;
@override final  bool soundEnabled;
@override final  bool vibrationEnabled;

/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferencesEntityCopyWith<_UserPreferencesEntity> get copyWith => __$UserPreferencesEntityCopyWithImpl<_UserPreferencesEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferencesEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.darkMode, darkMode) || other.darkMode == darkMode)&&(identical(other.accentColor, accentColor) || other.accentColor == accentColor)&&(identical(other.compactView, compactView) || other.compactView == compactView)&&(identical(other.showAvatars, showAvatars) || other.showAvatars == showAvatars)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.timeFormat, timeFormat) || other.timeFormat == timeFormat)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.autoRefresh, autoRefresh) || other.autoRefresh == autoRefresh)&&(identical(other.refreshInterval, refreshInterval) || other.refreshInterval == refreshInterval)&&(identical(other.soundEnabled, soundEnabled) || other.soundEnabled == soundEnabled)&&(identical(other.vibrationEnabled, vibrationEnabled) || other.vibrationEnabled == vibrationEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,userId,darkMode,accentColor,compactView,showAvatars,itemsPerPage,dateFormat,timeFormat,currency,autoRefresh,refreshInterval,soundEnabled,vibrationEnabled);

@override
String toString() {
  return 'UserPreferencesEntity(userId: $userId, darkMode: $darkMode, accentColor: $accentColor, compactView: $compactView, showAvatars: $showAvatars, itemsPerPage: $itemsPerPage, dateFormat: $dateFormat, timeFormat: $timeFormat, currency: $currency, autoRefresh: $autoRefresh, refreshInterval: $refreshInterval, soundEnabled: $soundEnabled, vibrationEnabled: $vibrationEnabled)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesEntityCopyWith<$Res> implements $UserPreferencesEntityCopyWith<$Res> {
  factory _$UserPreferencesEntityCopyWith(_UserPreferencesEntity value, $Res Function(_UserPreferencesEntity) _then) = __$UserPreferencesEntityCopyWithImpl;
@override @useResult
$Res call({
 String userId, bool darkMode, String accentColor, bool compactView, bool showAvatars, int itemsPerPage, String dateFormat, String timeFormat, String currency, bool autoRefresh, int refreshInterval, bool soundEnabled, bool vibrationEnabled
});




}
/// @nodoc
class __$UserPreferencesEntityCopyWithImpl<$Res>
    implements _$UserPreferencesEntityCopyWith<$Res> {
  __$UserPreferencesEntityCopyWithImpl(this._self, this._then);

  final _UserPreferencesEntity _self;
  final $Res Function(_UserPreferencesEntity) _then;

/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? darkMode = null,Object? accentColor = null,Object? compactView = null,Object? showAvatars = null,Object? itemsPerPage = null,Object? dateFormat = null,Object? timeFormat = null,Object? currency = null,Object? autoRefresh = null,Object? refreshInterval = null,Object? soundEnabled = null,Object? vibrationEnabled = null,}) {
  return _then(_UserPreferencesEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,darkMode: null == darkMode ? _self.darkMode : darkMode // ignore: cast_nullable_to_non_nullable
as bool,accentColor: null == accentColor ? _self.accentColor : accentColor // ignore: cast_nullable_to_non_nullable
as String,compactView: null == compactView ? _self.compactView : compactView // ignore: cast_nullable_to_non_nullable
as bool,showAvatars: null == showAvatars ? _self.showAvatars : showAvatars // ignore: cast_nullable_to_non_nullable
as bool,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,dateFormat: null == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String,timeFormat: null == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,autoRefresh: null == autoRefresh ? _self.autoRefresh : autoRefresh // ignore: cast_nullable_to_non_nullable
as bool,refreshInterval: null == refreshInterval ? _self.refreshInterval : refreshInterval // ignore: cast_nullable_to_non_nullable
as int,soundEnabled: null == soundEnabled ? _self.soundEnabled : soundEnabled // ignore: cast_nullable_to_non_nullable
as bool,vibrationEnabled: null == vibrationEnabled ? _self.vibrationEnabled : vibrationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
