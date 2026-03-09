// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_trend_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HealthTrendEntity {

 String get id; String get metricName; String get category; TrendDirection get direction; double get currentValue; double get changePercentage; List<TrendDataPoint> get quarterlyData; String get insight;
/// Create a copy of HealthTrendEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthTrendEntityCopyWith<HealthTrendEntity> get copyWith => _$HealthTrendEntityCopyWithImpl<HealthTrendEntity>(this as HealthTrendEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthTrendEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.metricName, metricName) || other.metricName == metricName)&&(identical(other.category, category) || other.category == category)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.changePercentage, changePercentage) || other.changePercentage == changePercentage)&&const DeepCollectionEquality().equals(other.quarterlyData, quarterlyData)&&(identical(other.insight, insight) || other.insight == insight));
}


@override
int get hashCode => Object.hash(runtimeType,id,metricName,category,direction,currentValue,changePercentage,const DeepCollectionEquality().hash(quarterlyData),insight);

@override
String toString() {
  return 'HealthTrendEntity(id: $id, metricName: $metricName, category: $category, direction: $direction, currentValue: $currentValue, changePercentage: $changePercentage, quarterlyData: $quarterlyData, insight: $insight)';
}


}

/// @nodoc
abstract mixin class $HealthTrendEntityCopyWith<$Res>  {
  factory $HealthTrendEntityCopyWith(HealthTrendEntity value, $Res Function(HealthTrendEntity) _then) = _$HealthTrendEntityCopyWithImpl;
@useResult
$Res call({
 String id, String metricName, String category, TrendDirection direction, double currentValue, double changePercentage, List<TrendDataPoint> quarterlyData, String insight
});




}
/// @nodoc
class _$HealthTrendEntityCopyWithImpl<$Res>
    implements $HealthTrendEntityCopyWith<$Res> {
  _$HealthTrendEntityCopyWithImpl(this._self, this._then);

  final HealthTrendEntity _self;
  final $Res Function(HealthTrendEntity) _then;

/// Create a copy of HealthTrendEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? metricName = null,Object? category = null,Object? direction = null,Object? currentValue = null,Object? changePercentage = null,Object? quarterlyData = null,Object? insight = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,metricName: null == metricName ? _self.metricName : metricName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as TrendDirection,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as double,changePercentage: null == changePercentage ? _self.changePercentage : changePercentage // ignore: cast_nullable_to_non_nullable
as double,quarterlyData: null == quarterlyData ? _self.quarterlyData : quarterlyData // ignore: cast_nullable_to_non_nullable
as List<TrendDataPoint>,insight: null == insight ? _self.insight : insight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthTrendEntity].
extension HealthTrendEntityPatterns on HealthTrendEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthTrendEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthTrendEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthTrendEntity value)  $default,){
final _that = this;
switch (_that) {
case _HealthTrendEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthTrendEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HealthTrendEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String metricName,  String category,  TrendDirection direction,  double currentValue,  double changePercentage,  List<TrendDataPoint> quarterlyData,  String insight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthTrendEntity() when $default != null:
return $default(_that.id,_that.metricName,_that.category,_that.direction,_that.currentValue,_that.changePercentage,_that.quarterlyData,_that.insight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String metricName,  String category,  TrendDirection direction,  double currentValue,  double changePercentage,  List<TrendDataPoint> quarterlyData,  String insight)  $default,) {final _that = this;
switch (_that) {
case _HealthTrendEntity():
return $default(_that.id,_that.metricName,_that.category,_that.direction,_that.currentValue,_that.changePercentage,_that.quarterlyData,_that.insight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String metricName,  String category,  TrendDirection direction,  double currentValue,  double changePercentage,  List<TrendDataPoint> quarterlyData,  String insight)?  $default,) {final _that = this;
switch (_that) {
case _HealthTrendEntity() when $default != null:
return $default(_that.id,_that.metricName,_that.category,_that.direction,_that.currentValue,_that.changePercentage,_that.quarterlyData,_that.insight);case _:
  return null;

}
}

}

/// @nodoc


class _HealthTrendEntity implements HealthTrendEntity {
  const _HealthTrendEntity({required this.id, required this.metricName, required this.category, required this.direction, required this.currentValue, required this.changePercentage, required final  List<TrendDataPoint> quarterlyData, required this.insight}): _quarterlyData = quarterlyData;
  

@override final  String id;
@override final  String metricName;
@override final  String category;
@override final  TrendDirection direction;
@override final  double currentValue;
@override final  double changePercentage;
 final  List<TrendDataPoint> _quarterlyData;
@override List<TrendDataPoint> get quarterlyData {
  if (_quarterlyData is EqualUnmodifiableListView) return _quarterlyData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_quarterlyData);
}

@override final  String insight;

/// Create a copy of HealthTrendEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthTrendEntityCopyWith<_HealthTrendEntity> get copyWith => __$HealthTrendEntityCopyWithImpl<_HealthTrendEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthTrendEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.metricName, metricName) || other.metricName == metricName)&&(identical(other.category, category) || other.category == category)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.changePercentage, changePercentage) || other.changePercentage == changePercentage)&&const DeepCollectionEquality().equals(other._quarterlyData, _quarterlyData)&&(identical(other.insight, insight) || other.insight == insight));
}


@override
int get hashCode => Object.hash(runtimeType,id,metricName,category,direction,currentValue,changePercentage,const DeepCollectionEquality().hash(_quarterlyData),insight);

@override
String toString() {
  return 'HealthTrendEntity(id: $id, metricName: $metricName, category: $category, direction: $direction, currentValue: $currentValue, changePercentage: $changePercentage, quarterlyData: $quarterlyData, insight: $insight)';
}


}

/// @nodoc
abstract mixin class _$HealthTrendEntityCopyWith<$Res> implements $HealthTrendEntityCopyWith<$Res> {
  factory _$HealthTrendEntityCopyWith(_HealthTrendEntity value, $Res Function(_HealthTrendEntity) _then) = __$HealthTrendEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String metricName, String category, TrendDirection direction, double currentValue, double changePercentage, List<TrendDataPoint> quarterlyData, String insight
});




}
/// @nodoc
class __$HealthTrendEntityCopyWithImpl<$Res>
    implements _$HealthTrendEntityCopyWith<$Res> {
  __$HealthTrendEntityCopyWithImpl(this._self, this._then);

  final _HealthTrendEntity _self;
  final $Res Function(_HealthTrendEntity) _then;

/// Create a copy of HealthTrendEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? metricName = null,Object? category = null,Object? direction = null,Object? currentValue = null,Object? changePercentage = null,Object? quarterlyData = null,Object? insight = null,}) {
  return _then(_HealthTrendEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,metricName: null == metricName ? _self.metricName : metricName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as TrendDirection,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as double,changePercentage: null == changePercentage ? _self.changePercentage : changePercentage // ignore: cast_nullable_to_non_nullable
as double,quarterlyData: null == quarterlyData ? _self._quarterlyData : quarterlyData // ignore: cast_nullable_to_non_nullable
as List<TrendDataPoint>,insight: null == insight ? _self.insight : insight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TrendDataPoint {

 String get quarter; double get value; DateTime get date;
/// Create a copy of TrendDataPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendDataPointCopyWith<TrendDataPoint> get copyWith => _$TrendDataPointCopyWithImpl<TrendDataPoint>(this as TrendDataPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrendDataPoint&&(identical(other.quarter, quarter) || other.quarter == quarter)&&(identical(other.value, value) || other.value == value)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,quarter,value,date);

@override
String toString() {
  return 'TrendDataPoint(quarter: $quarter, value: $value, date: $date)';
}


}

/// @nodoc
abstract mixin class $TrendDataPointCopyWith<$Res>  {
  factory $TrendDataPointCopyWith(TrendDataPoint value, $Res Function(TrendDataPoint) _then) = _$TrendDataPointCopyWithImpl;
@useResult
$Res call({
 String quarter, double value, DateTime date
});




}
/// @nodoc
class _$TrendDataPointCopyWithImpl<$Res>
    implements $TrendDataPointCopyWith<$Res> {
  _$TrendDataPointCopyWithImpl(this._self, this._then);

  final TrendDataPoint _self;
  final $Res Function(TrendDataPoint) _then;

/// Create a copy of TrendDataPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quarter = null,Object? value = null,Object? date = null,}) {
  return _then(_self.copyWith(
quarter: null == quarter ? _self.quarter : quarter // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TrendDataPoint].
extension TrendDataPointPatterns on TrendDataPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrendDataPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrendDataPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrendDataPoint value)  $default,){
final _that = this;
switch (_that) {
case _TrendDataPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrendDataPoint value)?  $default,){
final _that = this;
switch (_that) {
case _TrendDataPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String quarter,  double value,  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrendDataPoint() when $default != null:
return $default(_that.quarter,_that.value,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String quarter,  double value,  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _TrendDataPoint():
return $default(_that.quarter,_that.value,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String quarter,  double value,  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _TrendDataPoint() when $default != null:
return $default(_that.quarter,_that.value,_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _TrendDataPoint implements TrendDataPoint {
  const _TrendDataPoint({required this.quarter, required this.value, required this.date});
  

@override final  String quarter;
@override final  double value;
@override final  DateTime date;

/// Create a copy of TrendDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendDataPointCopyWith<_TrendDataPoint> get copyWith => __$TrendDataPointCopyWithImpl<_TrendDataPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrendDataPoint&&(identical(other.quarter, quarter) || other.quarter == quarter)&&(identical(other.value, value) || other.value == value)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,quarter,value,date);

@override
String toString() {
  return 'TrendDataPoint(quarter: $quarter, value: $value, date: $date)';
}


}

/// @nodoc
abstract mixin class _$TrendDataPointCopyWith<$Res> implements $TrendDataPointCopyWith<$Res> {
  factory _$TrendDataPointCopyWith(_TrendDataPoint value, $Res Function(_TrendDataPoint) _then) = __$TrendDataPointCopyWithImpl;
@override @useResult
$Res call({
 String quarter, double value, DateTime date
});




}
/// @nodoc
class __$TrendDataPointCopyWithImpl<$Res>
    implements _$TrendDataPointCopyWith<$Res> {
  __$TrendDataPointCopyWithImpl(this._self, this._then);

  final _TrendDataPoint _self;
  final $Res Function(_TrendDataPoint) _then;

/// Create a copy of TrendDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quarter = null,Object? value = null,Object? date = null,}) {
  return _then(_TrendDataPoint(
quarter: null == quarter ? _self.quarter : quarter // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
