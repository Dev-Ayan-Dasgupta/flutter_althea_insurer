// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cost_avoidance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CostAvoidanceEntity {

 String get period; double get predictedClaims; double get actualClaims; double get avoidedClaims; double get platformCost; double get netSavings; double get roi; int get interventionsPerformed; int get patientsImpacted;
/// Create a copy of CostAvoidanceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CostAvoidanceEntityCopyWith<CostAvoidanceEntity> get copyWith => _$CostAvoidanceEntityCopyWithImpl<CostAvoidanceEntity>(this as CostAvoidanceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CostAvoidanceEntity&&(identical(other.period, period) || other.period == period)&&(identical(other.predictedClaims, predictedClaims) || other.predictedClaims == predictedClaims)&&(identical(other.actualClaims, actualClaims) || other.actualClaims == actualClaims)&&(identical(other.avoidedClaims, avoidedClaims) || other.avoidedClaims == avoidedClaims)&&(identical(other.platformCost, platformCost) || other.platformCost == platformCost)&&(identical(other.netSavings, netSavings) || other.netSavings == netSavings)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.interventionsPerformed, interventionsPerformed) || other.interventionsPerformed == interventionsPerformed)&&(identical(other.patientsImpacted, patientsImpacted) || other.patientsImpacted == patientsImpacted));
}


@override
int get hashCode => Object.hash(runtimeType,period,predictedClaims,actualClaims,avoidedClaims,platformCost,netSavings,roi,interventionsPerformed,patientsImpacted);

@override
String toString() {
  return 'CostAvoidanceEntity(period: $period, predictedClaims: $predictedClaims, actualClaims: $actualClaims, avoidedClaims: $avoidedClaims, platformCost: $platformCost, netSavings: $netSavings, roi: $roi, interventionsPerformed: $interventionsPerformed, patientsImpacted: $patientsImpacted)';
}


}

/// @nodoc
abstract mixin class $CostAvoidanceEntityCopyWith<$Res>  {
  factory $CostAvoidanceEntityCopyWith(CostAvoidanceEntity value, $Res Function(CostAvoidanceEntity) _then) = _$CostAvoidanceEntityCopyWithImpl;
@useResult
$Res call({
 String period, double predictedClaims, double actualClaims, double avoidedClaims, double platformCost, double netSavings, double roi, int interventionsPerformed, int patientsImpacted
});




}
/// @nodoc
class _$CostAvoidanceEntityCopyWithImpl<$Res>
    implements $CostAvoidanceEntityCopyWith<$Res> {
  _$CostAvoidanceEntityCopyWithImpl(this._self, this._then);

  final CostAvoidanceEntity _self;
  final $Res Function(CostAvoidanceEntity) _then;

/// Create a copy of CostAvoidanceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? predictedClaims = null,Object? actualClaims = null,Object? avoidedClaims = null,Object? platformCost = null,Object? netSavings = null,Object? roi = null,Object? interventionsPerformed = null,Object? patientsImpacted = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,predictedClaims: null == predictedClaims ? _self.predictedClaims : predictedClaims // ignore: cast_nullable_to_non_nullable
as double,actualClaims: null == actualClaims ? _self.actualClaims : actualClaims // ignore: cast_nullable_to_non_nullable
as double,avoidedClaims: null == avoidedClaims ? _self.avoidedClaims : avoidedClaims // ignore: cast_nullable_to_non_nullable
as double,platformCost: null == platformCost ? _self.platformCost : platformCost // ignore: cast_nullable_to_non_nullable
as double,netSavings: null == netSavings ? _self.netSavings : netSavings // ignore: cast_nullable_to_non_nullable
as double,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,interventionsPerformed: null == interventionsPerformed ? _self.interventionsPerformed : interventionsPerformed // ignore: cast_nullable_to_non_nullable
as int,patientsImpacted: null == patientsImpacted ? _self.patientsImpacted : patientsImpacted // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CostAvoidanceEntity].
extension CostAvoidanceEntityPatterns on CostAvoidanceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CostAvoidanceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CostAvoidanceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CostAvoidanceEntity value)  $default,){
final _that = this;
switch (_that) {
case _CostAvoidanceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CostAvoidanceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CostAvoidanceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String period,  double predictedClaims,  double actualClaims,  double avoidedClaims,  double platformCost,  double netSavings,  double roi,  int interventionsPerformed,  int patientsImpacted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CostAvoidanceEntity() when $default != null:
return $default(_that.period,_that.predictedClaims,_that.actualClaims,_that.avoidedClaims,_that.platformCost,_that.netSavings,_that.roi,_that.interventionsPerformed,_that.patientsImpacted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String period,  double predictedClaims,  double actualClaims,  double avoidedClaims,  double platformCost,  double netSavings,  double roi,  int interventionsPerformed,  int patientsImpacted)  $default,) {final _that = this;
switch (_that) {
case _CostAvoidanceEntity():
return $default(_that.period,_that.predictedClaims,_that.actualClaims,_that.avoidedClaims,_that.platformCost,_that.netSavings,_that.roi,_that.interventionsPerformed,_that.patientsImpacted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String period,  double predictedClaims,  double actualClaims,  double avoidedClaims,  double platformCost,  double netSavings,  double roi,  int interventionsPerformed,  int patientsImpacted)?  $default,) {final _that = this;
switch (_that) {
case _CostAvoidanceEntity() when $default != null:
return $default(_that.period,_that.predictedClaims,_that.actualClaims,_that.avoidedClaims,_that.platformCost,_that.netSavings,_that.roi,_that.interventionsPerformed,_that.patientsImpacted);case _:
  return null;

}
}

}

/// @nodoc


class _CostAvoidanceEntity implements CostAvoidanceEntity {
  const _CostAvoidanceEntity({required this.period, required this.predictedClaims, required this.actualClaims, required this.avoidedClaims, required this.platformCost, required this.netSavings, required this.roi, required this.interventionsPerformed, required this.patientsImpacted});
  

@override final  String period;
@override final  double predictedClaims;
@override final  double actualClaims;
@override final  double avoidedClaims;
@override final  double platformCost;
@override final  double netSavings;
@override final  double roi;
@override final  int interventionsPerformed;
@override final  int patientsImpacted;

/// Create a copy of CostAvoidanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CostAvoidanceEntityCopyWith<_CostAvoidanceEntity> get copyWith => __$CostAvoidanceEntityCopyWithImpl<_CostAvoidanceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CostAvoidanceEntity&&(identical(other.period, period) || other.period == period)&&(identical(other.predictedClaims, predictedClaims) || other.predictedClaims == predictedClaims)&&(identical(other.actualClaims, actualClaims) || other.actualClaims == actualClaims)&&(identical(other.avoidedClaims, avoidedClaims) || other.avoidedClaims == avoidedClaims)&&(identical(other.platformCost, platformCost) || other.platformCost == platformCost)&&(identical(other.netSavings, netSavings) || other.netSavings == netSavings)&&(identical(other.roi, roi) || other.roi == roi)&&(identical(other.interventionsPerformed, interventionsPerformed) || other.interventionsPerformed == interventionsPerformed)&&(identical(other.patientsImpacted, patientsImpacted) || other.patientsImpacted == patientsImpacted));
}


@override
int get hashCode => Object.hash(runtimeType,period,predictedClaims,actualClaims,avoidedClaims,platformCost,netSavings,roi,interventionsPerformed,patientsImpacted);

@override
String toString() {
  return 'CostAvoidanceEntity(period: $period, predictedClaims: $predictedClaims, actualClaims: $actualClaims, avoidedClaims: $avoidedClaims, platformCost: $platformCost, netSavings: $netSavings, roi: $roi, interventionsPerformed: $interventionsPerformed, patientsImpacted: $patientsImpacted)';
}


}

/// @nodoc
abstract mixin class _$CostAvoidanceEntityCopyWith<$Res> implements $CostAvoidanceEntityCopyWith<$Res> {
  factory _$CostAvoidanceEntityCopyWith(_CostAvoidanceEntity value, $Res Function(_CostAvoidanceEntity) _then) = __$CostAvoidanceEntityCopyWithImpl;
@override @useResult
$Res call({
 String period, double predictedClaims, double actualClaims, double avoidedClaims, double platformCost, double netSavings, double roi, int interventionsPerformed, int patientsImpacted
});




}
/// @nodoc
class __$CostAvoidanceEntityCopyWithImpl<$Res>
    implements _$CostAvoidanceEntityCopyWith<$Res> {
  __$CostAvoidanceEntityCopyWithImpl(this._self, this._then);

  final _CostAvoidanceEntity _self;
  final $Res Function(_CostAvoidanceEntity) _then;

/// Create a copy of CostAvoidanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? predictedClaims = null,Object? actualClaims = null,Object? avoidedClaims = null,Object? platformCost = null,Object? netSavings = null,Object? roi = null,Object? interventionsPerformed = null,Object? patientsImpacted = null,}) {
  return _then(_CostAvoidanceEntity(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,predictedClaims: null == predictedClaims ? _self.predictedClaims : predictedClaims // ignore: cast_nullable_to_non_nullable
as double,actualClaims: null == actualClaims ? _self.actualClaims : actualClaims // ignore: cast_nullable_to_non_nullable
as double,avoidedClaims: null == avoidedClaims ? _self.avoidedClaims : avoidedClaims // ignore: cast_nullable_to_non_nullable
as double,platformCost: null == platformCost ? _self.platformCost : platformCost // ignore: cast_nullable_to_non_nullable
as double,netSavings: null == netSavings ? _self.netSavings : netSavings // ignore: cast_nullable_to_non_nullable
as double,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,interventionsPerformed: null == interventionsPerformed ? _self.interventionsPerformed : interventionsPerformed // ignore: cast_nullable_to_non_nullable
as int,patientsImpacted: null == patientsImpacted ? _self.patientsImpacted : patientsImpacted // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
