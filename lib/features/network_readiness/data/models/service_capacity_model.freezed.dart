// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_capacity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceCapacityModel {

 String get id; String get serviceType; String get serviceName; int get dailyCapacity; int get currentUtilization; int get availableSlots; double get utilizationPercentage; int get demandForecast; bool get isBottleneck; String? get bottleneckReason;
/// Create a copy of ServiceCapacityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceCapacityModelCopyWith<ServiceCapacityModel> get copyWith => _$ServiceCapacityModelCopyWithImpl<ServiceCapacityModel>(this as ServiceCapacityModel, _$identity);

  /// Serializes this ServiceCapacityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceCapacityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.serviceType, serviceType) || other.serviceType == serviceType)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.dailyCapacity, dailyCapacity) || other.dailyCapacity == dailyCapacity)&&(identical(other.currentUtilization, currentUtilization) || other.currentUtilization == currentUtilization)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots)&&(identical(other.utilizationPercentage, utilizationPercentage) || other.utilizationPercentage == utilizationPercentage)&&(identical(other.demandForecast, demandForecast) || other.demandForecast == demandForecast)&&(identical(other.isBottleneck, isBottleneck) || other.isBottleneck == isBottleneck)&&(identical(other.bottleneckReason, bottleneckReason) || other.bottleneckReason == bottleneckReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,serviceType,serviceName,dailyCapacity,currentUtilization,availableSlots,utilizationPercentage,demandForecast,isBottleneck,bottleneckReason);

@override
String toString() {
  return 'ServiceCapacityModel(id: $id, serviceType: $serviceType, serviceName: $serviceName, dailyCapacity: $dailyCapacity, currentUtilization: $currentUtilization, availableSlots: $availableSlots, utilizationPercentage: $utilizationPercentage, demandForecast: $demandForecast, isBottleneck: $isBottleneck, bottleneckReason: $bottleneckReason)';
}


}

/// @nodoc
abstract mixin class $ServiceCapacityModelCopyWith<$Res>  {
  factory $ServiceCapacityModelCopyWith(ServiceCapacityModel value, $Res Function(ServiceCapacityModel) _then) = _$ServiceCapacityModelCopyWithImpl;
@useResult
$Res call({
 String id, String serviceType, String serviceName, int dailyCapacity, int currentUtilization, int availableSlots, double utilizationPercentage, int demandForecast, bool isBottleneck, String? bottleneckReason
});




}
/// @nodoc
class _$ServiceCapacityModelCopyWithImpl<$Res>
    implements $ServiceCapacityModelCopyWith<$Res> {
  _$ServiceCapacityModelCopyWithImpl(this._self, this._then);

  final ServiceCapacityModel _self;
  final $Res Function(ServiceCapacityModel) _then;

/// Create a copy of ServiceCapacityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? serviceType = null,Object? serviceName = null,Object? dailyCapacity = null,Object? currentUtilization = null,Object? availableSlots = null,Object? utilizationPercentage = null,Object? demandForecast = null,Object? isBottleneck = null,Object? bottleneckReason = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,serviceType: null == serviceType ? _self.serviceType : serviceType // ignore: cast_nullable_to_non_nullable
as String,serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,dailyCapacity: null == dailyCapacity ? _self.dailyCapacity : dailyCapacity // ignore: cast_nullable_to_non_nullable
as int,currentUtilization: null == currentUtilization ? _self.currentUtilization : currentUtilization // ignore: cast_nullable_to_non_nullable
as int,availableSlots: null == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int,utilizationPercentage: null == utilizationPercentage ? _self.utilizationPercentage : utilizationPercentage // ignore: cast_nullable_to_non_nullable
as double,demandForecast: null == demandForecast ? _self.demandForecast : demandForecast // ignore: cast_nullable_to_non_nullable
as int,isBottleneck: null == isBottleneck ? _self.isBottleneck : isBottleneck // ignore: cast_nullable_to_non_nullable
as bool,bottleneckReason: freezed == bottleneckReason ? _self.bottleneckReason : bottleneckReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceCapacityModel].
extension ServiceCapacityModelPatterns on ServiceCapacityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceCapacityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceCapacityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceCapacityModel value)  $default,){
final _that = this;
switch (_that) {
case _ServiceCapacityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceCapacityModel value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceCapacityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String serviceType,  String serviceName,  int dailyCapacity,  int currentUtilization,  int availableSlots,  double utilizationPercentage,  int demandForecast,  bool isBottleneck,  String? bottleneckReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceCapacityModel() when $default != null:
return $default(_that.id,_that.serviceType,_that.serviceName,_that.dailyCapacity,_that.currentUtilization,_that.availableSlots,_that.utilizationPercentage,_that.demandForecast,_that.isBottleneck,_that.bottleneckReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String serviceType,  String serviceName,  int dailyCapacity,  int currentUtilization,  int availableSlots,  double utilizationPercentage,  int demandForecast,  bool isBottleneck,  String? bottleneckReason)  $default,) {final _that = this;
switch (_that) {
case _ServiceCapacityModel():
return $default(_that.id,_that.serviceType,_that.serviceName,_that.dailyCapacity,_that.currentUtilization,_that.availableSlots,_that.utilizationPercentage,_that.demandForecast,_that.isBottleneck,_that.bottleneckReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String serviceType,  String serviceName,  int dailyCapacity,  int currentUtilization,  int availableSlots,  double utilizationPercentage,  int demandForecast,  bool isBottleneck,  String? bottleneckReason)?  $default,) {final _that = this;
switch (_that) {
case _ServiceCapacityModel() when $default != null:
return $default(_that.id,_that.serviceType,_that.serviceName,_that.dailyCapacity,_that.currentUtilization,_that.availableSlots,_that.utilizationPercentage,_that.demandForecast,_that.isBottleneck,_that.bottleneckReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceCapacityModel extends ServiceCapacityModel {
  const _ServiceCapacityModel({required this.id, required this.serviceType, required this.serviceName, required this.dailyCapacity, required this.currentUtilization, required this.availableSlots, required this.utilizationPercentage, required this.demandForecast, required this.isBottleneck, this.bottleneckReason}): super._();
  factory _ServiceCapacityModel.fromJson(Map<String, dynamic> json) => _$ServiceCapacityModelFromJson(json);

@override final  String id;
@override final  String serviceType;
@override final  String serviceName;
@override final  int dailyCapacity;
@override final  int currentUtilization;
@override final  int availableSlots;
@override final  double utilizationPercentage;
@override final  int demandForecast;
@override final  bool isBottleneck;
@override final  String? bottleneckReason;

/// Create a copy of ServiceCapacityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceCapacityModelCopyWith<_ServiceCapacityModel> get copyWith => __$ServiceCapacityModelCopyWithImpl<_ServiceCapacityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceCapacityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceCapacityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.serviceType, serviceType) || other.serviceType == serviceType)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.dailyCapacity, dailyCapacity) || other.dailyCapacity == dailyCapacity)&&(identical(other.currentUtilization, currentUtilization) || other.currentUtilization == currentUtilization)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots)&&(identical(other.utilizationPercentage, utilizationPercentage) || other.utilizationPercentage == utilizationPercentage)&&(identical(other.demandForecast, demandForecast) || other.demandForecast == demandForecast)&&(identical(other.isBottleneck, isBottleneck) || other.isBottleneck == isBottleneck)&&(identical(other.bottleneckReason, bottleneckReason) || other.bottleneckReason == bottleneckReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,serviceType,serviceName,dailyCapacity,currentUtilization,availableSlots,utilizationPercentage,demandForecast,isBottleneck,bottleneckReason);

@override
String toString() {
  return 'ServiceCapacityModel(id: $id, serviceType: $serviceType, serviceName: $serviceName, dailyCapacity: $dailyCapacity, currentUtilization: $currentUtilization, availableSlots: $availableSlots, utilizationPercentage: $utilizationPercentage, demandForecast: $demandForecast, isBottleneck: $isBottleneck, bottleneckReason: $bottleneckReason)';
}


}

/// @nodoc
abstract mixin class _$ServiceCapacityModelCopyWith<$Res> implements $ServiceCapacityModelCopyWith<$Res> {
  factory _$ServiceCapacityModelCopyWith(_ServiceCapacityModel value, $Res Function(_ServiceCapacityModel) _then) = __$ServiceCapacityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String serviceType, String serviceName, int dailyCapacity, int currentUtilization, int availableSlots, double utilizationPercentage, int demandForecast, bool isBottleneck, String? bottleneckReason
});




}
/// @nodoc
class __$ServiceCapacityModelCopyWithImpl<$Res>
    implements _$ServiceCapacityModelCopyWith<$Res> {
  __$ServiceCapacityModelCopyWithImpl(this._self, this._then);

  final _ServiceCapacityModel _self;
  final $Res Function(_ServiceCapacityModel) _then;

/// Create a copy of ServiceCapacityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? serviceType = null,Object? serviceName = null,Object? dailyCapacity = null,Object? currentUtilization = null,Object? availableSlots = null,Object? utilizationPercentage = null,Object? demandForecast = null,Object? isBottleneck = null,Object? bottleneckReason = freezed,}) {
  return _then(_ServiceCapacityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,serviceType: null == serviceType ? _self.serviceType : serviceType // ignore: cast_nullable_to_non_nullable
as String,serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,dailyCapacity: null == dailyCapacity ? _self.dailyCapacity : dailyCapacity // ignore: cast_nullable_to_non_nullable
as int,currentUtilization: null == currentUtilization ? _self.currentUtilization : currentUtilization // ignore: cast_nullable_to_non_nullable
as int,availableSlots: null == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int,utilizationPercentage: null == utilizationPercentage ? _self.utilizationPercentage : utilizationPercentage // ignore: cast_nullable_to_non_nullable
as double,demandForecast: null == demandForecast ? _self.demandForecast : demandForecast // ignore: cast_nullable_to_non_nullable
as int,isBottleneck: null == isBottleneck ? _self.isBottleneck : isBottleneck // ignore: cast_nullable_to_non_nullable
as bool,bottleneckReason: freezed == bottleneckReason ? _self.bottleneckReason : bottleneckReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
