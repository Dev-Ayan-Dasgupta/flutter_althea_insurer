// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coverage_zone_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoverageZoneEntity {

 String get id; String get zoneName; double get centerLatitude; double get centerLongitude; double get radiusKm; int get populationCovered; int get activeAssets; double get coverageScore; int get avgResponseTimeMinutes; bool get hasAdequateCoverage;
/// Create a copy of CoverageZoneEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoverageZoneEntityCopyWith<CoverageZoneEntity> get copyWith => _$CoverageZoneEntityCopyWithImpl<CoverageZoneEntity>(this as CoverageZoneEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoverageZoneEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.zoneName, zoneName) || other.zoneName == zoneName)&&(identical(other.centerLatitude, centerLatitude) || other.centerLatitude == centerLatitude)&&(identical(other.centerLongitude, centerLongitude) || other.centerLongitude == centerLongitude)&&(identical(other.radiusKm, radiusKm) || other.radiusKm == radiusKm)&&(identical(other.populationCovered, populationCovered) || other.populationCovered == populationCovered)&&(identical(other.activeAssets, activeAssets) || other.activeAssets == activeAssets)&&(identical(other.coverageScore, coverageScore) || other.coverageScore == coverageScore)&&(identical(other.avgResponseTimeMinutes, avgResponseTimeMinutes) || other.avgResponseTimeMinutes == avgResponseTimeMinutes)&&(identical(other.hasAdequateCoverage, hasAdequateCoverage) || other.hasAdequateCoverage == hasAdequateCoverage));
}


@override
int get hashCode => Object.hash(runtimeType,id,zoneName,centerLatitude,centerLongitude,radiusKm,populationCovered,activeAssets,coverageScore,avgResponseTimeMinutes,hasAdequateCoverage);

@override
String toString() {
  return 'CoverageZoneEntity(id: $id, zoneName: $zoneName, centerLatitude: $centerLatitude, centerLongitude: $centerLongitude, radiusKm: $radiusKm, populationCovered: $populationCovered, activeAssets: $activeAssets, coverageScore: $coverageScore, avgResponseTimeMinutes: $avgResponseTimeMinutes, hasAdequateCoverage: $hasAdequateCoverage)';
}


}

/// @nodoc
abstract mixin class $CoverageZoneEntityCopyWith<$Res>  {
  factory $CoverageZoneEntityCopyWith(CoverageZoneEntity value, $Res Function(CoverageZoneEntity) _then) = _$CoverageZoneEntityCopyWithImpl;
@useResult
$Res call({
 String id, String zoneName, double centerLatitude, double centerLongitude, double radiusKm, int populationCovered, int activeAssets, double coverageScore, int avgResponseTimeMinutes, bool hasAdequateCoverage
});




}
/// @nodoc
class _$CoverageZoneEntityCopyWithImpl<$Res>
    implements $CoverageZoneEntityCopyWith<$Res> {
  _$CoverageZoneEntityCopyWithImpl(this._self, this._then);

  final CoverageZoneEntity _self;
  final $Res Function(CoverageZoneEntity) _then;

/// Create a copy of CoverageZoneEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? zoneName = null,Object? centerLatitude = null,Object? centerLongitude = null,Object? radiusKm = null,Object? populationCovered = null,Object? activeAssets = null,Object? coverageScore = null,Object? avgResponseTimeMinutes = null,Object? hasAdequateCoverage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,zoneName: null == zoneName ? _self.zoneName : zoneName // ignore: cast_nullable_to_non_nullable
as String,centerLatitude: null == centerLatitude ? _self.centerLatitude : centerLatitude // ignore: cast_nullable_to_non_nullable
as double,centerLongitude: null == centerLongitude ? _self.centerLongitude : centerLongitude // ignore: cast_nullable_to_non_nullable
as double,radiusKm: null == radiusKm ? _self.radiusKm : radiusKm // ignore: cast_nullable_to_non_nullable
as double,populationCovered: null == populationCovered ? _self.populationCovered : populationCovered // ignore: cast_nullable_to_non_nullable
as int,activeAssets: null == activeAssets ? _self.activeAssets : activeAssets // ignore: cast_nullable_to_non_nullable
as int,coverageScore: null == coverageScore ? _self.coverageScore : coverageScore // ignore: cast_nullable_to_non_nullable
as double,avgResponseTimeMinutes: null == avgResponseTimeMinutes ? _self.avgResponseTimeMinutes : avgResponseTimeMinutes // ignore: cast_nullable_to_non_nullable
as int,hasAdequateCoverage: null == hasAdequateCoverage ? _self.hasAdequateCoverage : hasAdequateCoverage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CoverageZoneEntity].
extension CoverageZoneEntityPatterns on CoverageZoneEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoverageZoneEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoverageZoneEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoverageZoneEntity value)  $default,){
final _that = this;
switch (_that) {
case _CoverageZoneEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoverageZoneEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CoverageZoneEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String zoneName,  double centerLatitude,  double centerLongitude,  double radiusKm,  int populationCovered,  int activeAssets,  double coverageScore,  int avgResponseTimeMinutes,  bool hasAdequateCoverage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoverageZoneEntity() when $default != null:
return $default(_that.id,_that.zoneName,_that.centerLatitude,_that.centerLongitude,_that.radiusKm,_that.populationCovered,_that.activeAssets,_that.coverageScore,_that.avgResponseTimeMinutes,_that.hasAdequateCoverage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String zoneName,  double centerLatitude,  double centerLongitude,  double radiusKm,  int populationCovered,  int activeAssets,  double coverageScore,  int avgResponseTimeMinutes,  bool hasAdequateCoverage)  $default,) {final _that = this;
switch (_that) {
case _CoverageZoneEntity():
return $default(_that.id,_that.zoneName,_that.centerLatitude,_that.centerLongitude,_that.radiusKm,_that.populationCovered,_that.activeAssets,_that.coverageScore,_that.avgResponseTimeMinutes,_that.hasAdequateCoverage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String zoneName,  double centerLatitude,  double centerLongitude,  double radiusKm,  int populationCovered,  int activeAssets,  double coverageScore,  int avgResponseTimeMinutes,  bool hasAdequateCoverage)?  $default,) {final _that = this;
switch (_that) {
case _CoverageZoneEntity() when $default != null:
return $default(_that.id,_that.zoneName,_that.centerLatitude,_that.centerLongitude,_that.radiusKm,_that.populationCovered,_that.activeAssets,_that.coverageScore,_that.avgResponseTimeMinutes,_that.hasAdequateCoverage);case _:
  return null;

}
}

}

/// @nodoc


class _CoverageZoneEntity implements CoverageZoneEntity {
  const _CoverageZoneEntity({required this.id, required this.zoneName, required this.centerLatitude, required this.centerLongitude, required this.radiusKm, required this.populationCovered, required this.activeAssets, required this.coverageScore, required this.avgResponseTimeMinutes, required this.hasAdequateCoverage});
  

@override final  String id;
@override final  String zoneName;
@override final  double centerLatitude;
@override final  double centerLongitude;
@override final  double radiusKm;
@override final  int populationCovered;
@override final  int activeAssets;
@override final  double coverageScore;
@override final  int avgResponseTimeMinutes;
@override final  bool hasAdequateCoverage;

/// Create a copy of CoverageZoneEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoverageZoneEntityCopyWith<_CoverageZoneEntity> get copyWith => __$CoverageZoneEntityCopyWithImpl<_CoverageZoneEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoverageZoneEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.zoneName, zoneName) || other.zoneName == zoneName)&&(identical(other.centerLatitude, centerLatitude) || other.centerLatitude == centerLatitude)&&(identical(other.centerLongitude, centerLongitude) || other.centerLongitude == centerLongitude)&&(identical(other.radiusKm, radiusKm) || other.radiusKm == radiusKm)&&(identical(other.populationCovered, populationCovered) || other.populationCovered == populationCovered)&&(identical(other.activeAssets, activeAssets) || other.activeAssets == activeAssets)&&(identical(other.coverageScore, coverageScore) || other.coverageScore == coverageScore)&&(identical(other.avgResponseTimeMinutes, avgResponseTimeMinutes) || other.avgResponseTimeMinutes == avgResponseTimeMinutes)&&(identical(other.hasAdequateCoverage, hasAdequateCoverage) || other.hasAdequateCoverage == hasAdequateCoverage));
}


@override
int get hashCode => Object.hash(runtimeType,id,zoneName,centerLatitude,centerLongitude,radiusKm,populationCovered,activeAssets,coverageScore,avgResponseTimeMinutes,hasAdequateCoverage);

@override
String toString() {
  return 'CoverageZoneEntity(id: $id, zoneName: $zoneName, centerLatitude: $centerLatitude, centerLongitude: $centerLongitude, radiusKm: $radiusKm, populationCovered: $populationCovered, activeAssets: $activeAssets, coverageScore: $coverageScore, avgResponseTimeMinutes: $avgResponseTimeMinutes, hasAdequateCoverage: $hasAdequateCoverage)';
}


}

/// @nodoc
abstract mixin class _$CoverageZoneEntityCopyWith<$Res> implements $CoverageZoneEntityCopyWith<$Res> {
  factory _$CoverageZoneEntityCopyWith(_CoverageZoneEntity value, $Res Function(_CoverageZoneEntity) _then) = __$CoverageZoneEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String zoneName, double centerLatitude, double centerLongitude, double radiusKm, int populationCovered, int activeAssets, double coverageScore, int avgResponseTimeMinutes, bool hasAdequateCoverage
});




}
/// @nodoc
class __$CoverageZoneEntityCopyWithImpl<$Res>
    implements _$CoverageZoneEntityCopyWith<$Res> {
  __$CoverageZoneEntityCopyWithImpl(this._self, this._then);

  final _CoverageZoneEntity _self;
  final $Res Function(_CoverageZoneEntity) _then;

/// Create a copy of CoverageZoneEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? zoneName = null,Object? centerLatitude = null,Object? centerLongitude = null,Object? radiusKm = null,Object? populationCovered = null,Object? activeAssets = null,Object? coverageScore = null,Object? avgResponseTimeMinutes = null,Object? hasAdequateCoverage = null,}) {
  return _then(_CoverageZoneEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,zoneName: null == zoneName ? _self.zoneName : zoneName // ignore: cast_nullable_to_non_nullable
as String,centerLatitude: null == centerLatitude ? _self.centerLatitude : centerLatitude // ignore: cast_nullable_to_non_nullable
as double,centerLongitude: null == centerLongitude ? _self.centerLongitude : centerLongitude // ignore: cast_nullable_to_non_nullable
as double,radiusKm: null == radiusKm ? _self.radiusKm : radiusKm // ignore: cast_nullable_to_non_nullable
as double,populationCovered: null == populationCovered ? _self.populationCovered : populationCovered // ignore: cast_nullable_to_non_nullable
as int,activeAssets: null == activeAssets ? _self.activeAssets : activeAssets // ignore: cast_nullable_to_non_nullable
as int,coverageScore: null == coverageScore ? _self.coverageScore : coverageScore // ignore: cast_nullable_to_non_nullable
as double,avgResponseTimeMinutes: null == avgResponseTimeMinutes ? _self.avgResponseTimeMinutes : avgResponseTimeMinutes // ignore: cast_nullable_to_non_nullable
as int,hasAdequateCoverage: null == hasAdequateCoverage ? _self.hasAdequateCoverage : hasAdequateCoverage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
