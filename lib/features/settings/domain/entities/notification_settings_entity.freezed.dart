// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationSettingsEntity {

 String get userId; bool get emailNotifications; bool get pushNotifications; bool get smsNotifications; bool get emergencyAlerts; bool get fraudAlerts; bool get safetyAlerts; bool get medicationAlerts; bool get riskAlerts; bool get systemAlerts; bool get dailySummary; bool get weeklySummary; bool get monthlySummary; String? get quietHoursStart; String? get quietHoursEnd; bool get quietHoursEnabled;
/// Create a copy of NotificationSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSettingsEntityCopyWith<NotificationSettingsEntity> get copyWith => _$NotificationSettingsEntityCopyWithImpl<NotificationSettingsEntity>(this as NotificationSettingsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSettingsEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.emailNotifications, emailNotifications) || other.emailNotifications == emailNotifications)&&(identical(other.pushNotifications, pushNotifications) || other.pushNotifications == pushNotifications)&&(identical(other.smsNotifications, smsNotifications) || other.smsNotifications == smsNotifications)&&(identical(other.emergencyAlerts, emergencyAlerts) || other.emergencyAlerts == emergencyAlerts)&&(identical(other.fraudAlerts, fraudAlerts) || other.fraudAlerts == fraudAlerts)&&(identical(other.safetyAlerts, safetyAlerts) || other.safetyAlerts == safetyAlerts)&&(identical(other.medicationAlerts, medicationAlerts) || other.medicationAlerts == medicationAlerts)&&(identical(other.riskAlerts, riskAlerts) || other.riskAlerts == riskAlerts)&&(identical(other.systemAlerts, systemAlerts) || other.systemAlerts == systemAlerts)&&(identical(other.dailySummary, dailySummary) || other.dailySummary == dailySummary)&&(identical(other.weeklySummary, weeklySummary) || other.weeklySummary == weeklySummary)&&(identical(other.monthlySummary, monthlySummary) || other.monthlySummary == monthlySummary)&&(identical(other.quietHoursStart, quietHoursStart) || other.quietHoursStart == quietHoursStart)&&(identical(other.quietHoursEnd, quietHoursEnd) || other.quietHoursEnd == quietHoursEnd)&&(identical(other.quietHoursEnabled, quietHoursEnabled) || other.quietHoursEnabled == quietHoursEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,userId,emailNotifications,pushNotifications,smsNotifications,emergencyAlerts,fraudAlerts,safetyAlerts,medicationAlerts,riskAlerts,systemAlerts,dailySummary,weeklySummary,monthlySummary,quietHoursStart,quietHoursEnd,quietHoursEnabled);

@override
String toString() {
  return 'NotificationSettingsEntity(userId: $userId, emailNotifications: $emailNotifications, pushNotifications: $pushNotifications, smsNotifications: $smsNotifications, emergencyAlerts: $emergencyAlerts, fraudAlerts: $fraudAlerts, safetyAlerts: $safetyAlerts, medicationAlerts: $medicationAlerts, riskAlerts: $riskAlerts, systemAlerts: $systemAlerts, dailySummary: $dailySummary, weeklySummary: $weeklySummary, monthlySummary: $monthlySummary, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, quietHoursEnabled: $quietHoursEnabled)';
}


}

/// @nodoc
abstract mixin class $NotificationSettingsEntityCopyWith<$Res>  {
  factory $NotificationSettingsEntityCopyWith(NotificationSettingsEntity value, $Res Function(NotificationSettingsEntity) _then) = _$NotificationSettingsEntityCopyWithImpl;
@useResult
$Res call({
 String userId, bool emailNotifications, bool pushNotifications, bool smsNotifications, bool emergencyAlerts, bool fraudAlerts, bool safetyAlerts, bool medicationAlerts, bool riskAlerts, bool systemAlerts, bool dailySummary, bool weeklySummary, bool monthlySummary, String? quietHoursStart, String? quietHoursEnd, bool quietHoursEnabled
});




}
/// @nodoc
class _$NotificationSettingsEntityCopyWithImpl<$Res>
    implements $NotificationSettingsEntityCopyWith<$Res> {
  _$NotificationSettingsEntityCopyWithImpl(this._self, this._then);

  final NotificationSettingsEntity _self;
  final $Res Function(NotificationSettingsEntity) _then;

/// Create a copy of NotificationSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? emailNotifications = null,Object? pushNotifications = null,Object? smsNotifications = null,Object? emergencyAlerts = null,Object? fraudAlerts = null,Object? safetyAlerts = null,Object? medicationAlerts = null,Object? riskAlerts = null,Object? systemAlerts = null,Object? dailySummary = null,Object? weeklySummary = null,Object? monthlySummary = null,Object? quietHoursStart = freezed,Object? quietHoursEnd = freezed,Object? quietHoursEnabled = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,emailNotifications: null == emailNotifications ? _self.emailNotifications : emailNotifications // ignore: cast_nullable_to_non_nullable
as bool,pushNotifications: null == pushNotifications ? _self.pushNotifications : pushNotifications // ignore: cast_nullable_to_non_nullable
as bool,smsNotifications: null == smsNotifications ? _self.smsNotifications : smsNotifications // ignore: cast_nullable_to_non_nullable
as bool,emergencyAlerts: null == emergencyAlerts ? _self.emergencyAlerts : emergencyAlerts // ignore: cast_nullable_to_non_nullable
as bool,fraudAlerts: null == fraudAlerts ? _self.fraudAlerts : fraudAlerts // ignore: cast_nullable_to_non_nullable
as bool,safetyAlerts: null == safetyAlerts ? _self.safetyAlerts : safetyAlerts // ignore: cast_nullable_to_non_nullable
as bool,medicationAlerts: null == medicationAlerts ? _self.medicationAlerts : medicationAlerts // ignore: cast_nullable_to_non_nullable
as bool,riskAlerts: null == riskAlerts ? _self.riskAlerts : riskAlerts // ignore: cast_nullable_to_non_nullable
as bool,systemAlerts: null == systemAlerts ? _self.systemAlerts : systemAlerts // ignore: cast_nullable_to_non_nullable
as bool,dailySummary: null == dailySummary ? _self.dailySummary : dailySummary // ignore: cast_nullable_to_non_nullable
as bool,weeklySummary: null == weeklySummary ? _self.weeklySummary : weeklySummary // ignore: cast_nullable_to_non_nullable
as bool,monthlySummary: null == monthlySummary ? _self.monthlySummary : monthlySummary // ignore: cast_nullable_to_non_nullable
as bool,quietHoursStart: freezed == quietHoursStart ? _self.quietHoursStart : quietHoursStart // ignore: cast_nullable_to_non_nullable
as String?,quietHoursEnd: freezed == quietHoursEnd ? _self.quietHoursEnd : quietHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,quietHoursEnabled: null == quietHoursEnabled ? _self.quietHoursEnabled : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationSettingsEntity].
extension NotificationSettingsEntityPatterns on NotificationSettingsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSettingsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSettingsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSettingsEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSettingsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSettingsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSettingsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  bool emailNotifications,  bool pushNotifications,  bool smsNotifications,  bool emergencyAlerts,  bool fraudAlerts,  bool safetyAlerts,  bool medicationAlerts,  bool riskAlerts,  bool systemAlerts,  bool dailySummary,  bool weeklySummary,  bool monthlySummary,  String? quietHoursStart,  String? quietHoursEnd,  bool quietHoursEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationSettingsEntity() when $default != null:
return $default(_that.userId,_that.emailNotifications,_that.pushNotifications,_that.smsNotifications,_that.emergencyAlerts,_that.fraudAlerts,_that.safetyAlerts,_that.medicationAlerts,_that.riskAlerts,_that.systemAlerts,_that.dailySummary,_that.weeklySummary,_that.monthlySummary,_that.quietHoursStart,_that.quietHoursEnd,_that.quietHoursEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  bool emailNotifications,  bool pushNotifications,  bool smsNotifications,  bool emergencyAlerts,  bool fraudAlerts,  bool safetyAlerts,  bool medicationAlerts,  bool riskAlerts,  bool systemAlerts,  bool dailySummary,  bool weeklySummary,  bool monthlySummary,  String? quietHoursStart,  String? quietHoursEnd,  bool quietHoursEnabled)  $default,) {final _that = this;
switch (_that) {
case _NotificationSettingsEntity():
return $default(_that.userId,_that.emailNotifications,_that.pushNotifications,_that.smsNotifications,_that.emergencyAlerts,_that.fraudAlerts,_that.safetyAlerts,_that.medicationAlerts,_that.riskAlerts,_that.systemAlerts,_that.dailySummary,_that.weeklySummary,_that.monthlySummary,_that.quietHoursStart,_that.quietHoursEnd,_that.quietHoursEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  bool emailNotifications,  bool pushNotifications,  bool smsNotifications,  bool emergencyAlerts,  bool fraudAlerts,  bool safetyAlerts,  bool medicationAlerts,  bool riskAlerts,  bool systemAlerts,  bool dailySummary,  bool weeklySummary,  bool monthlySummary,  String? quietHoursStart,  String? quietHoursEnd,  bool quietHoursEnabled)?  $default,) {final _that = this;
switch (_that) {
case _NotificationSettingsEntity() when $default != null:
return $default(_that.userId,_that.emailNotifications,_that.pushNotifications,_that.smsNotifications,_that.emergencyAlerts,_that.fraudAlerts,_that.safetyAlerts,_that.medicationAlerts,_that.riskAlerts,_that.systemAlerts,_that.dailySummary,_that.weeklySummary,_that.monthlySummary,_that.quietHoursStart,_that.quietHoursEnd,_that.quietHoursEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationSettingsEntity implements NotificationSettingsEntity {
  const _NotificationSettingsEntity({required this.userId, required this.emailNotifications, required this.pushNotifications, required this.smsNotifications, required this.emergencyAlerts, required this.fraudAlerts, required this.safetyAlerts, required this.medicationAlerts, required this.riskAlerts, required this.systemAlerts, required this.dailySummary, required this.weeklySummary, required this.monthlySummary, this.quietHoursStart, this.quietHoursEnd, required this.quietHoursEnabled});
  

@override final  String userId;
@override final  bool emailNotifications;
@override final  bool pushNotifications;
@override final  bool smsNotifications;
@override final  bool emergencyAlerts;
@override final  bool fraudAlerts;
@override final  bool safetyAlerts;
@override final  bool medicationAlerts;
@override final  bool riskAlerts;
@override final  bool systemAlerts;
@override final  bool dailySummary;
@override final  bool weeklySummary;
@override final  bool monthlySummary;
@override final  String? quietHoursStart;
@override final  String? quietHoursEnd;
@override final  bool quietHoursEnabled;

/// Create a copy of NotificationSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSettingsEntityCopyWith<_NotificationSettingsEntity> get copyWith => __$NotificationSettingsEntityCopyWithImpl<_NotificationSettingsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSettingsEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.emailNotifications, emailNotifications) || other.emailNotifications == emailNotifications)&&(identical(other.pushNotifications, pushNotifications) || other.pushNotifications == pushNotifications)&&(identical(other.smsNotifications, smsNotifications) || other.smsNotifications == smsNotifications)&&(identical(other.emergencyAlerts, emergencyAlerts) || other.emergencyAlerts == emergencyAlerts)&&(identical(other.fraudAlerts, fraudAlerts) || other.fraudAlerts == fraudAlerts)&&(identical(other.safetyAlerts, safetyAlerts) || other.safetyAlerts == safetyAlerts)&&(identical(other.medicationAlerts, medicationAlerts) || other.medicationAlerts == medicationAlerts)&&(identical(other.riskAlerts, riskAlerts) || other.riskAlerts == riskAlerts)&&(identical(other.systemAlerts, systemAlerts) || other.systemAlerts == systemAlerts)&&(identical(other.dailySummary, dailySummary) || other.dailySummary == dailySummary)&&(identical(other.weeklySummary, weeklySummary) || other.weeklySummary == weeklySummary)&&(identical(other.monthlySummary, monthlySummary) || other.monthlySummary == monthlySummary)&&(identical(other.quietHoursStart, quietHoursStart) || other.quietHoursStart == quietHoursStart)&&(identical(other.quietHoursEnd, quietHoursEnd) || other.quietHoursEnd == quietHoursEnd)&&(identical(other.quietHoursEnabled, quietHoursEnabled) || other.quietHoursEnabled == quietHoursEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,userId,emailNotifications,pushNotifications,smsNotifications,emergencyAlerts,fraudAlerts,safetyAlerts,medicationAlerts,riskAlerts,systemAlerts,dailySummary,weeklySummary,monthlySummary,quietHoursStart,quietHoursEnd,quietHoursEnabled);

@override
String toString() {
  return 'NotificationSettingsEntity(userId: $userId, emailNotifications: $emailNotifications, pushNotifications: $pushNotifications, smsNotifications: $smsNotifications, emergencyAlerts: $emergencyAlerts, fraudAlerts: $fraudAlerts, safetyAlerts: $safetyAlerts, medicationAlerts: $medicationAlerts, riskAlerts: $riskAlerts, systemAlerts: $systemAlerts, dailySummary: $dailySummary, weeklySummary: $weeklySummary, monthlySummary: $monthlySummary, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, quietHoursEnabled: $quietHoursEnabled)';
}


}

/// @nodoc
abstract mixin class _$NotificationSettingsEntityCopyWith<$Res> implements $NotificationSettingsEntityCopyWith<$Res> {
  factory _$NotificationSettingsEntityCopyWith(_NotificationSettingsEntity value, $Res Function(_NotificationSettingsEntity) _then) = __$NotificationSettingsEntityCopyWithImpl;
@override @useResult
$Res call({
 String userId, bool emailNotifications, bool pushNotifications, bool smsNotifications, bool emergencyAlerts, bool fraudAlerts, bool safetyAlerts, bool medicationAlerts, bool riskAlerts, bool systemAlerts, bool dailySummary, bool weeklySummary, bool monthlySummary, String? quietHoursStart, String? quietHoursEnd, bool quietHoursEnabled
});




}
/// @nodoc
class __$NotificationSettingsEntityCopyWithImpl<$Res>
    implements _$NotificationSettingsEntityCopyWith<$Res> {
  __$NotificationSettingsEntityCopyWithImpl(this._self, this._then);

  final _NotificationSettingsEntity _self;
  final $Res Function(_NotificationSettingsEntity) _then;

/// Create a copy of NotificationSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? emailNotifications = null,Object? pushNotifications = null,Object? smsNotifications = null,Object? emergencyAlerts = null,Object? fraudAlerts = null,Object? safetyAlerts = null,Object? medicationAlerts = null,Object? riskAlerts = null,Object? systemAlerts = null,Object? dailySummary = null,Object? weeklySummary = null,Object? monthlySummary = null,Object? quietHoursStart = freezed,Object? quietHoursEnd = freezed,Object? quietHoursEnabled = null,}) {
  return _then(_NotificationSettingsEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,emailNotifications: null == emailNotifications ? _self.emailNotifications : emailNotifications // ignore: cast_nullable_to_non_nullable
as bool,pushNotifications: null == pushNotifications ? _self.pushNotifications : pushNotifications // ignore: cast_nullable_to_non_nullable
as bool,smsNotifications: null == smsNotifications ? _self.smsNotifications : smsNotifications // ignore: cast_nullable_to_non_nullable
as bool,emergencyAlerts: null == emergencyAlerts ? _self.emergencyAlerts : emergencyAlerts // ignore: cast_nullable_to_non_nullable
as bool,fraudAlerts: null == fraudAlerts ? _self.fraudAlerts : fraudAlerts // ignore: cast_nullable_to_non_nullable
as bool,safetyAlerts: null == safetyAlerts ? _self.safetyAlerts : safetyAlerts // ignore: cast_nullable_to_non_nullable
as bool,medicationAlerts: null == medicationAlerts ? _self.medicationAlerts : medicationAlerts // ignore: cast_nullable_to_non_nullable
as bool,riskAlerts: null == riskAlerts ? _self.riskAlerts : riskAlerts // ignore: cast_nullable_to_non_nullable
as bool,systemAlerts: null == systemAlerts ? _self.systemAlerts : systemAlerts // ignore: cast_nullable_to_non_nullable
as bool,dailySummary: null == dailySummary ? _self.dailySummary : dailySummary // ignore: cast_nullable_to_non_nullable
as bool,weeklySummary: null == weeklySummary ? _self.weeklySummary : weeklySummary // ignore: cast_nullable_to_non_nullable
as bool,monthlySummary: null == monthlySummary ? _self.monthlySummary : monthlySummary // ignore: cast_nullable_to_non_nullable
as bool,quietHoursStart: freezed == quietHoursStart ? _self.quietHoursStart : quietHoursStart // ignore: cast_nullable_to_non_nullable
as String?,quietHoursEnd: freezed == quietHoursEnd ? _self.quietHoursEnd : quietHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,quietHoursEnabled: null == quietHoursEnabled ? _self.quietHoursEnabled : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
