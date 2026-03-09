// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_utilization_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResourceUtilizationModel {

 String get resourceType; String get resourceName; int get totalResources; int get activeResources; int get utilizationCount; double get utilizationRate; double get averageResponseTime; int get peakHourUtilization; List<HourlyUtilizationModel> get hourlyData;
/// Create a copy of ResourceUtilizationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResourceUtilizationModelCopyWith<ResourceUtilizationModel> get copyWith => _$ResourceUtilizationModelCopyWithImpl<ResourceUtilizationModel>(this as ResourceUtilizationModel, _$identity);

  /// Serializes this ResourceUtilizationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceUtilizationModel&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&(identical(other.resourceName, resourceName) || other.resourceName == resourceName)&&(identical(other.totalResources, totalResources) || other.totalResources == totalResources)&&(identical(other.activeResources, activeResources) || other.activeResources == activeResources)&&(identical(other.utilizationCount, utilizationCount) || other.utilizationCount == utilizationCount)&&(identical(other.utilizationRate, utilizationRate) || other.utilizationRate == utilizationRate)&&(identical(other.averageResponseTime, averageResponseTime) || other.averageResponseTime == averageResponseTime)&&(identical(other.peakHourUtilization, peakHourUtilization) || other.peakHourUtilization == peakHourUtilization)&&const DeepCollectionEquality().equals(other.hourlyData, hourlyData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resourceType,resourceName,totalResources,activeResources,utilizationCount,utilizationRate,averageResponseTime,peakHourUtilization,const DeepCollectionEquality().hash(hourlyData));

@override
String toString() {
  return 'ResourceUtilizationModel(resourceType: $resourceType, resourceName: $resourceName, totalResources: $totalResources, activeResources: $activeResources, utilizationCount: $utilizationCount, utilizationRate: $utilizationRate, averageResponseTime: $averageResponseTime, peakHourUtilization: $peakHourUtilization, hourlyData: $hourlyData)';
}


}

/// @nodoc
abstract mixin class $ResourceUtilizationModelCopyWith<$Res>  {
  factory $ResourceUtilizationModelCopyWith(ResourceUtilizationModel value, $Res Function(ResourceUtilizationModel) _then) = _$ResourceUtilizationModelCopyWithImpl;
@useResult
$Res call({
 String resourceType, String resourceName, int totalResources, int activeResources, int utilizationCount, double utilizationRate, double averageResponseTime, int peakHourUtilization, List<HourlyUtilizationModel> hourlyData
});




}
/// @nodoc
class _$ResourceUtilizationModelCopyWithImpl<$Res>
    implements $ResourceUtilizationModelCopyWith<$Res> {
  _$ResourceUtilizationModelCopyWithImpl(this._self, this._then);

  final ResourceUtilizationModel _self;
  final $Res Function(ResourceUtilizationModel) _then;

/// Create a copy of ResourceUtilizationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resourceType = null,Object? resourceName = null,Object? totalResources = null,Object? activeResources = null,Object? utilizationCount = null,Object? utilizationRate = null,Object? averageResponseTime = null,Object? peakHourUtilization = null,Object? hourlyData = null,}) {
  return _then(_self.copyWith(
resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,resourceName: null == resourceName ? _self.resourceName : resourceName // ignore: cast_nullable_to_non_nullable
as String,totalResources: null == totalResources ? _self.totalResources : totalResources // ignore: cast_nullable_to_non_nullable
as int,activeResources: null == activeResources ? _self.activeResources : activeResources // ignore: cast_nullable_to_non_nullable
as int,utilizationCount: null == utilizationCount ? _self.utilizationCount : utilizationCount // ignore: cast_nullable_to_non_nullable
as int,utilizationRate: null == utilizationRate ? _self.utilizationRate : utilizationRate // ignore: cast_nullable_to_non_nullable
as double,averageResponseTime: null == averageResponseTime ? _self.averageResponseTime : averageResponseTime // ignore: cast_nullable_to_non_nullable
as double,peakHourUtilization: null == peakHourUtilization ? _self.peakHourUtilization : peakHourUtilization // ignore: cast_nullable_to_non_nullable
as int,hourlyData: null == hourlyData ? _self.hourlyData : hourlyData // ignore: cast_nullable_to_non_nullable
as List<HourlyUtilizationModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResourceUtilizationModel].
extension ResourceUtilizationModelPatterns on ResourceUtilizationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResourceUtilizationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResourceUtilizationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResourceUtilizationModel value)  $default,){
final _that = this;
switch (_that) {
case _ResourceUtilizationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResourceUtilizationModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResourceUtilizationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String resourceType,  String resourceName,  int totalResources,  int activeResources,  int utilizationCount,  double utilizationRate,  double averageResponseTime,  int peakHourUtilization,  List<HourlyUtilizationModel> hourlyData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResourceUtilizationModel() when $default != null:
return $default(_that.resourceType,_that.resourceName,_that.totalResources,_that.activeResources,_that.utilizationCount,_that.utilizationRate,_that.averageResponseTime,_that.peakHourUtilization,_that.hourlyData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String resourceType,  String resourceName,  int totalResources,  int activeResources,  int utilizationCount,  double utilizationRate,  double averageResponseTime,  int peakHourUtilization,  List<HourlyUtilizationModel> hourlyData)  $default,) {final _that = this;
switch (_that) {
case _ResourceUtilizationModel():
return $default(_that.resourceType,_that.resourceName,_that.totalResources,_that.activeResources,_that.utilizationCount,_that.utilizationRate,_that.averageResponseTime,_that.peakHourUtilization,_that.hourlyData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String resourceType,  String resourceName,  int totalResources,  int activeResources,  int utilizationCount,  double utilizationRate,  double averageResponseTime,  int peakHourUtilization,  List<HourlyUtilizationModel> hourlyData)?  $default,) {final _that = this;
switch (_that) {
case _ResourceUtilizationModel() when $default != null:
return $default(_that.resourceType,_that.resourceName,_that.totalResources,_that.activeResources,_that.utilizationCount,_that.utilizationRate,_that.averageResponseTime,_that.peakHourUtilization,_that.hourlyData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResourceUtilizationModel extends ResourceUtilizationModel {
  const _ResourceUtilizationModel({required this.resourceType, required this.resourceName, required this.totalResources, required this.activeResources, required this.utilizationCount, required this.utilizationRate, required this.averageResponseTime, required this.peakHourUtilization, required final  List<HourlyUtilizationModel> hourlyData}): _hourlyData = hourlyData,super._();
  factory _ResourceUtilizationModel.fromJson(Map<String, dynamic> json) => _$ResourceUtilizationModelFromJson(json);

@override final  String resourceType;
@override final  String resourceName;
@override final  int totalResources;
@override final  int activeResources;
@override final  int utilizationCount;
@override final  double utilizationRate;
@override final  double averageResponseTime;
@override final  int peakHourUtilization;
 final  List<HourlyUtilizationModel> _hourlyData;
@override List<HourlyUtilizationModel> get hourlyData {
  if (_hourlyData is EqualUnmodifiableListView) return _hourlyData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hourlyData);
}


/// Create a copy of ResourceUtilizationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResourceUtilizationModelCopyWith<_ResourceUtilizationModel> get copyWith => __$ResourceUtilizationModelCopyWithImpl<_ResourceUtilizationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResourceUtilizationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResourceUtilizationModel&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&(identical(other.resourceName, resourceName) || other.resourceName == resourceName)&&(identical(other.totalResources, totalResources) || other.totalResources == totalResources)&&(identical(other.activeResources, activeResources) || other.activeResources == activeResources)&&(identical(other.utilizationCount, utilizationCount) || other.utilizationCount == utilizationCount)&&(identical(other.utilizationRate, utilizationRate) || other.utilizationRate == utilizationRate)&&(identical(other.averageResponseTime, averageResponseTime) || other.averageResponseTime == averageResponseTime)&&(identical(other.peakHourUtilization, peakHourUtilization) || other.peakHourUtilization == peakHourUtilization)&&const DeepCollectionEquality().equals(other._hourlyData, _hourlyData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resourceType,resourceName,totalResources,activeResources,utilizationCount,utilizationRate,averageResponseTime,peakHourUtilization,const DeepCollectionEquality().hash(_hourlyData));

@override
String toString() {
  return 'ResourceUtilizationModel(resourceType: $resourceType, resourceName: $resourceName, totalResources: $totalResources, activeResources: $activeResources, utilizationCount: $utilizationCount, utilizationRate: $utilizationRate, averageResponseTime: $averageResponseTime, peakHourUtilization: $peakHourUtilization, hourlyData: $hourlyData)';
}


}

/// @nodoc
abstract mixin class _$ResourceUtilizationModelCopyWith<$Res> implements $ResourceUtilizationModelCopyWith<$Res> {
  factory _$ResourceUtilizationModelCopyWith(_ResourceUtilizationModel value, $Res Function(_ResourceUtilizationModel) _then) = __$ResourceUtilizationModelCopyWithImpl;
@override @useResult
$Res call({
 String resourceType, String resourceName, int totalResources, int activeResources, int utilizationCount, double utilizationRate, double averageResponseTime, int peakHourUtilization, List<HourlyUtilizationModel> hourlyData
});




}
/// @nodoc
class __$ResourceUtilizationModelCopyWithImpl<$Res>
    implements _$ResourceUtilizationModelCopyWith<$Res> {
  __$ResourceUtilizationModelCopyWithImpl(this._self, this._then);

  final _ResourceUtilizationModel _self;
  final $Res Function(_ResourceUtilizationModel) _then;

/// Create a copy of ResourceUtilizationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resourceType = null,Object? resourceName = null,Object? totalResources = null,Object? activeResources = null,Object? utilizationCount = null,Object? utilizationRate = null,Object? averageResponseTime = null,Object? peakHourUtilization = null,Object? hourlyData = null,}) {
  return _then(_ResourceUtilizationModel(
resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,resourceName: null == resourceName ? _self.resourceName : resourceName // ignore: cast_nullable_to_non_nullable
as String,totalResources: null == totalResources ? _self.totalResources : totalResources // ignore: cast_nullable_to_non_nullable
as int,activeResources: null == activeResources ? _self.activeResources : activeResources // ignore: cast_nullable_to_non_nullable
as int,utilizationCount: null == utilizationCount ? _self.utilizationCount : utilizationCount // ignore: cast_nullable_to_non_nullable
as int,utilizationRate: null == utilizationRate ? _self.utilizationRate : utilizationRate // ignore: cast_nullable_to_non_nullable
as double,averageResponseTime: null == averageResponseTime ? _self.averageResponseTime : averageResponseTime // ignore: cast_nullable_to_non_nullable
as double,peakHourUtilization: null == peakHourUtilization ? _self.peakHourUtilization : peakHourUtilization // ignore: cast_nullable_to_non_nullable
as int,hourlyData: null == hourlyData ? _self._hourlyData : hourlyData // ignore: cast_nullable_to_non_nullable
as List<HourlyUtilizationModel>,
  ));
}


}


/// @nodoc
mixin _$HourlyUtilizationModel {

 int get hour; int get utilization; double get rate;
/// Create a copy of HourlyUtilizationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyUtilizationModelCopyWith<HourlyUtilizationModel> get copyWith => _$HourlyUtilizationModelCopyWithImpl<HourlyUtilizationModel>(this as HourlyUtilizationModel, _$identity);

  /// Serializes this HourlyUtilizationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyUtilizationModel&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.utilization, utilization) || other.utilization == utilization)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hour,utilization,rate);

@override
String toString() {
  return 'HourlyUtilizationModel(hour: $hour, utilization: $utilization, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $HourlyUtilizationModelCopyWith<$Res>  {
  factory $HourlyUtilizationModelCopyWith(HourlyUtilizationModel value, $Res Function(HourlyUtilizationModel) _then) = _$HourlyUtilizationModelCopyWithImpl;
@useResult
$Res call({
 int hour, int utilization, double rate
});




}
/// @nodoc
class _$HourlyUtilizationModelCopyWithImpl<$Res>
    implements $HourlyUtilizationModelCopyWith<$Res> {
  _$HourlyUtilizationModelCopyWithImpl(this._self, this._then);

  final HourlyUtilizationModel _self;
  final $Res Function(HourlyUtilizationModel) _then;

/// Create a copy of HourlyUtilizationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hour = null,Object? utilization = null,Object? rate = null,}) {
  return _then(_self.copyWith(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,utilization: null == utilization ? _self.utilization : utilization // ignore: cast_nullable_to_non_nullable
as int,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HourlyUtilizationModel].
extension HourlyUtilizationModelPatterns on HourlyUtilizationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HourlyUtilizationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HourlyUtilizationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HourlyUtilizationModel value)  $default,){
final _that = this;
switch (_that) {
case _HourlyUtilizationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HourlyUtilizationModel value)?  $default,){
final _that = this;
switch (_that) {
case _HourlyUtilizationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int hour,  int utilization,  double rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HourlyUtilizationModel() when $default != null:
return $default(_that.hour,_that.utilization,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int hour,  int utilization,  double rate)  $default,) {final _that = this;
switch (_that) {
case _HourlyUtilizationModel():
return $default(_that.hour,_that.utilization,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int hour,  int utilization,  double rate)?  $default,) {final _that = this;
switch (_that) {
case _HourlyUtilizationModel() when $default != null:
return $default(_that.hour,_that.utilization,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HourlyUtilizationModel extends HourlyUtilizationModel {
  const _HourlyUtilizationModel({required this.hour, required this.utilization, required this.rate}): super._();
  factory _HourlyUtilizationModel.fromJson(Map<String, dynamic> json) => _$HourlyUtilizationModelFromJson(json);

@override final  int hour;
@override final  int utilization;
@override final  double rate;

/// Create a copy of HourlyUtilizationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyUtilizationModelCopyWith<_HourlyUtilizationModel> get copyWith => __$HourlyUtilizationModelCopyWithImpl<_HourlyUtilizationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HourlyUtilizationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyUtilizationModel&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.utilization, utilization) || other.utilization == utilization)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hour,utilization,rate);

@override
String toString() {
  return 'HourlyUtilizationModel(hour: $hour, utilization: $utilization, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$HourlyUtilizationModelCopyWith<$Res> implements $HourlyUtilizationModelCopyWith<$Res> {
  factory _$HourlyUtilizationModelCopyWith(_HourlyUtilizationModel value, $Res Function(_HourlyUtilizationModel) _then) = __$HourlyUtilizationModelCopyWithImpl;
@override @useResult
$Res call({
 int hour, int utilization, double rate
});




}
/// @nodoc
class __$HourlyUtilizationModelCopyWithImpl<$Res>
    implements _$HourlyUtilizationModelCopyWith<$Res> {
  __$HourlyUtilizationModelCopyWithImpl(this._self, this._then);

  final _HourlyUtilizationModel _self;
  final $Res Function(_HourlyUtilizationModel) _then;

/// Create a copy of HourlyUtilizationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hour = null,Object? utilization = null,Object? rate = null,}) {
  return _then(_HourlyUtilizationModel(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,utilization: null == utilization ? _self.utilization : utilization // ignore: cast_nullable_to_non_nullable
as int,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
