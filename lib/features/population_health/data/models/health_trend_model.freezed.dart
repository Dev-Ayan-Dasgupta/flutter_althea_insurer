// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_trend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthTrendModel {

 String get id; String get metricName; String get category; String get direction; double get currentValue; double get changePercentage; List<TrendDataPointModel> get quarterlyData; String get insight;
/// Create a copy of HealthTrendModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthTrendModelCopyWith<HealthTrendModel> get copyWith => _$HealthTrendModelCopyWithImpl<HealthTrendModel>(this as HealthTrendModel, _$identity);

  /// Serializes this HealthTrendModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthTrendModel&&(identical(other.id, id) || other.id == id)&&(identical(other.metricName, metricName) || other.metricName == metricName)&&(identical(other.category, category) || other.category == category)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.changePercentage, changePercentage) || other.changePercentage == changePercentage)&&const DeepCollectionEquality().equals(other.quarterlyData, quarterlyData)&&(identical(other.insight, insight) || other.insight == insight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,metricName,category,direction,currentValue,changePercentage,const DeepCollectionEquality().hash(quarterlyData),insight);

@override
String toString() {
  return 'HealthTrendModel(id: $id, metricName: $metricName, category: $category, direction: $direction, currentValue: $currentValue, changePercentage: $changePercentage, quarterlyData: $quarterlyData, insight: $insight)';
}


}

/// @nodoc
abstract mixin class $HealthTrendModelCopyWith<$Res>  {
  factory $HealthTrendModelCopyWith(HealthTrendModel value, $Res Function(HealthTrendModel) _then) = _$HealthTrendModelCopyWithImpl;
@useResult
$Res call({
 String id, String metricName, String category, String direction, double currentValue, double changePercentage, List<TrendDataPointModel> quarterlyData, String insight
});




}
/// @nodoc
class _$HealthTrendModelCopyWithImpl<$Res>
    implements $HealthTrendModelCopyWith<$Res> {
  _$HealthTrendModelCopyWithImpl(this._self, this._then);

  final HealthTrendModel _self;
  final $Res Function(HealthTrendModel) _then;

/// Create a copy of HealthTrendModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? metricName = null,Object? category = null,Object? direction = null,Object? currentValue = null,Object? changePercentage = null,Object? quarterlyData = null,Object? insight = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,metricName: null == metricName ? _self.metricName : metricName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as double,changePercentage: null == changePercentage ? _self.changePercentage : changePercentage // ignore: cast_nullable_to_non_nullable
as double,quarterlyData: null == quarterlyData ? _self.quarterlyData : quarterlyData // ignore: cast_nullable_to_non_nullable
as List<TrendDataPointModel>,insight: null == insight ? _self.insight : insight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthTrendModel].
extension HealthTrendModelPatterns on HealthTrendModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthTrendModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthTrendModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthTrendModel value)  $default,){
final _that = this;
switch (_that) {
case _HealthTrendModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthTrendModel value)?  $default,){
final _that = this;
switch (_that) {
case _HealthTrendModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String metricName,  String category,  String direction,  double currentValue,  double changePercentage,  List<TrendDataPointModel> quarterlyData,  String insight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthTrendModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String metricName,  String category,  String direction,  double currentValue,  double changePercentage,  List<TrendDataPointModel> quarterlyData,  String insight)  $default,) {final _that = this;
switch (_that) {
case _HealthTrendModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String metricName,  String category,  String direction,  double currentValue,  double changePercentage,  List<TrendDataPointModel> quarterlyData,  String insight)?  $default,) {final _that = this;
switch (_that) {
case _HealthTrendModel() when $default != null:
return $default(_that.id,_that.metricName,_that.category,_that.direction,_that.currentValue,_that.changePercentage,_that.quarterlyData,_that.insight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthTrendModel extends HealthTrendModel {
  const _HealthTrendModel({required this.id, required this.metricName, required this.category, required this.direction, required this.currentValue, required this.changePercentage, required final  List<TrendDataPointModel> quarterlyData, required this.insight}): _quarterlyData = quarterlyData,super._();
  factory _HealthTrendModel.fromJson(Map<String, dynamic> json) => _$HealthTrendModelFromJson(json);

@override final  String id;
@override final  String metricName;
@override final  String category;
@override final  String direction;
@override final  double currentValue;
@override final  double changePercentage;
 final  List<TrendDataPointModel> _quarterlyData;
@override List<TrendDataPointModel> get quarterlyData {
  if (_quarterlyData is EqualUnmodifiableListView) return _quarterlyData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_quarterlyData);
}

@override final  String insight;

/// Create a copy of HealthTrendModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthTrendModelCopyWith<_HealthTrendModel> get copyWith => __$HealthTrendModelCopyWithImpl<_HealthTrendModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthTrendModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthTrendModel&&(identical(other.id, id) || other.id == id)&&(identical(other.metricName, metricName) || other.metricName == metricName)&&(identical(other.category, category) || other.category == category)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.changePercentage, changePercentage) || other.changePercentage == changePercentage)&&const DeepCollectionEquality().equals(other._quarterlyData, _quarterlyData)&&(identical(other.insight, insight) || other.insight == insight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,metricName,category,direction,currentValue,changePercentage,const DeepCollectionEquality().hash(_quarterlyData),insight);

@override
String toString() {
  return 'HealthTrendModel(id: $id, metricName: $metricName, category: $category, direction: $direction, currentValue: $currentValue, changePercentage: $changePercentage, quarterlyData: $quarterlyData, insight: $insight)';
}


}

/// @nodoc
abstract mixin class _$HealthTrendModelCopyWith<$Res> implements $HealthTrendModelCopyWith<$Res> {
  factory _$HealthTrendModelCopyWith(_HealthTrendModel value, $Res Function(_HealthTrendModel) _then) = __$HealthTrendModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String metricName, String category, String direction, double currentValue, double changePercentage, List<TrendDataPointModel> quarterlyData, String insight
});




}
/// @nodoc
class __$HealthTrendModelCopyWithImpl<$Res>
    implements _$HealthTrendModelCopyWith<$Res> {
  __$HealthTrendModelCopyWithImpl(this._self, this._then);

  final _HealthTrendModel _self;
  final $Res Function(_HealthTrendModel) _then;

/// Create a copy of HealthTrendModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? metricName = null,Object? category = null,Object? direction = null,Object? currentValue = null,Object? changePercentage = null,Object? quarterlyData = null,Object? insight = null,}) {
  return _then(_HealthTrendModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,metricName: null == metricName ? _self.metricName : metricName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as double,changePercentage: null == changePercentage ? _self.changePercentage : changePercentage // ignore: cast_nullable_to_non_nullable
as double,quarterlyData: null == quarterlyData ? _self._quarterlyData : quarterlyData // ignore: cast_nullable_to_non_nullable
as List<TrendDataPointModel>,insight: null == insight ? _self.insight : insight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TrendDataPointModel {

 String get quarter; double get value; DateTime get date;
/// Create a copy of TrendDataPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendDataPointModelCopyWith<TrendDataPointModel> get copyWith => _$TrendDataPointModelCopyWithImpl<TrendDataPointModel>(this as TrendDataPointModel, _$identity);

  /// Serializes this TrendDataPointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrendDataPointModel&&(identical(other.quarter, quarter) || other.quarter == quarter)&&(identical(other.value, value) || other.value == value)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quarter,value,date);

@override
String toString() {
  return 'TrendDataPointModel(quarter: $quarter, value: $value, date: $date)';
}


}

/// @nodoc
abstract mixin class $TrendDataPointModelCopyWith<$Res>  {
  factory $TrendDataPointModelCopyWith(TrendDataPointModel value, $Res Function(TrendDataPointModel) _then) = _$TrendDataPointModelCopyWithImpl;
@useResult
$Res call({
 String quarter, double value, DateTime date
});




}
/// @nodoc
class _$TrendDataPointModelCopyWithImpl<$Res>
    implements $TrendDataPointModelCopyWith<$Res> {
  _$TrendDataPointModelCopyWithImpl(this._self, this._then);

  final TrendDataPointModel _self;
  final $Res Function(TrendDataPointModel) _then;

/// Create a copy of TrendDataPointModel
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


/// Adds pattern-matching-related methods to [TrendDataPointModel].
extension TrendDataPointModelPatterns on TrendDataPointModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrendDataPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrendDataPointModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrendDataPointModel value)  $default,){
final _that = this;
switch (_that) {
case _TrendDataPointModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrendDataPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrendDataPointModel() when $default != null:
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
case _TrendDataPointModel() when $default != null:
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
case _TrendDataPointModel():
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
case _TrendDataPointModel() when $default != null:
return $default(_that.quarter,_that.value,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrendDataPointModel extends TrendDataPointModel {
  const _TrendDataPointModel({required this.quarter, required this.value, required this.date}): super._();
  factory _TrendDataPointModel.fromJson(Map<String, dynamic> json) => _$TrendDataPointModelFromJson(json);

@override final  String quarter;
@override final  double value;
@override final  DateTime date;

/// Create a copy of TrendDataPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendDataPointModelCopyWith<_TrendDataPointModel> get copyWith => __$TrendDataPointModelCopyWithImpl<_TrendDataPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrendDataPointModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrendDataPointModel&&(identical(other.quarter, quarter) || other.quarter == quarter)&&(identical(other.value, value) || other.value == value)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quarter,value,date);

@override
String toString() {
  return 'TrendDataPointModel(quarter: $quarter, value: $value, date: $date)';
}


}

/// @nodoc
abstract mixin class _$TrendDataPointModelCopyWith<$Res> implements $TrendDataPointModelCopyWith<$Res> {
  factory _$TrendDataPointModelCopyWith(_TrendDataPointModel value, $Res Function(_TrendDataPointModel) _then) = __$TrendDataPointModelCopyWithImpl;
@override @useResult
$Res call({
 String quarter, double value, DateTime date
});




}
/// @nodoc
class __$TrendDataPointModelCopyWithImpl<$Res>
    implements _$TrendDataPointModelCopyWith<$Res> {
  __$TrendDataPointModelCopyWithImpl(this._self, this._then);

  final _TrendDataPointModel _self;
  final $Res Function(_TrendDataPointModel) _then;

/// Create a copy of TrendDataPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quarter = null,Object? value = null,Object? date = null,}) {
  return _then(_TrendDataPointModel(
quarter: null == quarter ? _self.quarter : quarter // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
