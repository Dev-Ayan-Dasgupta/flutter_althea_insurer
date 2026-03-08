// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerificationDetailEntity {

 bool get bleVerified; bool get gpsVerified; bool get timestampVerified; String? get bleDeviceId; double? get gpsLatitude; double? get gpsLongitude; double? get gpsAccuracy; DateTime? get actualStartTime; DateTime? get actualEndTime; int? get actualDuration; int? get expectedDuration; bool? get manualOverride; String? get overrideReason; String? get overrideBy;
/// Create a copy of VerificationDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationDetailEntityCopyWith<VerificationDetailEntity> get copyWith => _$VerificationDetailEntityCopyWithImpl<VerificationDetailEntity>(this as VerificationDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationDetailEntity&&(identical(other.bleVerified, bleVerified) || other.bleVerified == bleVerified)&&(identical(other.gpsVerified, gpsVerified) || other.gpsVerified == gpsVerified)&&(identical(other.timestampVerified, timestampVerified) || other.timestampVerified == timestampVerified)&&(identical(other.bleDeviceId, bleDeviceId) || other.bleDeviceId == bleDeviceId)&&(identical(other.gpsLatitude, gpsLatitude) || other.gpsLatitude == gpsLatitude)&&(identical(other.gpsLongitude, gpsLongitude) || other.gpsLongitude == gpsLongitude)&&(identical(other.gpsAccuracy, gpsAccuracy) || other.gpsAccuracy == gpsAccuracy)&&(identical(other.actualStartTime, actualStartTime) || other.actualStartTime == actualStartTime)&&(identical(other.actualEndTime, actualEndTime) || other.actualEndTime == actualEndTime)&&(identical(other.actualDuration, actualDuration) || other.actualDuration == actualDuration)&&(identical(other.expectedDuration, expectedDuration) || other.expectedDuration == expectedDuration)&&(identical(other.manualOverride, manualOverride) || other.manualOverride == manualOverride)&&(identical(other.overrideReason, overrideReason) || other.overrideReason == overrideReason)&&(identical(other.overrideBy, overrideBy) || other.overrideBy == overrideBy));
}


@override
int get hashCode => Object.hash(runtimeType,bleVerified,gpsVerified,timestampVerified,bleDeviceId,gpsLatitude,gpsLongitude,gpsAccuracy,actualStartTime,actualEndTime,actualDuration,expectedDuration,manualOverride,overrideReason,overrideBy);

@override
String toString() {
  return 'VerificationDetailEntity(bleVerified: $bleVerified, gpsVerified: $gpsVerified, timestampVerified: $timestampVerified, bleDeviceId: $bleDeviceId, gpsLatitude: $gpsLatitude, gpsLongitude: $gpsLongitude, gpsAccuracy: $gpsAccuracy, actualStartTime: $actualStartTime, actualEndTime: $actualEndTime, actualDuration: $actualDuration, expectedDuration: $expectedDuration, manualOverride: $manualOverride, overrideReason: $overrideReason, overrideBy: $overrideBy)';
}


}

/// @nodoc
abstract mixin class $VerificationDetailEntityCopyWith<$Res>  {
  factory $VerificationDetailEntityCopyWith(VerificationDetailEntity value, $Res Function(VerificationDetailEntity) _then) = _$VerificationDetailEntityCopyWithImpl;
@useResult
$Res call({
 bool bleVerified, bool gpsVerified, bool timestampVerified, String? bleDeviceId, double? gpsLatitude, double? gpsLongitude, double? gpsAccuracy, DateTime? actualStartTime, DateTime? actualEndTime, int? actualDuration, int? expectedDuration, bool? manualOverride, String? overrideReason, String? overrideBy
});




}
/// @nodoc
class _$VerificationDetailEntityCopyWithImpl<$Res>
    implements $VerificationDetailEntityCopyWith<$Res> {
  _$VerificationDetailEntityCopyWithImpl(this._self, this._then);

  final VerificationDetailEntity _self;
  final $Res Function(VerificationDetailEntity) _then;

/// Create a copy of VerificationDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bleVerified = null,Object? gpsVerified = null,Object? timestampVerified = null,Object? bleDeviceId = freezed,Object? gpsLatitude = freezed,Object? gpsLongitude = freezed,Object? gpsAccuracy = freezed,Object? actualStartTime = freezed,Object? actualEndTime = freezed,Object? actualDuration = freezed,Object? expectedDuration = freezed,Object? manualOverride = freezed,Object? overrideReason = freezed,Object? overrideBy = freezed,}) {
  return _then(_self.copyWith(
bleVerified: null == bleVerified ? _self.bleVerified : bleVerified // ignore: cast_nullable_to_non_nullable
as bool,gpsVerified: null == gpsVerified ? _self.gpsVerified : gpsVerified // ignore: cast_nullable_to_non_nullable
as bool,timestampVerified: null == timestampVerified ? _self.timestampVerified : timestampVerified // ignore: cast_nullable_to_non_nullable
as bool,bleDeviceId: freezed == bleDeviceId ? _self.bleDeviceId : bleDeviceId // ignore: cast_nullable_to_non_nullable
as String?,gpsLatitude: freezed == gpsLatitude ? _self.gpsLatitude : gpsLatitude // ignore: cast_nullable_to_non_nullable
as double?,gpsLongitude: freezed == gpsLongitude ? _self.gpsLongitude : gpsLongitude // ignore: cast_nullable_to_non_nullable
as double?,gpsAccuracy: freezed == gpsAccuracy ? _self.gpsAccuracy : gpsAccuracy // ignore: cast_nullable_to_non_nullable
as double?,actualStartTime: freezed == actualStartTime ? _self.actualStartTime : actualStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,actualEndTime: freezed == actualEndTime ? _self.actualEndTime : actualEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,actualDuration: freezed == actualDuration ? _self.actualDuration : actualDuration // ignore: cast_nullable_to_non_nullable
as int?,expectedDuration: freezed == expectedDuration ? _self.expectedDuration : expectedDuration // ignore: cast_nullable_to_non_nullable
as int?,manualOverride: freezed == manualOverride ? _self.manualOverride : manualOverride // ignore: cast_nullable_to_non_nullable
as bool?,overrideReason: freezed == overrideReason ? _self.overrideReason : overrideReason // ignore: cast_nullable_to_non_nullable
as String?,overrideBy: freezed == overrideBy ? _self.overrideBy : overrideBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerificationDetailEntity].
extension VerificationDetailEntityPatterns on VerificationDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerificationDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerificationDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerificationDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _VerificationDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerificationDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VerificationDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool bleVerified,  bool gpsVerified,  bool timestampVerified,  String? bleDeviceId,  double? gpsLatitude,  double? gpsLongitude,  double? gpsAccuracy,  DateTime? actualStartTime,  DateTime? actualEndTime,  int? actualDuration,  int? expectedDuration,  bool? manualOverride,  String? overrideReason,  String? overrideBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerificationDetailEntity() when $default != null:
return $default(_that.bleVerified,_that.gpsVerified,_that.timestampVerified,_that.bleDeviceId,_that.gpsLatitude,_that.gpsLongitude,_that.gpsAccuracy,_that.actualStartTime,_that.actualEndTime,_that.actualDuration,_that.expectedDuration,_that.manualOverride,_that.overrideReason,_that.overrideBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool bleVerified,  bool gpsVerified,  bool timestampVerified,  String? bleDeviceId,  double? gpsLatitude,  double? gpsLongitude,  double? gpsAccuracy,  DateTime? actualStartTime,  DateTime? actualEndTime,  int? actualDuration,  int? expectedDuration,  bool? manualOverride,  String? overrideReason,  String? overrideBy)  $default,) {final _that = this;
switch (_that) {
case _VerificationDetailEntity():
return $default(_that.bleVerified,_that.gpsVerified,_that.timestampVerified,_that.bleDeviceId,_that.gpsLatitude,_that.gpsLongitude,_that.gpsAccuracy,_that.actualStartTime,_that.actualEndTime,_that.actualDuration,_that.expectedDuration,_that.manualOverride,_that.overrideReason,_that.overrideBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool bleVerified,  bool gpsVerified,  bool timestampVerified,  String? bleDeviceId,  double? gpsLatitude,  double? gpsLongitude,  double? gpsAccuracy,  DateTime? actualStartTime,  DateTime? actualEndTime,  int? actualDuration,  int? expectedDuration,  bool? manualOverride,  String? overrideReason,  String? overrideBy)?  $default,) {final _that = this;
switch (_that) {
case _VerificationDetailEntity() when $default != null:
return $default(_that.bleVerified,_that.gpsVerified,_that.timestampVerified,_that.bleDeviceId,_that.gpsLatitude,_that.gpsLongitude,_that.gpsAccuracy,_that.actualStartTime,_that.actualEndTime,_that.actualDuration,_that.expectedDuration,_that.manualOverride,_that.overrideReason,_that.overrideBy);case _:
  return null;

}
}

}

/// @nodoc


class _VerificationDetailEntity implements VerificationDetailEntity {
  const _VerificationDetailEntity({required this.bleVerified, required this.gpsVerified, required this.timestampVerified, this.bleDeviceId, this.gpsLatitude, this.gpsLongitude, this.gpsAccuracy, this.actualStartTime, this.actualEndTime, this.actualDuration, this.expectedDuration, this.manualOverride, this.overrideReason, this.overrideBy});
  

@override final  bool bleVerified;
@override final  bool gpsVerified;
@override final  bool timestampVerified;
@override final  String? bleDeviceId;
@override final  double? gpsLatitude;
@override final  double? gpsLongitude;
@override final  double? gpsAccuracy;
@override final  DateTime? actualStartTime;
@override final  DateTime? actualEndTime;
@override final  int? actualDuration;
@override final  int? expectedDuration;
@override final  bool? manualOverride;
@override final  String? overrideReason;
@override final  String? overrideBy;

/// Create a copy of VerificationDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerificationDetailEntityCopyWith<_VerificationDetailEntity> get copyWith => __$VerificationDetailEntityCopyWithImpl<_VerificationDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationDetailEntity&&(identical(other.bleVerified, bleVerified) || other.bleVerified == bleVerified)&&(identical(other.gpsVerified, gpsVerified) || other.gpsVerified == gpsVerified)&&(identical(other.timestampVerified, timestampVerified) || other.timestampVerified == timestampVerified)&&(identical(other.bleDeviceId, bleDeviceId) || other.bleDeviceId == bleDeviceId)&&(identical(other.gpsLatitude, gpsLatitude) || other.gpsLatitude == gpsLatitude)&&(identical(other.gpsLongitude, gpsLongitude) || other.gpsLongitude == gpsLongitude)&&(identical(other.gpsAccuracy, gpsAccuracy) || other.gpsAccuracy == gpsAccuracy)&&(identical(other.actualStartTime, actualStartTime) || other.actualStartTime == actualStartTime)&&(identical(other.actualEndTime, actualEndTime) || other.actualEndTime == actualEndTime)&&(identical(other.actualDuration, actualDuration) || other.actualDuration == actualDuration)&&(identical(other.expectedDuration, expectedDuration) || other.expectedDuration == expectedDuration)&&(identical(other.manualOverride, manualOverride) || other.manualOverride == manualOverride)&&(identical(other.overrideReason, overrideReason) || other.overrideReason == overrideReason)&&(identical(other.overrideBy, overrideBy) || other.overrideBy == overrideBy));
}


@override
int get hashCode => Object.hash(runtimeType,bleVerified,gpsVerified,timestampVerified,bleDeviceId,gpsLatitude,gpsLongitude,gpsAccuracy,actualStartTime,actualEndTime,actualDuration,expectedDuration,manualOverride,overrideReason,overrideBy);

@override
String toString() {
  return 'VerificationDetailEntity(bleVerified: $bleVerified, gpsVerified: $gpsVerified, timestampVerified: $timestampVerified, bleDeviceId: $bleDeviceId, gpsLatitude: $gpsLatitude, gpsLongitude: $gpsLongitude, gpsAccuracy: $gpsAccuracy, actualStartTime: $actualStartTime, actualEndTime: $actualEndTime, actualDuration: $actualDuration, expectedDuration: $expectedDuration, manualOverride: $manualOverride, overrideReason: $overrideReason, overrideBy: $overrideBy)';
}


}

/// @nodoc
abstract mixin class _$VerificationDetailEntityCopyWith<$Res> implements $VerificationDetailEntityCopyWith<$Res> {
  factory _$VerificationDetailEntityCopyWith(_VerificationDetailEntity value, $Res Function(_VerificationDetailEntity) _then) = __$VerificationDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 bool bleVerified, bool gpsVerified, bool timestampVerified, String? bleDeviceId, double? gpsLatitude, double? gpsLongitude, double? gpsAccuracy, DateTime? actualStartTime, DateTime? actualEndTime, int? actualDuration, int? expectedDuration, bool? manualOverride, String? overrideReason, String? overrideBy
});




}
/// @nodoc
class __$VerificationDetailEntityCopyWithImpl<$Res>
    implements _$VerificationDetailEntityCopyWith<$Res> {
  __$VerificationDetailEntityCopyWithImpl(this._self, this._then);

  final _VerificationDetailEntity _self;
  final $Res Function(_VerificationDetailEntity) _then;

/// Create a copy of VerificationDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bleVerified = null,Object? gpsVerified = null,Object? timestampVerified = null,Object? bleDeviceId = freezed,Object? gpsLatitude = freezed,Object? gpsLongitude = freezed,Object? gpsAccuracy = freezed,Object? actualStartTime = freezed,Object? actualEndTime = freezed,Object? actualDuration = freezed,Object? expectedDuration = freezed,Object? manualOverride = freezed,Object? overrideReason = freezed,Object? overrideBy = freezed,}) {
  return _then(_VerificationDetailEntity(
bleVerified: null == bleVerified ? _self.bleVerified : bleVerified // ignore: cast_nullable_to_non_nullable
as bool,gpsVerified: null == gpsVerified ? _self.gpsVerified : gpsVerified // ignore: cast_nullable_to_non_nullable
as bool,timestampVerified: null == timestampVerified ? _self.timestampVerified : timestampVerified // ignore: cast_nullable_to_non_nullable
as bool,bleDeviceId: freezed == bleDeviceId ? _self.bleDeviceId : bleDeviceId // ignore: cast_nullable_to_non_nullable
as String?,gpsLatitude: freezed == gpsLatitude ? _self.gpsLatitude : gpsLatitude // ignore: cast_nullable_to_non_nullable
as double?,gpsLongitude: freezed == gpsLongitude ? _self.gpsLongitude : gpsLongitude // ignore: cast_nullable_to_non_nullable
as double?,gpsAccuracy: freezed == gpsAccuracy ? _self.gpsAccuracy : gpsAccuracy // ignore: cast_nullable_to_non_nullable
as double?,actualStartTime: freezed == actualStartTime ? _self.actualStartTime : actualStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,actualEndTime: freezed == actualEndTime ? _self.actualEndTime : actualEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,actualDuration: freezed == actualDuration ? _self.actualDuration : actualDuration // ignore: cast_nullable_to_non_nullable
as int?,expectedDuration: freezed == expectedDuration ? _self.expectedDuration : expectedDuration // ignore: cast_nullable_to_non_nullable
as int?,manualOverride: freezed == manualOverride ? _self.manualOverride : manualOverride // ignore: cast_nullable_to_non_nullable
as bool?,overrideReason: freezed == overrideReason ? _self.overrideReason : overrideReason // ignore: cast_nullable_to_non_nullable
as String?,overrideBy: freezed == overrideBy ? _self.overrideBy : overrideBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
