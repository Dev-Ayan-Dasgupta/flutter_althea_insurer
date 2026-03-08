// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risk_distribution_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RiskDistributionEntity {

 String get riskLevel; int get count; double get percentage;
/// Create a copy of RiskDistributionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskDistributionEntityCopyWith<RiskDistributionEntity> get copyWith => _$RiskDistributionEntityCopyWithImpl<RiskDistributionEntity>(this as RiskDistributionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskDistributionEntity&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.count, count) || other.count == count)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}


@override
int get hashCode => Object.hash(runtimeType,riskLevel,count,percentage);

@override
String toString() {
  return 'RiskDistributionEntity(riskLevel: $riskLevel, count: $count, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class $RiskDistributionEntityCopyWith<$Res>  {
  factory $RiskDistributionEntityCopyWith(RiskDistributionEntity value, $Res Function(RiskDistributionEntity) _then) = _$RiskDistributionEntityCopyWithImpl;
@useResult
$Res call({
 String riskLevel, int count, double percentage
});




}
/// @nodoc
class _$RiskDistributionEntityCopyWithImpl<$Res>
    implements $RiskDistributionEntityCopyWith<$Res> {
  _$RiskDistributionEntityCopyWithImpl(this._self, this._then);

  final RiskDistributionEntity _self;
  final $Res Function(RiskDistributionEntity) _then;

/// Create a copy of RiskDistributionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? riskLevel = null,Object? count = null,Object? percentage = null,}) {
  return _then(_self.copyWith(
riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskDistributionEntity].
extension RiskDistributionEntityPatterns on RiskDistributionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskDistributionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskDistributionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskDistributionEntity value)  $default,){
final _that = this;
switch (_that) {
case _RiskDistributionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskDistributionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RiskDistributionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String riskLevel,  int count,  double percentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskDistributionEntity() when $default != null:
return $default(_that.riskLevel,_that.count,_that.percentage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String riskLevel,  int count,  double percentage)  $default,) {final _that = this;
switch (_that) {
case _RiskDistributionEntity():
return $default(_that.riskLevel,_that.count,_that.percentage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String riskLevel,  int count,  double percentage)?  $default,) {final _that = this;
switch (_that) {
case _RiskDistributionEntity() when $default != null:
return $default(_that.riskLevel,_that.count,_that.percentage);case _:
  return null;

}
}

}

/// @nodoc


class _RiskDistributionEntity implements RiskDistributionEntity {
  const _RiskDistributionEntity({required this.riskLevel, required this.count, required this.percentage});
  

@override final  String riskLevel;
@override final  int count;
@override final  double percentage;

/// Create a copy of RiskDistributionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskDistributionEntityCopyWith<_RiskDistributionEntity> get copyWith => __$RiskDistributionEntityCopyWithImpl<_RiskDistributionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskDistributionEntity&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.count, count) || other.count == count)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}


@override
int get hashCode => Object.hash(runtimeType,riskLevel,count,percentage);

@override
String toString() {
  return 'RiskDistributionEntity(riskLevel: $riskLevel, count: $count, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class _$RiskDistributionEntityCopyWith<$Res> implements $RiskDistributionEntityCopyWith<$Res> {
  factory _$RiskDistributionEntityCopyWith(_RiskDistributionEntity value, $Res Function(_RiskDistributionEntity) _then) = __$RiskDistributionEntityCopyWithImpl;
@override @useResult
$Res call({
 String riskLevel, int count, double percentage
});




}
/// @nodoc
class __$RiskDistributionEntityCopyWithImpl<$Res>
    implements _$RiskDistributionEntityCopyWith<$Res> {
  __$RiskDistributionEntityCopyWithImpl(this._self, this._then);

  final _RiskDistributionEntity _self;
  final $Res Function(_RiskDistributionEntity) _then;

/// Create a copy of RiskDistributionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? riskLevel = null,Object? count = null,Object? percentage = null,}) {
  return _then(_RiskDistributionEntity(
riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
