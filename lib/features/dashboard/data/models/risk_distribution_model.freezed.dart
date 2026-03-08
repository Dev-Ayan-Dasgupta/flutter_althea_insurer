// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risk_distribution_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RiskDistributionModel {

 String get riskLevel; int get count; double get percentage;
/// Create a copy of RiskDistributionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskDistributionModelCopyWith<RiskDistributionModel> get copyWith => _$RiskDistributionModelCopyWithImpl<RiskDistributionModel>(this as RiskDistributionModel, _$identity);

  /// Serializes this RiskDistributionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskDistributionModel&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.count, count) || other.count == count)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riskLevel,count,percentage);

@override
String toString() {
  return 'RiskDistributionModel(riskLevel: $riskLevel, count: $count, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class $RiskDistributionModelCopyWith<$Res>  {
  factory $RiskDistributionModelCopyWith(RiskDistributionModel value, $Res Function(RiskDistributionModel) _then) = _$RiskDistributionModelCopyWithImpl;
@useResult
$Res call({
 String riskLevel, int count, double percentage
});




}
/// @nodoc
class _$RiskDistributionModelCopyWithImpl<$Res>
    implements $RiskDistributionModelCopyWith<$Res> {
  _$RiskDistributionModelCopyWithImpl(this._self, this._then);

  final RiskDistributionModel _self;
  final $Res Function(RiskDistributionModel) _then;

/// Create a copy of RiskDistributionModel
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


/// Adds pattern-matching-related methods to [RiskDistributionModel].
extension RiskDistributionModelPatterns on RiskDistributionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskDistributionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskDistributionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskDistributionModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskDistributionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskDistributionModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskDistributionModel() when $default != null:
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
case _RiskDistributionModel() when $default != null:
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
case _RiskDistributionModel():
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
case _RiskDistributionModel() when $default != null:
return $default(_that.riskLevel,_that.count,_that.percentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiskDistributionModel extends RiskDistributionModel {
  const _RiskDistributionModel({required this.riskLevel, required this.count, required this.percentage}): super._();
  factory _RiskDistributionModel.fromJson(Map<String, dynamic> json) => _$RiskDistributionModelFromJson(json);

@override final  String riskLevel;
@override final  int count;
@override final  double percentage;

/// Create a copy of RiskDistributionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskDistributionModelCopyWith<_RiskDistributionModel> get copyWith => __$RiskDistributionModelCopyWithImpl<_RiskDistributionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskDistributionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskDistributionModel&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.count, count) || other.count == count)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riskLevel,count,percentage);

@override
String toString() {
  return 'RiskDistributionModel(riskLevel: $riskLevel, count: $count, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class _$RiskDistributionModelCopyWith<$Res> implements $RiskDistributionModelCopyWith<$Res> {
  factory _$RiskDistributionModelCopyWith(_RiskDistributionModel value, $Res Function(_RiskDistributionModel) _then) = __$RiskDistributionModelCopyWithImpl;
@override @useResult
$Res call({
 String riskLevel, int count, double percentage
});




}
/// @nodoc
class __$RiskDistributionModelCopyWithImpl<$Res>
    implements _$RiskDistributionModelCopyWith<$Res> {
  __$RiskDistributionModelCopyWithImpl(this._self, this._then);

  final _RiskDistributionModel _self;
  final $Res Function(_RiskDistributionModel) _then;

/// Create a copy of RiskDistributionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? riskLevel = null,Object? count = null,Object? percentage = null,}) {
  return _then(_RiskDistributionModel(
riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
