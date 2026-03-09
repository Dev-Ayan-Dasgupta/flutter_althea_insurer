// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserActivityModel {

 String get id; String get userId; String get activityType; String get description; DateTime get timestamp; String? get targetId; String? get targetType; Map<String, dynamic>? get metadata;
/// Create a copy of UserActivityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserActivityModelCopyWith<UserActivityModel> get copyWith => _$UserActivityModelCopyWithImpl<UserActivityModel>(this as UserActivityModel, _$identity);

  /// Serializes this UserActivityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.description, description) || other.description == description)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,activityType,description,timestamp,targetId,targetType,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'UserActivityModel(id: $id, userId: $userId, activityType: $activityType, description: $description, timestamp: $timestamp, targetId: $targetId, targetType: $targetType, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $UserActivityModelCopyWith<$Res>  {
  factory $UserActivityModelCopyWith(UserActivityModel value, $Res Function(UserActivityModel) _then) = _$UserActivityModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String activityType, String description, DateTime timestamp, String? targetId, String? targetType, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$UserActivityModelCopyWithImpl<$Res>
    implements $UserActivityModelCopyWith<$Res> {
  _$UserActivityModelCopyWithImpl(this._self, this._then);

  final UserActivityModel _self;
  final $Res Function(UserActivityModel) _then;

/// Create a copy of UserActivityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? activityType = null,Object? description = null,Object? timestamp = null,Object? targetId = freezed,Object? targetType = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserActivityModel].
extension UserActivityModelPatterns on UserActivityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserActivityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserActivityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserActivityModel value)  $default,){
final _that = this;
switch (_that) {
case _UserActivityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserActivityModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserActivityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String activityType,  String description,  DateTime timestamp,  String? targetId,  String? targetType,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserActivityModel() when $default != null:
return $default(_that.id,_that.userId,_that.activityType,_that.description,_that.timestamp,_that.targetId,_that.targetType,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String activityType,  String description,  DateTime timestamp,  String? targetId,  String? targetType,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _UserActivityModel():
return $default(_that.id,_that.userId,_that.activityType,_that.description,_that.timestamp,_that.targetId,_that.targetType,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String activityType,  String description,  DateTime timestamp,  String? targetId,  String? targetType,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _UserActivityModel() when $default != null:
return $default(_that.id,_that.userId,_that.activityType,_that.description,_that.timestamp,_that.targetId,_that.targetType,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserActivityModel extends UserActivityModel {
  const _UserActivityModel({required this.id, required this.userId, required this.activityType, required this.description, required this.timestamp, this.targetId, this.targetType, final  Map<String, dynamic>? metadata}): _metadata = metadata,super._();
  factory _UserActivityModel.fromJson(Map<String, dynamic> json) => _$UserActivityModelFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String activityType;
@override final  String description;
@override final  DateTime timestamp;
@override final  String? targetId;
@override final  String? targetType;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of UserActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserActivityModelCopyWith<_UserActivityModel> get copyWith => __$UserActivityModelCopyWithImpl<_UserActivityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserActivityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.description, description) || other.description == description)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,activityType,description,timestamp,targetId,targetType,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'UserActivityModel(id: $id, userId: $userId, activityType: $activityType, description: $description, timestamp: $timestamp, targetId: $targetId, targetType: $targetType, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$UserActivityModelCopyWith<$Res> implements $UserActivityModelCopyWith<$Res> {
  factory _$UserActivityModelCopyWith(_UserActivityModel value, $Res Function(_UserActivityModel) _then) = __$UserActivityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String activityType, String description, DateTime timestamp, String? targetId, String? targetType, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$UserActivityModelCopyWithImpl<$Res>
    implements _$UserActivityModelCopyWith<$Res> {
  __$UserActivityModelCopyWithImpl(this._self, this._then);

  final _UserActivityModel _self;
  final $Res Function(_UserActivityModel) _then;

/// Create a copy of UserActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? activityType = null,Object? description = null,Object? timestamp = null,Object? targetId = freezed,Object? targetType = freezed,Object? metadata = freezed,}) {
  return _then(_UserActivityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
