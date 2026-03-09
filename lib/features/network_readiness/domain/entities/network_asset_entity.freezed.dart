// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_asset_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkAssetEntity {

 String get id; String get name; AssetType get type; AssetStatus get status; double? get latitude; double? get longitude; String? get currentLocation; int? get activeAssignments; int? get completedToday; DateTime? get lastActiveAt; double? get utilizationRate;
/// Create a copy of NetworkAssetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkAssetEntityCopyWith<NetworkAssetEntity> get copyWith => _$NetworkAssetEntityCopyWithImpl<NetworkAssetEntity>(this as NetworkAssetEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkAssetEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.activeAssignments, activeAssignments) || other.activeAssignments == activeAssignments)&&(identical(other.completedToday, completedToday) || other.completedToday == completedToday)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.utilizationRate, utilizationRate) || other.utilizationRate == utilizationRate));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,type,status,latitude,longitude,currentLocation,activeAssignments,completedToday,lastActiveAt,utilizationRate);

@override
String toString() {
  return 'NetworkAssetEntity(id: $id, name: $name, type: $type, status: $status, latitude: $latitude, longitude: $longitude, currentLocation: $currentLocation, activeAssignments: $activeAssignments, completedToday: $completedToday, lastActiveAt: $lastActiveAt, utilizationRate: $utilizationRate)';
}


}

/// @nodoc
abstract mixin class $NetworkAssetEntityCopyWith<$Res>  {
  factory $NetworkAssetEntityCopyWith(NetworkAssetEntity value, $Res Function(NetworkAssetEntity) _then) = _$NetworkAssetEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, AssetType type, AssetStatus status, double? latitude, double? longitude, String? currentLocation, int? activeAssignments, int? completedToday, DateTime? lastActiveAt, double? utilizationRate
});




}
/// @nodoc
class _$NetworkAssetEntityCopyWithImpl<$Res>
    implements $NetworkAssetEntityCopyWith<$Res> {
  _$NetworkAssetEntityCopyWithImpl(this._self, this._then);

  final NetworkAssetEntity _self;
  final $Res Function(NetworkAssetEntity) _then;

/// Create a copy of NetworkAssetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? status = null,Object? latitude = freezed,Object? longitude = freezed,Object? currentLocation = freezed,Object? activeAssignments = freezed,Object? completedToday = freezed,Object? lastActiveAt = freezed,Object? utilizationRate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AssetStatus,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [NetworkAssetEntity].
extension NetworkAssetEntityPatterns on NetworkAssetEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkAssetEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkAssetEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkAssetEntity value)  $default,){
final _that = this;
switch (_that) {
case _NetworkAssetEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkAssetEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkAssetEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  AssetType type,  AssetStatus status,  double? latitude,  double? longitude,  String? currentLocation,  int? activeAssignments,  int? completedToday,  DateTime? lastActiveAt,  double? utilizationRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkAssetEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  AssetType type,  AssetStatus status,  double? latitude,  double? longitude,  String? currentLocation,  int? activeAssignments,  int? completedToday,  DateTime? lastActiveAt,  double? utilizationRate)  $default,) {final _that = this;
switch (_that) {
case _NetworkAssetEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  AssetType type,  AssetStatus status,  double? latitude,  double? longitude,  String? currentLocation,  int? activeAssignments,  int? completedToday,  DateTime? lastActiveAt,  double? utilizationRate)?  $default,) {final _that = this;
switch (_that) {
case _NetworkAssetEntity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.status,_that.latitude,_that.longitude,_that.currentLocation,_that.activeAssignments,_that.completedToday,_that.lastActiveAt,_that.utilizationRate);case _:
  return null;

}
}

}

/// @nodoc


class _NetworkAssetEntity implements NetworkAssetEntity {
  const _NetworkAssetEntity({required this.id, required this.name, required this.type, required this.status, required this.latitude, required this.longitude, this.currentLocation, this.activeAssignments, this.completedToday, this.lastActiveAt, this.utilizationRate});
  

@override final  String id;
@override final  String name;
@override final  AssetType type;
@override final  AssetStatus status;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? currentLocation;
@override final  int? activeAssignments;
@override final  int? completedToday;
@override final  DateTime? lastActiveAt;
@override final  double? utilizationRate;

/// Create a copy of NetworkAssetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkAssetEntityCopyWith<_NetworkAssetEntity> get copyWith => __$NetworkAssetEntityCopyWithImpl<_NetworkAssetEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkAssetEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.activeAssignments, activeAssignments) || other.activeAssignments == activeAssignments)&&(identical(other.completedToday, completedToday) || other.completedToday == completedToday)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.utilizationRate, utilizationRate) || other.utilizationRate == utilizationRate));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,type,status,latitude,longitude,currentLocation,activeAssignments,completedToday,lastActiveAt,utilizationRate);

@override
String toString() {
  return 'NetworkAssetEntity(id: $id, name: $name, type: $type, status: $status, latitude: $latitude, longitude: $longitude, currentLocation: $currentLocation, activeAssignments: $activeAssignments, completedToday: $completedToday, lastActiveAt: $lastActiveAt, utilizationRate: $utilizationRate)';
}


}

/// @nodoc
abstract mixin class _$NetworkAssetEntityCopyWith<$Res> implements $NetworkAssetEntityCopyWith<$Res> {
  factory _$NetworkAssetEntityCopyWith(_NetworkAssetEntity value, $Res Function(_NetworkAssetEntity) _then) = __$NetworkAssetEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, AssetType type, AssetStatus status, double? latitude, double? longitude, String? currentLocation, int? activeAssignments, int? completedToday, DateTime? lastActiveAt, double? utilizationRate
});




}
/// @nodoc
class __$NetworkAssetEntityCopyWithImpl<$Res>
    implements _$NetworkAssetEntityCopyWith<$Res> {
  __$NetworkAssetEntityCopyWithImpl(this._self, this._then);

  final _NetworkAssetEntity _self;
  final $Res Function(_NetworkAssetEntity) _then;

/// Create a copy of NetworkAssetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? status = null,Object? latitude = freezed,Object? longitude = freezed,Object? currentLocation = freezed,Object? activeAssignments = freezed,Object? completedToday = freezed,Object? lastActiveAt = freezed,Object? utilizationRate = freezed,}) {
  return _then(_NetworkAssetEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AssetType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AssetStatus,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
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
