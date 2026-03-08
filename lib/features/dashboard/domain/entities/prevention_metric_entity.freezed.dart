// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prevention_metric_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PreventionMetricEntity {

 String get type; int get count; String get period; double get trend;
/// Create a copy of PreventionMetricEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreventionMetricEntityCopyWith<PreventionMetricEntity> get copyWith => _$PreventionMetricEntityCopyWithImpl<PreventionMetricEntity>(this as PreventionMetricEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreventionMetricEntity&&(identical(other.type, type) || other.type == type)&&(identical(other.count, count) || other.count == count)&&(identical(other.period, period) || other.period == period)&&(identical(other.trend, trend) || other.trend == trend));
}


@override
int get hashCode => Object.hash(runtimeType,type,count,period,trend);

@override
String toString() {
  return 'PreventionMetricEntity(type: $type, count: $count, period: $period, trend: $trend)';
}


}

/// @nodoc
abstract mixin class $PreventionMetricEntityCopyWith<$Res>  {
  factory $PreventionMetricEntityCopyWith(PreventionMetricEntity value, $Res Function(PreventionMetricEntity) _then) = _$PreventionMetricEntityCopyWithImpl;
@useResult
$Res call({
 String type, int count, String period, double trend
});




}
/// @nodoc
class _$PreventionMetricEntityCopyWithImpl<$Res>
    implements $PreventionMetricEntityCopyWith<$Res> {
  _$PreventionMetricEntityCopyWithImpl(this._self, this._then);

  final PreventionMetricEntity _self;
  final $Res Function(PreventionMetricEntity) _then;

/// Create a copy of PreventionMetricEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? count = null,Object? period = null,Object? trend = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PreventionMetricEntity].
extension PreventionMetricEntityPatterns on PreventionMetricEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreventionMetricEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreventionMetricEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreventionMetricEntity value)  $default,){
final _that = this;
switch (_that) {
case _PreventionMetricEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreventionMetricEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PreventionMetricEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  int count,  String period,  double trend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreventionMetricEntity() when $default != null:
return $default(_that.type,_that.count,_that.period,_that.trend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  int count,  String period,  double trend)  $default,) {final _that = this;
switch (_that) {
case _PreventionMetricEntity():
return $default(_that.type,_that.count,_that.period,_that.trend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  int count,  String period,  double trend)?  $default,) {final _that = this;
switch (_that) {
case _PreventionMetricEntity() when $default != null:
return $default(_that.type,_that.count,_that.period,_that.trend);case _:
  return null;

}
}

}

/// @nodoc


class _PreventionMetricEntity implements PreventionMetricEntity {
  const _PreventionMetricEntity({required this.type, required this.count, required this.period, required this.trend});
  

@override final  String type;
@override final  int count;
@override final  String period;
@override final  double trend;

/// Create a copy of PreventionMetricEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreventionMetricEntityCopyWith<_PreventionMetricEntity> get copyWith => __$PreventionMetricEntityCopyWithImpl<_PreventionMetricEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreventionMetricEntity&&(identical(other.type, type) || other.type == type)&&(identical(other.count, count) || other.count == count)&&(identical(other.period, period) || other.period == period)&&(identical(other.trend, trend) || other.trend == trend));
}


@override
int get hashCode => Object.hash(runtimeType,type,count,period,trend);

@override
String toString() {
  return 'PreventionMetricEntity(type: $type, count: $count, period: $period, trend: $trend)';
}


}

/// @nodoc
abstract mixin class _$PreventionMetricEntityCopyWith<$Res> implements $PreventionMetricEntityCopyWith<$Res> {
  factory _$PreventionMetricEntityCopyWith(_PreventionMetricEntity value, $Res Function(_PreventionMetricEntity) _then) = __$PreventionMetricEntityCopyWithImpl;
@override @useResult
$Res call({
 String type, int count, String period, double trend
});




}
/// @nodoc
class __$PreventionMetricEntityCopyWithImpl<$Res>
    implements _$PreventionMetricEntityCopyWith<$Res> {
  __$PreventionMetricEntityCopyWithImpl(this._self, this._then);

  final _PreventionMetricEntity _self;
  final $Res Function(_PreventionMetricEntity) _then;

/// Create a copy of PreventionMetricEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? count = null,Object? period = null,Object? trend = null,}) {
  return _then(_PreventionMetricEntity(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
