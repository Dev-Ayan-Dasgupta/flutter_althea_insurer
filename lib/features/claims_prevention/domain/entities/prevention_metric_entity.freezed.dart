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

 String get id; PreventionType get type; int get count; double get averageCostAvoided; double get totalCostAvoided; DateTime get period; String get description; double get successRate;
/// Create a copy of PreventionMetricEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreventionMetricEntityCopyWith<PreventionMetricEntity> get copyWith => _$PreventionMetricEntityCopyWithImpl<PreventionMetricEntity>(this as PreventionMetricEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreventionMetricEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.count, count) || other.count == count)&&(identical(other.averageCostAvoided, averageCostAvoided) || other.averageCostAvoided == averageCostAvoided)&&(identical(other.totalCostAvoided, totalCostAvoided) || other.totalCostAvoided == totalCostAvoided)&&(identical(other.period, period) || other.period == period)&&(identical(other.description, description) || other.description == description)&&(identical(other.successRate, successRate) || other.successRate == successRate));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,count,averageCostAvoided,totalCostAvoided,period,description,successRate);

@override
String toString() {
  return 'PreventionMetricEntity(id: $id, type: $type, count: $count, averageCostAvoided: $averageCostAvoided, totalCostAvoided: $totalCostAvoided, period: $period, description: $description, successRate: $successRate)';
}


}

/// @nodoc
abstract mixin class $PreventionMetricEntityCopyWith<$Res>  {
  factory $PreventionMetricEntityCopyWith(PreventionMetricEntity value, $Res Function(PreventionMetricEntity) _then) = _$PreventionMetricEntityCopyWithImpl;
@useResult
$Res call({
 String id, PreventionType type, int count, double averageCostAvoided, double totalCostAvoided, DateTime period, String description, double successRate
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? count = null,Object? averageCostAvoided = null,Object? totalCostAvoided = null,Object? period = null,Object? description = null,Object? successRate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PreventionType,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,averageCostAvoided: null == averageCostAvoided ? _self.averageCostAvoided : averageCostAvoided // ignore: cast_nullable_to_non_nullable
as double,totalCostAvoided: null == totalCostAvoided ? _self.totalCostAvoided : totalCostAvoided // ignore: cast_nullable_to_non_nullable
as double,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  PreventionType type,  int count,  double averageCostAvoided,  double totalCostAvoided,  DateTime period,  String description,  double successRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreventionMetricEntity() when $default != null:
return $default(_that.id,_that.type,_that.count,_that.averageCostAvoided,_that.totalCostAvoided,_that.period,_that.description,_that.successRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  PreventionType type,  int count,  double averageCostAvoided,  double totalCostAvoided,  DateTime period,  String description,  double successRate)  $default,) {final _that = this;
switch (_that) {
case _PreventionMetricEntity():
return $default(_that.id,_that.type,_that.count,_that.averageCostAvoided,_that.totalCostAvoided,_that.period,_that.description,_that.successRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  PreventionType type,  int count,  double averageCostAvoided,  double totalCostAvoided,  DateTime period,  String description,  double successRate)?  $default,) {final _that = this;
switch (_that) {
case _PreventionMetricEntity() when $default != null:
return $default(_that.id,_that.type,_that.count,_that.averageCostAvoided,_that.totalCostAvoided,_that.period,_that.description,_that.successRate);case _:
  return null;

}
}

}

/// @nodoc


class _PreventionMetricEntity implements PreventionMetricEntity {
  const _PreventionMetricEntity({required this.id, required this.type, required this.count, required this.averageCostAvoided, required this.totalCostAvoided, required this.period, required this.description, required this.successRate});
  

@override final  String id;
@override final  PreventionType type;
@override final  int count;
@override final  double averageCostAvoided;
@override final  double totalCostAvoided;
@override final  DateTime period;
@override final  String description;
@override final  double successRate;

/// Create a copy of PreventionMetricEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreventionMetricEntityCopyWith<_PreventionMetricEntity> get copyWith => __$PreventionMetricEntityCopyWithImpl<_PreventionMetricEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreventionMetricEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.count, count) || other.count == count)&&(identical(other.averageCostAvoided, averageCostAvoided) || other.averageCostAvoided == averageCostAvoided)&&(identical(other.totalCostAvoided, totalCostAvoided) || other.totalCostAvoided == totalCostAvoided)&&(identical(other.period, period) || other.period == period)&&(identical(other.description, description) || other.description == description)&&(identical(other.successRate, successRate) || other.successRate == successRate));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,count,averageCostAvoided,totalCostAvoided,period,description,successRate);

@override
String toString() {
  return 'PreventionMetricEntity(id: $id, type: $type, count: $count, averageCostAvoided: $averageCostAvoided, totalCostAvoided: $totalCostAvoided, period: $period, description: $description, successRate: $successRate)';
}


}

/// @nodoc
abstract mixin class _$PreventionMetricEntityCopyWith<$Res> implements $PreventionMetricEntityCopyWith<$Res> {
  factory _$PreventionMetricEntityCopyWith(_PreventionMetricEntity value, $Res Function(_PreventionMetricEntity) _then) = __$PreventionMetricEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, PreventionType type, int count, double averageCostAvoided, double totalCostAvoided, DateTime period, String description, double successRate
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? count = null,Object? averageCostAvoided = null,Object? totalCostAvoided = null,Object? period = null,Object? description = null,Object? successRate = null,}) {
  return _then(_PreventionMetricEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PreventionType,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,averageCostAvoided: null == averageCostAvoided ? _self.averageCostAvoided : averageCostAvoided // ignore: cast_nullable_to_non_nullable
as double,totalCostAvoided: null == totalCostAvoided ? _self.totalCostAvoided : totalCostAvoided // ignore: cast_nullable_to_non_nullable
as double,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
