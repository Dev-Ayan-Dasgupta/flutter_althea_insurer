// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_impact_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinancialImpactEntity {

 double get hospitalizationsAvoided; double get averageClaimCost; double get totalSavings; double get platformRevenue; double get roi;
/// Create a copy of FinancialImpactEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialImpactEntityCopyWith<FinancialImpactEntity> get copyWith => _$FinancialImpactEntityCopyWithImpl<FinancialImpactEntity>(this as FinancialImpactEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialImpactEntity&&(identical(other.hospitalizationsAvoided, hospitalizationsAvoided) || other.hospitalizationsAvoided == hospitalizationsAvoided)&&(identical(other.averageClaimCost, averageClaimCost) || other.averageClaimCost == averageClaimCost)&&(identical(other.totalSavings, totalSavings) || other.totalSavings == totalSavings)&&(identical(other.platformRevenue, platformRevenue) || other.platformRevenue == platformRevenue)&&(identical(other.roi, roi) || other.roi == roi));
}


@override
int get hashCode => Object.hash(runtimeType,hospitalizationsAvoided,averageClaimCost,totalSavings,platformRevenue,roi);

@override
String toString() {
  return 'FinancialImpactEntity(hospitalizationsAvoided: $hospitalizationsAvoided, averageClaimCost: $averageClaimCost, totalSavings: $totalSavings, platformRevenue: $platformRevenue, roi: $roi)';
}


}

/// @nodoc
abstract mixin class $FinancialImpactEntityCopyWith<$Res>  {
  factory $FinancialImpactEntityCopyWith(FinancialImpactEntity value, $Res Function(FinancialImpactEntity) _then) = _$FinancialImpactEntityCopyWithImpl;
@useResult
$Res call({
 double hospitalizationsAvoided, double averageClaimCost, double totalSavings, double platformRevenue, double roi
});




}
/// @nodoc
class _$FinancialImpactEntityCopyWithImpl<$Res>
    implements $FinancialImpactEntityCopyWith<$Res> {
  _$FinancialImpactEntityCopyWithImpl(this._self, this._then);

  final FinancialImpactEntity _self;
  final $Res Function(FinancialImpactEntity) _then;

/// Create a copy of FinancialImpactEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hospitalizationsAvoided = null,Object? averageClaimCost = null,Object? totalSavings = null,Object? platformRevenue = null,Object? roi = null,}) {
  return _then(_self.copyWith(
hospitalizationsAvoided: null == hospitalizationsAvoided ? _self.hospitalizationsAvoided : hospitalizationsAvoided // ignore: cast_nullable_to_non_nullable
as double,averageClaimCost: null == averageClaimCost ? _self.averageClaimCost : averageClaimCost // ignore: cast_nullable_to_non_nullable
as double,totalSavings: null == totalSavings ? _self.totalSavings : totalSavings // ignore: cast_nullable_to_non_nullable
as double,platformRevenue: null == platformRevenue ? _self.platformRevenue : platformRevenue // ignore: cast_nullable_to_non_nullable
as double,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancialImpactEntity].
extension FinancialImpactEntityPatterns on FinancialImpactEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialImpactEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialImpactEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialImpactEntity value)  $default,){
final _that = this;
switch (_that) {
case _FinancialImpactEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialImpactEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialImpactEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double hospitalizationsAvoided,  double averageClaimCost,  double totalSavings,  double platformRevenue,  double roi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialImpactEntity() when $default != null:
return $default(_that.hospitalizationsAvoided,_that.averageClaimCost,_that.totalSavings,_that.platformRevenue,_that.roi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double hospitalizationsAvoided,  double averageClaimCost,  double totalSavings,  double platformRevenue,  double roi)  $default,) {final _that = this;
switch (_that) {
case _FinancialImpactEntity():
return $default(_that.hospitalizationsAvoided,_that.averageClaimCost,_that.totalSavings,_that.platformRevenue,_that.roi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double hospitalizationsAvoided,  double averageClaimCost,  double totalSavings,  double platformRevenue,  double roi)?  $default,) {final _that = this;
switch (_that) {
case _FinancialImpactEntity() when $default != null:
return $default(_that.hospitalizationsAvoided,_that.averageClaimCost,_that.totalSavings,_that.platformRevenue,_that.roi);case _:
  return null;

}
}

}

/// @nodoc


class _FinancialImpactEntity implements FinancialImpactEntity {
  const _FinancialImpactEntity({required this.hospitalizationsAvoided, required this.averageClaimCost, required this.totalSavings, required this.platformRevenue, required this.roi});
  

@override final  double hospitalizationsAvoided;
@override final  double averageClaimCost;
@override final  double totalSavings;
@override final  double platformRevenue;
@override final  double roi;

/// Create a copy of FinancialImpactEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialImpactEntityCopyWith<_FinancialImpactEntity> get copyWith => __$FinancialImpactEntityCopyWithImpl<_FinancialImpactEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialImpactEntity&&(identical(other.hospitalizationsAvoided, hospitalizationsAvoided) || other.hospitalizationsAvoided == hospitalizationsAvoided)&&(identical(other.averageClaimCost, averageClaimCost) || other.averageClaimCost == averageClaimCost)&&(identical(other.totalSavings, totalSavings) || other.totalSavings == totalSavings)&&(identical(other.platformRevenue, platformRevenue) || other.platformRevenue == platformRevenue)&&(identical(other.roi, roi) || other.roi == roi));
}


@override
int get hashCode => Object.hash(runtimeType,hospitalizationsAvoided,averageClaimCost,totalSavings,platformRevenue,roi);

@override
String toString() {
  return 'FinancialImpactEntity(hospitalizationsAvoided: $hospitalizationsAvoided, averageClaimCost: $averageClaimCost, totalSavings: $totalSavings, platformRevenue: $platformRevenue, roi: $roi)';
}


}

/// @nodoc
abstract mixin class _$FinancialImpactEntityCopyWith<$Res> implements $FinancialImpactEntityCopyWith<$Res> {
  factory _$FinancialImpactEntityCopyWith(_FinancialImpactEntity value, $Res Function(_FinancialImpactEntity) _then) = __$FinancialImpactEntityCopyWithImpl;
@override @useResult
$Res call({
 double hospitalizationsAvoided, double averageClaimCost, double totalSavings, double platformRevenue, double roi
});




}
/// @nodoc
class __$FinancialImpactEntityCopyWithImpl<$Res>
    implements _$FinancialImpactEntityCopyWith<$Res> {
  __$FinancialImpactEntityCopyWithImpl(this._self, this._then);

  final _FinancialImpactEntity _self;
  final $Res Function(_FinancialImpactEntity) _then;

/// Create a copy of FinancialImpactEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hospitalizationsAvoided = null,Object? averageClaimCost = null,Object? totalSavings = null,Object? platformRevenue = null,Object? roi = null,}) {
  return _then(_FinancialImpactEntity(
hospitalizationsAvoided: null == hospitalizationsAvoided ? _self.hospitalizationsAvoided : hospitalizationsAvoided // ignore: cast_nullable_to_non_nullable
as double,averageClaimCost: null == averageClaimCost ? _self.averageClaimCost : averageClaimCost // ignore: cast_nullable_to_non_nullable
as double,totalSavings: null == totalSavings ? _self.totalSavings : totalSavings // ignore: cast_nullable_to_non_nullable
as double,platformRevenue: null == platformRevenue ? _self.platformRevenue : platformRevenue // ignore: cast_nullable_to_non_nullable
as double,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
