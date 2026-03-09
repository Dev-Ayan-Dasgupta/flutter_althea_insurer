// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adherence_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdherenceRecordModel {

 String get id; String get medicationId; String get medicationName; String get patientId; String get patientName; DateTime get scheduledTime; DateTime? get actualTime; String get status; String? get reason; String? get notes; bool? get verifiedByCaregiver;
/// Create a copy of AdherenceRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdherenceRecordModelCopyWith<AdherenceRecordModel> get copyWith => _$AdherenceRecordModelCopyWithImpl<AdherenceRecordModel>(this as AdherenceRecordModel, _$identity);

  /// Serializes this AdherenceRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdherenceRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.medicationId, medicationId) || other.medicationId == medicationId)&&(identical(other.medicationName, medicationName) || other.medicationName == medicationName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.scheduledTime, scheduledTime) || other.scheduledTime == scheduledTime)&&(identical(other.actualTime, actualTime) || other.actualTime == actualTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.verifiedByCaregiver, verifiedByCaregiver) || other.verifiedByCaregiver == verifiedByCaregiver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,medicationId,medicationName,patientId,patientName,scheduledTime,actualTime,status,reason,notes,verifiedByCaregiver);

@override
String toString() {
  return 'AdherenceRecordModel(id: $id, medicationId: $medicationId, medicationName: $medicationName, patientId: $patientId, patientName: $patientName, scheduledTime: $scheduledTime, actualTime: $actualTime, status: $status, reason: $reason, notes: $notes, verifiedByCaregiver: $verifiedByCaregiver)';
}


}

/// @nodoc
abstract mixin class $AdherenceRecordModelCopyWith<$Res>  {
  factory $AdherenceRecordModelCopyWith(AdherenceRecordModel value, $Res Function(AdherenceRecordModel) _then) = _$AdherenceRecordModelCopyWithImpl;
@useResult
$Res call({
 String id, String medicationId, String medicationName, String patientId, String patientName, DateTime scheduledTime, DateTime? actualTime, String status, String? reason, String? notes, bool? verifiedByCaregiver
});




}
/// @nodoc
class _$AdherenceRecordModelCopyWithImpl<$Res>
    implements $AdherenceRecordModelCopyWith<$Res> {
  _$AdherenceRecordModelCopyWithImpl(this._self, this._then);

  final AdherenceRecordModel _self;
  final $Res Function(AdherenceRecordModel) _then;

/// Create a copy of AdherenceRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? medicationId = null,Object? medicationName = null,Object? patientId = null,Object? patientName = null,Object? scheduledTime = null,Object? actualTime = freezed,Object? status = null,Object? reason = freezed,Object? notes = freezed,Object? verifiedByCaregiver = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,medicationId: null == medicationId ? _self.medicationId : medicationId // ignore: cast_nullable_to_non_nullable
as String,medicationName: null == medicationName ? _self.medicationName : medicationName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,scheduledTime: null == scheduledTime ? _self.scheduledTime : scheduledTime // ignore: cast_nullable_to_non_nullable
as DateTime,actualTime: freezed == actualTime ? _self.actualTime : actualTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,verifiedByCaregiver: freezed == verifiedByCaregiver ? _self.verifiedByCaregiver : verifiedByCaregiver // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdherenceRecordModel].
extension AdherenceRecordModelPatterns on AdherenceRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdherenceRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdherenceRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdherenceRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _AdherenceRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdherenceRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdherenceRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String medicationId,  String medicationName,  String patientId,  String patientName,  DateTime scheduledTime,  DateTime? actualTime,  String status,  String? reason,  String? notes,  bool? verifiedByCaregiver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdherenceRecordModel() when $default != null:
return $default(_that.id,_that.medicationId,_that.medicationName,_that.patientId,_that.patientName,_that.scheduledTime,_that.actualTime,_that.status,_that.reason,_that.notes,_that.verifiedByCaregiver);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String medicationId,  String medicationName,  String patientId,  String patientName,  DateTime scheduledTime,  DateTime? actualTime,  String status,  String? reason,  String? notes,  bool? verifiedByCaregiver)  $default,) {final _that = this;
switch (_that) {
case _AdherenceRecordModel():
return $default(_that.id,_that.medicationId,_that.medicationName,_that.patientId,_that.patientName,_that.scheduledTime,_that.actualTime,_that.status,_that.reason,_that.notes,_that.verifiedByCaregiver);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String medicationId,  String medicationName,  String patientId,  String patientName,  DateTime scheduledTime,  DateTime? actualTime,  String status,  String? reason,  String? notes,  bool? verifiedByCaregiver)?  $default,) {final _that = this;
switch (_that) {
case _AdherenceRecordModel() when $default != null:
return $default(_that.id,_that.medicationId,_that.medicationName,_that.patientId,_that.patientName,_that.scheduledTime,_that.actualTime,_that.status,_that.reason,_that.notes,_that.verifiedByCaregiver);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdherenceRecordModel extends AdherenceRecordModel {
  const _AdherenceRecordModel({required this.id, required this.medicationId, required this.medicationName, required this.patientId, required this.patientName, required this.scheduledTime, this.actualTime, required this.status, this.reason, this.notes, this.verifiedByCaregiver}): super._();
  factory _AdherenceRecordModel.fromJson(Map<String, dynamic> json) => _$AdherenceRecordModelFromJson(json);

@override final  String id;
@override final  String medicationId;
@override final  String medicationName;
@override final  String patientId;
@override final  String patientName;
@override final  DateTime scheduledTime;
@override final  DateTime? actualTime;
@override final  String status;
@override final  String? reason;
@override final  String? notes;
@override final  bool? verifiedByCaregiver;

/// Create a copy of AdherenceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdherenceRecordModelCopyWith<_AdherenceRecordModel> get copyWith => __$AdherenceRecordModelCopyWithImpl<_AdherenceRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdherenceRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdherenceRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.medicationId, medicationId) || other.medicationId == medicationId)&&(identical(other.medicationName, medicationName) || other.medicationName == medicationName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.scheduledTime, scheduledTime) || other.scheduledTime == scheduledTime)&&(identical(other.actualTime, actualTime) || other.actualTime == actualTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.verifiedByCaregiver, verifiedByCaregiver) || other.verifiedByCaregiver == verifiedByCaregiver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,medicationId,medicationName,patientId,patientName,scheduledTime,actualTime,status,reason,notes,verifiedByCaregiver);

@override
String toString() {
  return 'AdherenceRecordModel(id: $id, medicationId: $medicationId, medicationName: $medicationName, patientId: $patientId, patientName: $patientName, scheduledTime: $scheduledTime, actualTime: $actualTime, status: $status, reason: $reason, notes: $notes, verifiedByCaregiver: $verifiedByCaregiver)';
}


}

/// @nodoc
abstract mixin class _$AdherenceRecordModelCopyWith<$Res> implements $AdherenceRecordModelCopyWith<$Res> {
  factory _$AdherenceRecordModelCopyWith(_AdherenceRecordModel value, $Res Function(_AdherenceRecordModel) _then) = __$AdherenceRecordModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String medicationId, String medicationName, String patientId, String patientName, DateTime scheduledTime, DateTime? actualTime, String status, String? reason, String? notes, bool? verifiedByCaregiver
});




}
/// @nodoc
class __$AdherenceRecordModelCopyWithImpl<$Res>
    implements _$AdherenceRecordModelCopyWith<$Res> {
  __$AdherenceRecordModelCopyWithImpl(this._self, this._then);

  final _AdherenceRecordModel _self;
  final $Res Function(_AdherenceRecordModel) _then;

/// Create a copy of AdherenceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? medicationId = null,Object? medicationName = null,Object? patientId = null,Object? patientName = null,Object? scheduledTime = null,Object? actualTime = freezed,Object? status = null,Object? reason = freezed,Object? notes = freezed,Object? verifiedByCaregiver = freezed,}) {
  return _then(_AdherenceRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,medicationId: null == medicationId ? _self.medicationId : medicationId // ignore: cast_nullable_to_non_nullable
as String,medicationName: null == medicationName ? _self.medicationName : medicationName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,scheduledTime: null == scheduledTime ? _self.scheduledTime : scheduledTime // ignore: cast_nullable_to_non_nullable
as DateTime,actualTime: freezed == actualTime ? _self.actualTime : actualTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,verifiedByCaregiver: freezed == verifiedByCaregiver ? _self.verifiedByCaregiver : verifiedByCaregiver // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
