// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cluster_stats_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClusterStatsEntity {

 int get totalLives; int get activeLives; int get highRiskPatients; int get ambulancesAvailable; int get nursesOnDuty; int get pharmaciesActive; double get averageResponseTime;
/// Create a copy of ClusterStatsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClusterStatsEntityCopyWith<ClusterStatsEntity> get copyWith => _$ClusterStatsEntityCopyWithImpl<ClusterStatsEntity>(this as ClusterStatsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClusterStatsEntity&&(identical(other.totalLives, totalLives) || other.totalLives == totalLives)&&(identical(other.activeLives, activeLives) || other.activeLives == activeLives)&&(identical(other.highRiskPatients, highRiskPatients) || other.highRiskPatients == highRiskPatients)&&(identical(other.ambulancesAvailable, ambulancesAvailable) || other.ambulancesAvailable == ambulancesAvailable)&&(identical(other.nursesOnDuty, nursesOnDuty) || other.nursesOnDuty == nursesOnDuty)&&(identical(other.pharmaciesActive, pharmaciesActive) || other.pharmaciesActive == pharmaciesActive)&&(identical(other.averageResponseTime, averageResponseTime) || other.averageResponseTime == averageResponseTime));
}


@override
int get hashCode => Object.hash(runtimeType,totalLives,activeLives,highRiskPatients,ambulancesAvailable,nursesOnDuty,pharmaciesActive,averageResponseTime);

@override
String toString() {
  return 'ClusterStatsEntity(totalLives: $totalLives, activeLives: $activeLives, highRiskPatients: $highRiskPatients, ambulancesAvailable: $ambulancesAvailable, nursesOnDuty: $nursesOnDuty, pharmaciesActive: $pharmaciesActive, averageResponseTime: $averageResponseTime)';
}


}

/// @nodoc
abstract mixin class $ClusterStatsEntityCopyWith<$Res>  {
  factory $ClusterStatsEntityCopyWith(ClusterStatsEntity value, $Res Function(ClusterStatsEntity) _then) = _$ClusterStatsEntityCopyWithImpl;
@useResult
$Res call({
 int totalLives, int activeLives, int highRiskPatients, int ambulancesAvailable, int nursesOnDuty, int pharmaciesActive, double averageResponseTime
});




}
/// @nodoc
class _$ClusterStatsEntityCopyWithImpl<$Res>
    implements $ClusterStatsEntityCopyWith<$Res> {
  _$ClusterStatsEntityCopyWithImpl(this._self, this._then);

  final ClusterStatsEntity _self;
  final $Res Function(ClusterStatsEntity) _then;

/// Create a copy of ClusterStatsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalLives = null,Object? activeLives = null,Object? highRiskPatients = null,Object? ambulancesAvailable = null,Object? nursesOnDuty = null,Object? pharmaciesActive = null,Object? averageResponseTime = null,}) {
  return _then(_self.copyWith(
totalLives: null == totalLives ? _self.totalLives : totalLives // ignore: cast_nullable_to_non_nullable
as int,activeLives: null == activeLives ? _self.activeLives : activeLives // ignore: cast_nullable_to_non_nullable
as int,highRiskPatients: null == highRiskPatients ? _self.highRiskPatients : highRiskPatients // ignore: cast_nullable_to_non_nullable
as int,ambulancesAvailable: null == ambulancesAvailable ? _self.ambulancesAvailable : ambulancesAvailable // ignore: cast_nullable_to_non_nullable
as int,nursesOnDuty: null == nursesOnDuty ? _self.nursesOnDuty : nursesOnDuty // ignore: cast_nullable_to_non_nullable
as int,pharmaciesActive: null == pharmaciesActive ? _self.pharmaciesActive : pharmaciesActive // ignore: cast_nullable_to_non_nullable
as int,averageResponseTime: null == averageResponseTime ? _self.averageResponseTime : averageResponseTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ClusterStatsEntity].
extension ClusterStatsEntityPatterns on ClusterStatsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClusterStatsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClusterStatsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClusterStatsEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClusterStatsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClusterStatsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClusterStatsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalLives,  int activeLives,  int highRiskPatients,  int ambulancesAvailable,  int nursesOnDuty,  int pharmaciesActive,  double averageResponseTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClusterStatsEntity() when $default != null:
return $default(_that.totalLives,_that.activeLives,_that.highRiskPatients,_that.ambulancesAvailable,_that.nursesOnDuty,_that.pharmaciesActive,_that.averageResponseTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalLives,  int activeLives,  int highRiskPatients,  int ambulancesAvailable,  int nursesOnDuty,  int pharmaciesActive,  double averageResponseTime)  $default,) {final _that = this;
switch (_that) {
case _ClusterStatsEntity():
return $default(_that.totalLives,_that.activeLives,_that.highRiskPatients,_that.ambulancesAvailable,_that.nursesOnDuty,_that.pharmaciesActive,_that.averageResponseTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalLives,  int activeLives,  int highRiskPatients,  int ambulancesAvailable,  int nursesOnDuty,  int pharmaciesActive,  double averageResponseTime)?  $default,) {final _that = this;
switch (_that) {
case _ClusterStatsEntity() when $default != null:
return $default(_that.totalLives,_that.activeLives,_that.highRiskPatients,_that.ambulancesAvailable,_that.nursesOnDuty,_that.pharmaciesActive,_that.averageResponseTime);case _:
  return null;

}
}

}

/// @nodoc


class _ClusterStatsEntity implements ClusterStatsEntity {
  const _ClusterStatsEntity({required this.totalLives, required this.activeLives, required this.highRiskPatients, required this.ambulancesAvailable, required this.nursesOnDuty, required this.pharmaciesActive, required this.averageResponseTime});
  

@override final  int totalLives;
@override final  int activeLives;
@override final  int highRiskPatients;
@override final  int ambulancesAvailable;
@override final  int nursesOnDuty;
@override final  int pharmaciesActive;
@override final  double averageResponseTime;

/// Create a copy of ClusterStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClusterStatsEntityCopyWith<_ClusterStatsEntity> get copyWith => __$ClusterStatsEntityCopyWithImpl<_ClusterStatsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClusterStatsEntity&&(identical(other.totalLives, totalLives) || other.totalLives == totalLives)&&(identical(other.activeLives, activeLives) || other.activeLives == activeLives)&&(identical(other.highRiskPatients, highRiskPatients) || other.highRiskPatients == highRiskPatients)&&(identical(other.ambulancesAvailable, ambulancesAvailable) || other.ambulancesAvailable == ambulancesAvailable)&&(identical(other.nursesOnDuty, nursesOnDuty) || other.nursesOnDuty == nursesOnDuty)&&(identical(other.pharmaciesActive, pharmaciesActive) || other.pharmaciesActive == pharmaciesActive)&&(identical(other.averageResponseTime, averageResponseTime) || other.averageResponseTime == averageResponseTime));
}


@override
int get hashCode => Object.hash(runtimeType,totalLives,activeLives,highRiskPatients,ambulancesAvailable,nursesOnDuty,pharmaciesActive,averageResponseTime);

@override
String toString() {
  return 'ClusterStatsEntity(totalLives: $totalLives, activeLives: $activeLives, highRiskPatients: $highRiskPatients, ambulancesAvailable: $ambulancesAvailable, nursesOnDuty: $nursesOnDuty, pharmaciesActive: $pharmaciesActive, averageResponseTime: $averageResponseTime)';
}


}

/// @nodoc
abstract mixin class _$ClusterStatsEntityCopyWith<$Res> implements $ClusterStatsEntityCopyWith<$Res> {
  factory _$ClusterStatsEntityCopyWith(_ClusterStatsEntity value, $Res Function(_ClusterStatsEntity) _then) = __$ClusterStatsEntityCopyWithImpl;
@override @useResult
$Res call({
 int totalLives, int activeLives, int highRiskPatients, int ambulancesAvailable, int nursesOnDuty, int pharmaciesActive, double averageResponseTime
});




}
/// @nodoc
class __$ClusterStatsEntityCopyWithImpl<$Res>
    implements _$ClusterStatsEntityCopyWith<$Res> {
  __$ClusterStatsEntityCopyWithImpl(this._self, this._then);

  final _ClusterStatsEntity _self;
  final $Res Function(_ClusterStatsEntity) _then;

/// Create a copy of ClusterStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalLives = null,Object? activeLives = null,Object? highRiskPatients = null,Object? ambulancesAvailable = null,Object? nursesOnDuty = null,Object? pharmaciesActive = null,Object? averageResponseTime = null,}) {
  return _then(_ClusterStatsEntity(
totalLives: null == totalLives ? _self.totalLives : totalLives // ignore: cast_nullable_to_non_nullable
as int,activeLives: null == activeLives ? _self.activeLives : activeLives // ignore: cast_nullable_to_non_nullable
as int,highRiskPatients: null == highRiskPatients ? _self.highRiskPatients : highRiskPatients // ignore: cast_nullable_to_non_nullable
as int,ambulancesAvailable: null == ambulancesAvailable ? _self.ambulancesAvailable : ambulancesAvailable // ignore: cast_nullable_to_non_nullable
as int,nursesOnDuty: null == nursesOnDuty ? _self.nursesOnDuty : nursesOnDuty // ignore: cast_nullable_to_non_nullable
as int,pharmaciesActive: null == pharmaciesActive ? _self.pharmaciesActive : pharmaciesActive // ignore: cast_nullable_to_non_nullable
as int,averageResponseTime: null == averageResponseTime ? _self.averageResponseTime : averageResponseTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
