// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'care_event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CareEventEntity {

 String get id; String get patientId; String get patientName; String get caregiverId; String get caregiverName; CareEventType get eventType; String get description; DateTime get scheduledAt; DateTime? get completedAt; VerificationStatusEntity get verificationStatus; double? get latitude; double? get longitude; int get duration; String? get notes; List<String>? get attachments; double get claimAmount; DateTime get createdAt;
/// Create a copy of CareEventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CareEventEntityCopyWith<CareEventEntity> get copyWith => _$CareEventEntityCopyWithImpl<CareEventEntity>(this as CareEventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CareEventEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.caregiverId, caregiverId) || other.caregiverId == caregiverId)&&(identical(other.caregiverName, caregiverName) || other.caregiverName == caregiverName)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.description, description) || other.description == description)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.claimAmount, claimAmount) || other.claimAmount == claimAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,caregiverId,caregiverName,eventType,description,scheduledAt,completedAt,verificationStatus,latitude,longitude,duration,notes,const DeepCollectionEquality().hash(attachments),claimAmount,createdAt);

@override
String toString() {
  return 'CareEventEntity(id: $id, patientId: $patientId, patientName: $patientName, caregiverId: $caregiverId, caregiverName: $caregiverName, eventType: $eventType, description: $description, scheduledAt: $scheduledAt, completedAt: $completedAt, verificationStatus: $verificationStatus, latitude: $latitude, longitude: $longitude, duration: $duration, notes: $notes, attachments: $attachments, claimAmount: $claimAmount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CareEventEntityCopyWith<$Res>  {
  factory $CareEventEntityCopyWith(CareEventEntity value, $Res Function(CareEventEntity) _then) = _$CareEventEntityCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, String caregiverId, String caregiverName, CareEventType eventType, String description, DateTime scheduledAt, DateTime? completedAt, VerificationStatusEntity verificationStatus, double? latitude, double? longitude, int duration, String? notes, List<String>? attachments, double claimAmount, DateTime createdAt
});


$VerificationStatusEntityCopyWith<$Res> get verificationStatus;

}
/// @nodoc
class _$CareEventEntityCopyWithImpl<$Res>
    implements $CareEventEntityCopyWith<$Res> {
  _$CareEventEntityCopyWithImpl(this._self, this._then);

  final CareEventEntity _self;
  final $Res Function(CareEventEntity) _then;

/// Create a copy of CareEventEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? caregiverId = null,Object? caregiverName = null,Object? eventType = null,Object? description = null,Object? scheduledAt = null,Object? completedAt = freezed,Object? verificationStatus = null,Object? latitude = freezed,Object? longitude = freezed,Object? duration = null,Object? notes = freezed,Object? attachments = freezed,Object? claimAmount = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,caregiverId: null == caregiverId ? _self.caregiverId : caregiverId // ignore: cast_nullable_to_non_nullable
as String,caregiverName: null == caregiverName ? _self.caregiverName : caregiverName // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as CareEventType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,verificationStatus: null == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as VerificationStatusEntity,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,claimAmount: null == claimAmount ? _self.claimAmount : claimAmount // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of CareEventEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerificationStatusEntityCopyWith<$Res> get verificationStatus {
  
  return $VerificationStatusEntityCopyWith<$Res>(_self.verificationStatus, (value) {
    return _then(_self.copyWith(verificationStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [CareEventEntity].
extension CareEventEntityPatterns on CareEventEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CareEventEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CareEventEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CareEventEntity value)  $default,){
final _that = this;
switch (_that) {
case _CareEventEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CareEventEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CareEventEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String caregiverId,  String caregiverName,  CareEventType eventType,  String description,  DateTime scheduledAt,  DateTime? completedAt,  VerificationStatusEntity verificationStatus,  double? latitude,  double? longitude,  int duration,  String? notes,  List<String>? attachments,  double claimAmount,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CareEventEntity() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.caregiverId,_that.caregiverName,_that.eventType,_that.description,_that.scheduledAt,_that.completedAt,_that.verificationStatus,_that.latitude,_that.longitude,_that.duration,_that.notes,_that.attachments,_that.claimAmount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String caregiverId,  String caregiverName,  CareEventType eventType,  String description,  DateTime scheduledAt,  DateTime? completedAt,  VerificationStatusEntity verificationStatus,  double? latitude,  double? longitude,  int duration,  String? notes,  List<String>? attachments,  double claimAmount,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CareEventEntity():
return $default(_that.id,_that.patientId,_that.patientName,_that.caregiverId,_that.caregiverName,_that.eventType,_that.description,_that.scheduledAt,_that.completedAt,_that.verificationStatus,_that.latitude,_that.longitude,_that.duration,_that.notes,_that.attachments,_that.claimAmount,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  String caregiverId,  String caregiverName,  CareEventType eventType,  String description,  DateTime scheduledAt,  DateTime? completedAt,  VerificationStatusEntity verificationStatus,  double? latitude,  double? longitude,  int duration,  String? notes,  List<String>? attachments,  double claimAmount,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CareEventEntity() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.caregiverId,_that.caregiverName,_that.eventType,_that.description,_that.scheduledAt,_that.completedAt,_that.verificationStatus,_that.latitude,_that.longitude,_that.duration,_that.notes,_that.attachments,_that.claimAmount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _CareEventEntity implements CareEventEntity {
  const _CareEventEntity({required this.id, required this.patientId, required this.patientName, required this.caregiverId, required this.caregiverName, required this.eventType, required this.description, required this.scheduledAt, required this.completedAt, required this.verificationStatus, required this.latitude, required this.longitude, required this.duration, this.notes, final  List<String>? attachments, required this.claimAmount, required this.createdAt}): _attachments = attachments;
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  String caregiverId;
@override final  String caregiverName;
@override final  CareEventType eventType;
@override final  String description;
@override final  DateTime scheduledAt;
@override final  DateTime? completedAt;
@override final  VerificationStatusEntity verificationStatus;
@override final  double? latitude;
@override final  double? longitude;
@override final  int duration;
@override final  String? notes;
 final  List<String>? _attachments;
@override List<String>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double claimAmount;
@override final  DateTime createdAt;

/// Create a copy of CareEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CareEventEntityCopyWith<_CareEventEntity> get copyWith => __$CareEventEntityCopyWithImpl<_CareEventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CareEventEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.caregiverId, caregiverId) || other.caregiverId == caregiverId)&&(identical(other.caregiverName, caregiverName) || other.caregiverName == caregiverName)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.description, description) || other.description == description)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.claimAmount, claimAmount) || other.claimAmount == claimAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,caregiverId,caregiverName,eventType,description,scheduledAt,completedAt,verificationStatus,latitude,longitude,duration,notes,const DeepCollectionEquality().hash(_attachments),claimAmount,createdAt);

@override
String toString() {
  return 'CareEventEntity(id: $id, patientId: $patientId, patientName: $patientName, caregiverId: $caregiverId, caregiverName: $caregiverName, eventType: $eventType, description: $description, scheduledAt: $scheduledAt, completedAt: $completedAt, verificationStatus: $verificationStatus, latitude: $latitude, longitude: $longitude, duration: $duration, notes: $notes, attachments: $attachments, claimAmount: $claimAmount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CareEventEntityCopyWith<$Res> implements $CareEventEntityCopyWith<$Res> {
  factory _$CareEventEntityCopyWith(_CareEventEntity value, $Res Function(_CareEventEntity) _then) = __$CareEventEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, String caregiverId, String caregiverName, CareEventType eventType, String description, DateTime scheduledAt, DateTime? completedAt, VerificationStatusEntity verificationStatus, double? latitude, double? longitude, int duration, String? notes, List<String>? attachments, double claimAmount, DateTime createdAt
});


@override $VerificationStatusEntityCopyWith<$Res> get verificationStatus;

}
/// @nodoc
class __$CareEventEntityCopyWithImpl<$Res>
    implements _$CareEventEntityCopyWith<$Res> {
  __$CareEventEntityCopyWithImpl(this._self, this._then);

  final _CareEventEntity _self;
  final $Res Function(_CareEventEntity) _then;

/// Create a copy of CareEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? caregiverId = null,Object? caregiverName = null,Object? eventType = null,Object? description = null,Object? scheduledAt = null,Object? completedAt = freezed,Object? verificationStatus = null,Object? latitude = freezed,Object? longitude = freezed,Object? duration = null,Object? notes = freezed,Object? attachments = freezed,Object? claimAmount = null,Object? createdAt = null,}) {
  return _then(_CareEventEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,caregiverId: null == caregiverId ? _self.caregiverId : caregiverId // ignore: cast_nullable_to_non_nullable
as String,caregiverName: null == caregiverName ? _self.caregiverName : caregiverName // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as CareEventType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,verificationStatus: null == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as VerificationStatusEntity,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,claimAmount: null == claimAmount ? _self.claimAmount : claimAmount // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of CareEventEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerificationStatusEntityCopyWith<$Res> get verificationStatus {
  
  return $VerificationStatusEntityCopyWith<$Res>(_self.verificationStatus, (value) {
    return _then(_self.copyWith(verificationStatus: value));
  });
}
}

// dart format on
