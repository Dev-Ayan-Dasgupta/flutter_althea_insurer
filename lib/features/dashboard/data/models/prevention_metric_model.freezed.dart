// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prevention_metric_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreventionMetricModel {

 String get type; int get count; String get period; double get trend;
/// Create a copy of PreventionMetricModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreventionMetricModelCopyWith<PreventionMetricModel> get copyWith => _$PreventionMetricModelCopyWithImpl<PreventionMetricModel>(this as PreventionMetricModel, _$identity);

  /// Serializes this PreventionMetricModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreventionMetricModel&&(identical(other.type, type) || other.type == type)&&(identical(other.count, count) || other.count == count)&&(identical(other.period, period) || other.period == period)&&(identical(other.trend, trend) || other.trend == trend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,count,period,trend);

@override
String toString() {
  return 'PreventionMetricModel(type: $type, count: $count, period: $period, trend: $trend)';
}


}

/// @nodoc
abstract mixin class $PreventionMetricModelCopyWith<$Res>  {
  factory $PreventionMetricModelCopyWith(PreventionMetricModel value, $Res Function(PreventionMetricModel) _then) = _$PreventionMetricModelCopyWithImpl;
@useResult
$Res call({
 String type, int count, String period, double trend
});




}
/// @nodoc
class _$PreventionMetricModelCopyWithImpl<$Res>
    implements $PreventionMetricModelCopyWith<$Res> {
  _$PreventionMetricModelCopyWithImpl(this._self, this._then);

  final PreventionMetricModel _self;
  final $Res Function(PreventionMetricModel) _then;

/// Create a copy of PreventionMetricModel
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


/// Adds pattern-matching-related methods to [PreventionMetricModel].
extension PreventionMetricModelPatterns on PreventionMetricModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreventionMetricModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreventionMetricModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreventionMetricModel value)  $default,){
final _that = this;
switch (_that) {
case _PreventionMetricModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreventionMetricModel value)?  $default,){
final _that = this;
switch (_that) {
case _PreventionMetricModel() when $default != null:
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
case _PreventionMetricModel() when $default != null:
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
case _PreventionMetricModel():
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
case _PreventionMetricModel() when $default != null:
return $default(_that.type,_that.count,_that.period,_that.trend);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PreventionMetricModel extends PreventionMetricModel {
  const _PreventionMetricModel({required this.type, required this.count, required this.period, required this.trend}): super._();
  factory _PreventionMetricModel.fromJson(Map<String, dynamic> json) => _$PreventionMetricModelFromJson(json);

@override final  String type;
@override final  int count;
@override final  String period;
@override final  double trend;

/// Create a copy of PreventionMetricModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreventionMetricModelCopyWith<_PreventionMetricModel> get copyWith => __$PreventionMetricModelCopyWithImpl<_PreventionMetricModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreventionMetricModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreventionMetricModel&&(identical(other.type, type) || other.type == type)&&(identical(other.count, count) || other.count == count)&&(identical(other.period, period) || other.period == period)&&(identical(other.trend, trend) || other.trend == trend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,count,period,trend);

@override
String toString() {
  return 'PreventionMetricModel(type: $type, count: $count, period: $period, trend: $trend)';
}


}

/// @nodoc
abstract mixin class _$PreventionMetricModelCopyWith<$Res> implements $PreventionMetricModelCopyWith<$Res> {
  factory _$PreventionMetricModelCopyWith(_PreventionMetricModel value, $Res Function(_PreventionMetricModel) _then) = __$PreventionMetricModelCopyWithImpl;
@override @useResult
$Res call({
 String type, int count, String period, double trend
});




}
/// @nodoc
class __$PreventionMetricModelCopyWithImpl<$Res>
    implements _$PreventionMetricModelCopyWith<$Res> {
  __$PreventionMetricModelCopyWithImpl(this._self, this._then);

  final _PreventionMetricModel _self;
  final $Res Function(_PreventionMetricModel) _then;

/// Create a copy of PreventionMetricModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? count = null,Object? period = null,Object? trend = null,}) {
  return _then(_PreventionMetricModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
