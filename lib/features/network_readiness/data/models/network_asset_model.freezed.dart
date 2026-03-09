// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_asset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkAssetModel {

 String get id; String get name; String get type; String get status; double? get latitude; double? get longitude; String? get currentLocation; int? get activeAssignments; int? get completedToday; DateTime? get lastActiveAt; double? get utilizationRate;
/// Create a copy of NetworkAssetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkAssetModelCopyWith<NetworkAssetModel> get copyWith => _$NetworkAssetModelCopyWithImpl<NetworkAssetModel>(this as NetworkAssetModel, _$identity);

  /// Serializes this NetworkAssetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkAssetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.activeAssignments, activeAssignments) || other.activeAssignments == activeAssignments)&&(identical(other.completedToday, completedToday) || other.completedToday == completedToday)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.utilizationRate, utilizationRate) || other.utilizationRate == utilizationRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,status,latitude,longitude,currentLocation,activeAssignments,completedToday,lastActiveAt,utilizationRate);

@override
String toString() {
  return 'NetworkAssetModel(id: $id, name: $name, type: $type, status: $status, latitude: $latitude, longitude: $longitude, currentLocation: $currentLocation, activeAssignments: $activeAssignments, completedToday: $completedToday, lastActiveAt: $lastActiveAt, utilizationRate: $utilizationRate)';
}


}

/// @nodoc
abstract mixin class $NetworkAssetModelCopyWith<$Res>  {
  factory $NetworkAssetModelCopyWith(NetworkAssetModel value, $Res Function(NetworkAssetModel) _then) = _$NetworkAssetModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, String status, double? latitude, double? longitude, String? currentLocation, int? activeAssignments, int? completedToday, DateTime? lastActiveAt, double? utilizationRate
});




}
/// @nodoc
class _$NetworkAssetModelCopyWithImpl<$Res>
    implements $NetworkAssetModelCopyWith<$Res> {
  _$NetworkAssetModelCopyWithImpl(this._self, this._then);

  final NetworkAssetModel _self;
  final $Res Function(NetworkAssetModel) _then;

/// Create a copy of NetworkAssetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? status = null,Object? latitude = freezed,Object? longitude = freezed,Object? currentLocation = freezed,Object? activeAssignments = freezed,Object? completedToday = freezed,Object? lastActiveAt = freezed,Object? utilizationRate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,activeAssignments: freezed == activeAssignments ? _self.activeAssignments : activeAssignments // ignore: cast_nullable_to_non_nullable
as int?,completedToday: freezed == completedToday ? _self.completedToday : completedToday // ignore: cast_nullable_to_non_nullable
as int?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,utilizationRate: freezed == utilizationRate ? _self.utilizationRate : utilizationRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkAssetModel].
extension NetworkAssetModelPatterns on NetworkAssetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkAssetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkAssetModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkAssetModel value)  $default,){
final _that = this;
switch (_that) {
case _NetworkAssetModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkAssetModel value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkAssetModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String status,  double? latitude,  double? longitude,  String? currentLocation,  int? activeAssignments,  int? completedToday,  DateTime? lastActiveAt,  double? utilizationRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkAssetModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.status,_that.latitude,_that.longitude,_that.currentLocation,_that.activeAssignments,_that.completedToday,_that.lastActiveAt,_that.utilizationRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String status,  double? latitude,  double? longitude,  String? currentLocation,  int? activeAssignments,  int? completedToday,  DateTime? lastActiveAt,  double? utilizationRate)  $default,) {final _that = this;
switch (_that) {
case _NetworkAssetModel():
return $default(_that.id,_that.name,_that.type,_that.status,_that.latitude,_that.longitude,_that.currentLocation,_that.activeAssignments,_that.completedToday,_that.lastActiveAt,_that.utilizationRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  String status,  double? latitude,  double? longitude,  String? currentLocation,  int? activeAssignments,  int? completedToday,  DateTime? lastActiveAt,  double? utilizationRate)?  $default,) {final _that = this;
switch (_that) {
case _NetworkAssetModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.status,_that.latitude,_that.longitude,_that.currentLocation,_that.activeAssignments,_that.completedToday,_that.lastActiveAt,_that.utilizationRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkAssetModel extends NetworkAssetModel {
  const _NetworkAssetModel({required this.id, required this.name, required this.type, required this.status, this.latitude, this.longitude, this.currentLocation, this.activeAssignments, this.completedToday, this.lastActiveAt, this.utilizationRate}): super._();
  factory _NetworkAssetModel.fromJson(Map<String, dynamic> json) => _$NetworkAssetModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String type;
@override final  String status;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? currentLocation;
@override final  int? activeAssignments;
@override final  int? completedToday;
@override final  DateTime? lastActiveAt;
@override final  double? utilizationRate;

/// Create a copy of NetworkAssetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkAssetModelCopyWith<_NetworkAssetModel> get copyWith => __$NetworkAssetModelCopyWithImpl<_NetworkAssetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkAssetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkAssetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.activeAssignments, activeAssignments) || other.activeAssignments == activeAssignments)&&(identical(other.completedToday, completedToday) || other.completedToday == completedToday)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.utilizationRate, utilizationRate) || other.utilizationRate == utilizationRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,status,latitude,longitude,currentLocation,activeAssignments,completedToday,lastActiveAt,utilizationRate);

@override
String toString() {
  return 'NetworkAssetModel(id: $id, name: $name, type: $type, status: $status, latitude: $latitude, longitude: $longitude, currentLocation: $currentLocation, activeAssignments: $activeAssignments, completedToday: $completedToday, lastActiveAt: $lastActiveAt, utilizationRate: $utilizationRate)';
}


}

/// @nodoc
abstract mixin class _$NetworkAssetModelCopyWith<$Res> implements $NetworkAssetModelCopyWith<$Res> {
  factory _$NetworkAssetModelCopyWith(_NetworkAssetModel value, $Res Function(_NetworkAssetModel) _then) = __$NetworkAssetModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, String status, double? latitude, double? longitude, String? currentLocation, int? activeAssignments, int? completedToday, DateTime? lastActiveAt, double? utilizationRate
});




}
/// @nodoc
class __$NetworkAssetModelCopyWithImpl<$Res>
    implements _$NetworkAssetModelCopyWith<$Res> {
  __$NetworkAssetModelCopyWithImpl(this._self, this._then);

  final _NetworkAssetModel _self;
  final $Res Function(_NetworkAssetModel) _then;

/// Create a copy of NetworkAssetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? status = null,Object? latitude = freezed,Object? longitude = freezed,Object? currentLocation = freezed,Object? activeAssignments = freezed,Object? completedToday = freezed,Object? lastActiveAt = freezed,Object? utilizationRate = freezed,}) {
  return _then(_NetworkAssetModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,activeAssignments: freezed == activeAssignments ? _self.activeAssignments : activeAssignments // ignore: cast_nullable_to_non_nullable
as int?,completedToday: freezed == completedToday ? _self.completedToday : completedToday // ignore: cast_nullable_to_non_nullable
as int?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,utilizationRate: freezed == utilizationRate ? _self.utilizationRate : utilizationRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
