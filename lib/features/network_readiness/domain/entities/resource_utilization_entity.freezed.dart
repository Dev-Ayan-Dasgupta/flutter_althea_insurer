// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_utilization_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResourceUtilizationEntity {

 String get resourceType; String get resourceName; int get totalResources; int get activeResources; int get utilizationCount; double get utilizationRate; double get averageResponseTime; int get peakHourUtilization; List<HourlyUtilization> get hourlyData;
/// Create a copy of ResourceUtilizationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResourceUtilizationEntityCopyWith<ResourceUtilizationEntity> get copyWith => _$ResourceUtilizationEntityCopyWithImpl<ResourceUtilizationEntity>(this as ResourceUtilizationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceUtilizationEntity&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&(identical(other.resourceName, resourceName) || other.resourceName == resourceName)&&(identical(other.totalResources, totalResources) || other.totalResources == totalResources)&&(identical(other.activeResources, activeResources) || other.activeResources == activeResources)&&(identical(other.utilizationCount, utilizationCount) || other.utilizationCount == utilizationCount)&&(identical(other.utilizationRate, utilizationRate) || other.utilizationRate == utilizationRate)&&(identical(other.averageResponseTime, averageResponseTime) || other.averageResponseTime == averageResponseTime)&&(identical(other.peakHourUtilization, peakHourUtilization) || other.peakHourUtilization == peakHourUtilization)&&const DeepCollectionEquality().equals(other.hourlyData, hourlyData));
}


@override
int get hashCode => Object.hash(runtimeType,resourceType,resourceName,totalResources,activeResources,utilizationCount,utilizationRate,averageResponseTime,peakHourUtilization,const DeepCollectionEquality().hash(hourlyData));

@override
String toString() {
  return 'ResourceUtilizationEntity(resourceType: $resourceType, resourceName: $resourceName, totalResources: $totalResources, activeResources: $activeResources, utilizationCount: $utilizationCount, utilizationRate: $utilizationRate, averageResponseTime: $averageResponseTime, peakHourUtilization: $peakHourUtilization, hourlyData: $hourlyData)';
}


}

/// @nodoc
abstract mixin class $ResourceUtilizationEntityCopyWith<$Res>  {
  factory $ResourceUtilizationEntityCopyWith(ResourceUtilizationEntity value, $Res Function(ResourceUtilizationEntity) _then) = _$ResourceUtilizationEntityCopyWithImpl;
@useResult
$Res call({
 String resourceType, String resourceName, int totalResources, int activeResources, int utilizationCount, double utilizationRate, double averageResponseTime, int peakHourUtilization, List<HourlyUtilization> hourlyData
});




}
/// @nodoc
class _$ResourceUtilizationEntityCopyWithImpl<$Res>
    implements $ResourceUtilizationEntityCopyWith<$Res> {
  _$ResourceUtilizationEntityCopyWithImpl(this._self, this._then);

  final ResourceUtilizationEntity _self;
  final $Res Function(ResourceUtilizationEntity) _then;

/// Create a copy of ResourceUtilizationEntity
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
as List<HourlyUtilization>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResourceUtilizationEntity].
extension ResourceUtilizationEntityPatterns on ResourceUtilizationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResourceUtilizationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResourceUtilizationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResourceUtilizationEntity value)  $default,){
final _that = this;
switch (_that) {
case _ResourceUtilizationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResourceUtilizationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ResourceUtilizationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String resourceType,  String resourceName,  int totalResources,  int activeResources,  int utilizationCount,  double utilizationRate,  double averageResponseTime,  int peakHourUtilization,  List<HourlyUtilization> hourlyData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResourceUtilizationEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String resourceType,  String resourceName,  int totalResources,  int activeResources,  int utilizationCount,  double utilizationRate,  double averageResponseTime,  int peakHourUtilization,  List<HourlyUtilization> hourlyData)  $default,) {final _that = this;
switch (_that) {
case _ResourceUtilizationEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String resourceType,  String resourceName,  int totalResources,  int activeResources,  int utilizationCount,  double utilizationRate,  double averageResponseTime,  int peakHourUtilization,  List<HourlyUtilization> hourlyData)?  $default,) {final _that = this;
switch (_that) {
case _ResourceUtilizationEntity() when $default != null:
return $default(_that.resourceType,_that.resourceName,_that.totalResources,_that.activeResources,_that.utilizationCount,_that.utilizationRate,_that.averageResponseTime,_that.peakHourUtilization,_that.hourlyData);case _:
  return null;

}
}

}

/// @nodoc


class _ResourceUtilizationEntity implements ResourceUtilizationEntity {
  const _ResourceUtilizationEntity({required this.resourceType, required this.resourceName, required this.totalResources, required this.activeResources, required this.utilizationCount, required this.utilizationRate, required this.averageResponseTime, required this.peakHourUtilization, required final  List<HourlyUtilization> hourlyData}): _hourlyData = hourlyData;
  

@override final  String resourceType;
@override final  String resourceName;
@override final  int totalResources;
@override final  int activeResources;
@override final  int utilizationCount;
@override final  double utilizationRate;
@override final  double averageResponseTime;
@override final  int peakHourUtilization;
 final  List<HourlyUtilization> _hourlyData;
@override List<HourlyUtilization> get hourlyData {
  if (_hourlyData is EqualUnmodifiableListView) return _hourlyData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hourlyData);
}


/// Create a copy of ResourceUtilizationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResourceUtilizationEntityCopyWith<_ResourceUtilizationEntity> get copyWith => __$ResourceUtilizationEntityCopyWithImpl<_ResourceUtilizationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResourceUtilizationEntity&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&(identical(other.resourceName, resourceName) || other.resourceName == resourceName)&&(identical(other.totalResources, totalResources) || other.totalResources == totalResources)&&(identical(other.activeResources, activeResources) || other.activeResources == activeResources)&&(identical(other.utilizationCount, utilizationCount) || other.utilizationCount == utilizationCount)&&(identical(other.utilizationRate, utilizationRate) || other.utilizationRate == utilizationRate)&&(identical(other.averageResponseTime, averageResponseTime) || other.averageResponseTime == averageResponseTime)&&(identical(other.peakHourUtilization, peakHourUtilization) || other.peakHourUtilization == peakHourUtilization)&&const DeepCollectionEquality().equals(other._hourlyData, _hourlyData));
}


@override
int get hashCode => Object.hash(runtimeType,resourceType,resourceName,totalResources,activeResources,utilizationCount,utilizationRate,averageResponseTime,peakHourUtilization,const DeepCollectionEquality().hash(_hourlyData));

@override
String toString() {
  return 'ResourceUtilizationEntity(resourceType: $resourceType, resourceName: $resourceName, totalResources: $totalResources, activeResources: $activeResources, utilizationCount: $utilizationCount, utilizationRate: $utilizationRate, averageResponseTime: $averageResponseTime, peakHourUtilization: $peakHourUtilization, hourlyData: $hourlyData)';
}


}

/// @nodoc
abstract mixin class _$ResourceUtilizationEntityCopyWith<$Res> implements $ResourceUtilizationEntityCopyWith<$Res> {
  factory _$ResourceUtilizationEntityCopyWith(_ResourceUtilizationEntity value, $Res Function(_ResourceUtilizationEntity) _then) = __$ResourceUtilizationEntityCopyWithImpl;
@override @useResult
$Res call({
 String resourceType, String resourceName, int totalResources, int activeResources, int utilizationCount, double utilizationRate, double averageResponseTime, int peakHourUtilization, List<HourlyUtilization> hourlyData
});




}
/// @nodoc
class __$ResourceUtilizationEntityCopyWithImpl<$Res>
    implements _$ResourceUtilizationEntityCopyWith<$Res> {
  __$ResourceUtilizationEntityCopyWithImpl(this._self, this._then);

  final _ResourceUtilizationEntity _self;
  final $Res Function(_ResourceUtilizationEntity) _then;

/// Create a copy of ResourceUtilizationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resourceType = null,Object? resourceName = null,Object? totalResources = null,Object? activeResources = null,Object? utilizationCount = null,Object? utilizationRate = null,Object? averageResponseTime = null,Object? peakHourUtilization = null,Object? hourlyData = null,}) {
  return _then(_ResourceUtilizationEntity(
resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,resourceName: null == resourceName ? _self.resourceName : resourceName // ignore: cast_nullable_to_non_nullable
as String,totalResources: null == totalResources ? _self.totalResources : totalResources // ignore: cast_nullable_to_non_nullable
as int,activeResources: null == activeResources ? _self.activeResources : activeResources // ignore: cast_nullable_to_non_nullable
as int,utilizationCount: null == utilizationCount ? _self.utilizationCount : utilizationCount // ignore: cast_nullable_to_non_nullable
as int,utilizationRate: null == utilizationRate ? _self.utilizationRate : utilizationRate // ignore: cast_nullable_to_non_nullable
as double,averageResponseTime: null == averageResponseTime ? _self.averageResponseTime : averageResponseTime // ignore: cast_nullable_to_non_nullable
as double,peakHourUtilization: null == peakHourUtilization ? _self.peakHourUtilization : peakHourUtilization // ignore: cast_nullable_to_non_nullable
as int,hourlyData: null == hourlyData ? _self._hourlyData : hourlyData // ignore: cast_nullable_to_non_nullable
as List<HourlyUtilization>,
  ));
}


}

/// @nodoc
mixin _$HourlyUtilization {

 int get hour; int get utilization; double get rate;
/// Create a copy of HourlyUtilization
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyUtilizationCopyWith<HourlyUtilization> get copyWith => _$HourlyUtilizationCopyWithImpl<HourlyUtilization>(this as HourlyUtilization, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyUtilization&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.utilization, utilization) || other.utilization == utilization)&&(identical(other.rate, rate) || other.rate == rate));
}


@override
int get hashCode => Object.hash(runtimeType,hour,utilization,rate);

@override
String toString() {
  return 'HourlyUtilization(hour: $hour, utilization: $utilization, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $HourlyUtilizationCopyWith<$Res>  {
  factory $HourlyUtilizationCopyWith(HourlyUtilization value, $Res Function(HourlyUtilization) _then) = _$HourlyUtilizationCopyWithImpl;
@useResult
$Res call({
 int hour, int utilization, double rate
});




}
/// @nodoc
class _$HourlyUtilizationCopyWithImpl<$Res>
    implements $HourlyUtilizationCopyWith<$Res> {
  _$HourlyUtilizationCopyWithImpl(this._self, this._then);

  final HourlyUtilization _self;
  final $Res Function(HourlyUtilization) _then;

/// Create a copy of HourlyUtilization
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


/// Adds pattern-matching-related methods to [HourlyUtilization].
extension HourlyUtilizationPatterns on HourlyUtilization {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HourlyUtilization value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HourlyUtilization() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HourlyUtilization value)  $default,){
final _that = this;
switch (_that) {
case _HourlyUtilization():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HourlyUtilization value)?  $default,){
final _that = this;
switch (_that) {
case _HourlyUtilization() when $default != null:
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
case _HourlyUtilization() when $default != null:
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
case _HourlyUtilization():
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
case _HourlyUtilization() when $default != null:
return $default(_that.hour,_that.utilization,_that.rate);case _:
  return null;

}
}

}

/// @nodoc


class _HourlyUtilization implements HourlyUtilization {
  const _HourlyUtilization({required this.hour, required this.utilization, required this.rate});
  

@override final  int hour;
@override final  int utilization;
@override final  double rate;

/// Create a copy of HourlyUtilization
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyUtilizationCopyWith<_HourlyUtilization> get copyWith => __$HourlyUtilizationCopyWithImpl<_HourlyUtilization>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyUtilization&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.utilization, utilization) || other.utilization == utilization)&&(identical(other.rate, rate) || other.rate == rate));
}


@override
int get hashCode => Object.hash(runtimeType,hour,utilization,rate);

@override
String toString() {
  return 'HourlyUtilization(hour: $hour, utilization: $utilization, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$HourlyUtilizationCopyWith<$Res> implements $HourlyUtilizationCopyWith<$Res> {
  factory _$HourlyUtilizationCopyWith(_HourlyUtilization value, $Res Function(_HourlyUtilization) _then) = __$HourlyUtilizationCopyWithImpl;
@override @useResult
$Res call({
 int hour, int utilization, double rate
});




}
/// @nodoc
class __$HourlyUtilizationCopyWithImpl<$Res>
    implements _$HourlyUtilizationCopyWith<$Res> {
  __$HourlyUtilizationCopyWithImpl(this._self, this._then);

  final _HourlyUtilization _self;
  final $Res Function(_HourlyUtilization) _then;

/// Create a copy of HourlyUtilization
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hour = null,Object? utilization = null,Object? rate = null,}) {
  return _then(_HourlyUtilization(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,utilization: null == utilization ? _self.utilization : utilization // ignore: cast_nullable_to_non_nullable
as int,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
