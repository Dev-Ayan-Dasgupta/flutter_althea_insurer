// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cluster_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClusterStatsModel {

 int get totalLives; int get activeLives; int get highRiskPatients; int get ambulancesAvailable; int get nursesOnDuty; int get pharmaciesActive; double get averageResponseTime;
/// Create a copy of ClusterStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClusterStatsModelCopyWith<ClusterStatsModel> get copyWith => _$ClusterStatsModelCopyWithImpl<ClusterStatsModel>(this as ClusterStatsModel, _$identity);

  /// Serializes this ClusterStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClusterStatsModel&&(identical(other.totalLives, totalLives) || other.totalLives == totalLives)&&(identical(other.activeLives, activeLives) || other.activeLives == activeLives)&&(identical(other.highRiskPatients, highRiskPatients) || other.highRiskPatients == highRiskPatients)&&(identical(other.ambulancesAvailable, ambulancesAvailable) || other.ambulancesAvailable == ambulancesAvailable)&&(identical(other.nursesOnDuty, nursesOnDuty) || other.nursesOnDuty == nursesOnDuty)&&(identical(other.pharmaciesActive, pharmaciesActive) || other.pharmaciesActive == pharmaciesActive)&&(identical(other.averageResponseTime, averageResponseTime) || other.averageResponseTime == averageResponseTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalLives,activeLives,highRiskPatients,ambulancesAvailable,nursesOnDuty,pharmaciesActive,averageResponseTime);

@override
String toString() {
  return 'ClusterStatsModel(totalLives: $totalLives, activeLives: $activeLives, highRiskPatients: $highRiskPatients, ambulancesAvailable: $ambulancesAvailable, nursesOnDuty: $nursesOnDuty, pharmaciesActive: $pharmaciesActive, averageResponseTime: $averageResponseTime)';
}


}

/// @nodoc
abstract mixin class $ClusterStatsModelCopyWith<$Res>  {
  factory $ClusterStatsModelCopyWith(ClusterStatsModel value, $Res Function(ClusterStatsModel) _then) = _$ClusterStatsModelCopyWithImpl;
@useResult
$Res call({
 int totalLives, int activeLives, int highRiskPatients, int ambulancesAvailable, int nursesOnDuty, int pharmaciesActive, double averageResponseTime
});




}
/// @nodoc
class _$ClusterStatsModelCopyWithImpl<$Res>
    implements $ClusterStatsModelCopyWith<$Res> {
  _$ClusterStatsModelCopyWithImpl(this._self, this._then);

  final ClusterStatsModel _self;
  final $Res Function(ClusterStatsModel) _then;

/// Create a copy of ClusterStatsModel
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


/// Adds pattern-matching-related methods to [ClusterStatsModel].
extension ClusterStatsModelPatterns on ClusterStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClusterStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClusterStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClusterStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _ClusterStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClusterStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClusterStatsModel() when $default != null:
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
case _ClusterStatsModel() when $default != null:
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
case _ClusterStatsModel():
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
case _ClusterStatsModel() when $default != null:
return $default(_that.totalLives,_that.activeLives,_that.highRiskPatients,_that.ambulancesAvailable,_that.nursesOnDuty,_that.pharmaciesActive,_that.averageResponseTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClusterStatsModel extends ClusterStatsModel {
  const _ClusterStatsModel({required this.totalLives, required this.activeLives, required this.highRiskPatients, required this.ambulancesAvailable, required this.nursesOnDuty, required this.pharmaciesActive, required this.averageResponseTime}): super._();
  factory _ClusterStatsModel.fromJson(Map<String, dynamic> json) => _$ClusterStatsModelFromJson(json);

@override final  int totalLives;
@override final  int activeLives;
@override final  int highRiskPatients;
@override final  int ambulancesAvailable;
@override final  int nursesOnDuty;
@override final  int pharmaciesActive;
@override final  double averageResponseTime;

/// Create a copy of ClusterStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClusterStatsModelCopyWith<_ClusterStatsModel> get copyWith => __$ClusterStatsModelCopyWithImpl<_ClusterStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClusterStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClusterStatsModel&&(identical(other.totalLives, totalLives) || other.totalLives == totalLives)&&(identical(other.activeLives, activeLives) || other.activeLives == activeLives)&&(identical(other.highRiskPatients, highRiskPatients) || other.highRiskPatients == highRiskPatients)&&(identical(other.ambulancesAvailable, ambulancesAvailable) || other.ambulancesAvailable == ambulancesAvailable)&&(identical(other.nursesOnDuty, nursesOnDuty) || other.nursesOnDuty == nursesOnDuty)&&(identical(other.pharmaciesActive, pharmaciesActive) || other.pharmaciesActive == pharmaciesActive)&&(identical(other.averageResponseTime, averageResponseTime) || other.averageResponseTime == averageResponseTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalLives,activeLives,highRiskPatients,ambulancesAvailable,nursesOnDuty,pharmaciesActive,averageResponseTime);

@override
String toString() {
  return 'ClusterStatsModel(totalLives: $totalLives, activeLives: $activeLives, highRiskPatients: $highRiskPatients, ambulancesAvailable: $ambulancesAvailable, nursesOnDuty: $nursesOnDuty, pharmaciesActive: $pharmaciesActive, averageResponseTime: $averageResponseTime)';
}


}

/// @nodoc
abstract mixin class _$ClusterStatsModelCopyWith<$Res> implements $ClusterStatsModelCopyWith<$Res> {
  factory _$ClusterStatsModelCopyWith(_ClusterStatsModel value, $Res Function(_ClusterStatsModel) _then) = __$ClusterStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int totalLives, int activeLives, int highRiskPatients, int ambulancesAvailable, int nursesOnDuty, int pharmaciesActive, double averageResponseTime
});




}
/// @nodoc
class __$ClusterStatsModelCopyWithImpl<$Res>
    implements _$ClusterStatsModelCopyWith<$Res> {
  __$ClusterStatsModelCopyWithImpl(this._self, this._then);

  final _ClusterStatsModel _self;
  final $Res Function(_ClusterStatsModel) _then;

/// Create a copy of ClusterStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalLives = null,Object? activeLives = null,Object? highRiskPatients = null,Object? ambulancesAvailable = null,Object? nursesOnDuty = null,Object? pharmaciesActive = null,Object? averageResponseTime = null,}) {
  return _then(_ClusterStatsModel(
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
