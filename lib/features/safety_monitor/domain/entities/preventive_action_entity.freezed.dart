// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preventive_action_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PreventiveActionEntity {

 String get id; ActionType get actionType; String get actionName; CohortType get cohortType; String get patientName; String get patientId; ActionStatus get status; DateTime get scheduledFor; String? get assignedTo; String? get notes; DateTime? get completedAt;
/// Create a copy of PreventiveActionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreventiveActionEntityCopyWith<PreventiveActionEntity> get copyWith => _$PreventiveActionEntityCopyWithImpl<PreventiveActionEntity>(this as PreventiveActionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreventiveActionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.actionName, actionName) || other.actionName == actionName)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,actionType,actionName,cohortType,patientName,patientId,status,scheduledFor,assignedTo,notes,completedAt);

@override
String toString() {
  return 'PreventiveActionEntity(id: $id, actionType: $actionType, actionName: $actionName, cohortType: $cohortType, patientName: $patientName, patientId: $patientId, status: $status, scheduledFor: $scheduledFor, assignedTo: $assignedTo, notes: $notes, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $PreventiveActionEntityCopyWith<$Res>  {
  factory $PreventiveActionEntityCopyWith(PreventiveActionEntity value, $Res Function(PreventiveActionEntity) _then) = _$PreventiveActionEntityCopyWithImpl;
@useResult
$Res call({
 String id, ActionType actionType, String actionName, CohortType cohortType, String patientName, String patientId, ActionStatus status, DateTime scheduledFor, String? assignedTo, String? notes, DateTime? completedAt
});




}
/// @nodoc
class _$PreventiveActionEntityCopyWithImpl<$Res>
    implements $PreventiveActionEntityCopyWith<$Res> {
  _$PreventiveActionEntityCopyWithImpl(this._self, this._then);

  final PreventiveActionEntity _self;
  final $Res Function(PreventiveActionEntity) _then;

/// Create a copy of PreventiveActionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? actionType = null,Object? actionName = null,Object? cohortType = null,Object? patientName = null,Object? patientId = null,Object? status = null,Object? scheduledFor = null,Object? assignedTo = freezed,Object? notes = freezed,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as ActionType,actionName: null == actionName ? _self.actionName : actionName // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as CohortType,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ActionStatus,scheduledFor: null == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PreventiveActionEntity].
extension PreventiveActionEntityPatterns on PreventiveActionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreventiveActionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreventiveActionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreventiveActionEntity value)  $default,){
final _that = this;
switch (_that) {
case _PreventiveActionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreventiveActionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PreventiveActionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  ActionType actionType,  String actionName,  CohortType cohortType,  String patientName,  String patientId,  ActionStatus status,  DateTime scheduledFor,  String? assignedTo,  String? notes,  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreventiveActionEntity() when $default != null:
return $default(_that.id,_that.actionType,_that.actionName,_that.cohortType,_that.patientName,_that.patientId,_that.status,_that.scheduledFor,_that.assignedTo,_that.notes,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  ActionType actionType,  String actionName,  CohortType cohortType,  String patientName,  String patientId,  ActionStatus status,  DateTime scheduledFor,  String? assignedTo,  String? notes,  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _PreventiveActionEntity():
return $default(_that.id,_that.actionType,_that.actionName,_that.cohortType,_that.patientName,_that.patientId,_that.status,_that.scheduledFor,_that.assignedTo,_that.notes,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  ActionType actionType,  String actionName,  CohortType cohortType,  String patientName,  String patientId,  ActionStatus status,  DateTime scheduledFor,  String? assignedTo,  String? notes,  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _PreventiveActionEntity() when $default != null:
return $default(_that.id,_that.actionType,_that.actionName,_that.cohortType,_that.patientName,_that.patientId,_that.status,_that.scheduledFor,_that.assignedTo,_that.notes,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc


class _PreventiveActionEntity implements PreventiveActionEntity {
  const _PreventiveActionEntity({required this.id, required this.actionType, required this.actionName, required this.cohortType, required this.patientName, required this.patientId, required this.status, required this.scheduledFor, this.assignedTo, this.notes, this.completedAt});
  

@override final  String id;
@override final  ActionType actionType;
@override final  String actionName;
@override final  CohortType cohortType;
@override final  String patientName;
@override final  String patientId;
@override final  ActionStatus status;
@override final  DateTime scheduledFor;
@override final  String? assignedTo;
@override final  String? notes;
@override final  DateTime? completedAt;

/// Create a copy of PreventiveActionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreventiveActionEntityCopyWith<_PreventiveActionEntity> get copyWith => __$PreventiveActionEntityCopyWithImpl<_PreventiveActionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreventiveActionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.actionName, actionName) || other.actionName == actionName)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,actionType,actionName,cohortType,patientName,patientId,status,scheduledFor,assignedTo,notes,completedAt);

@override
String toString() {
  return 'PreventiveActionEntity(id: $id, actionType: $actionType, actionName: $actionName, cohortType: $cohortType, patientName: $patientName, patientId: $patientId, status: $status, scheduledFor: $scheduledFor, assignedTo: $assignedTo, notes: $notes, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$PreventiveActionEntityCopyWith<$Res> implements $PreventiveActionEntityCopyWith<$Res> {
  factory _$PreventiveActionEntityCopyWith(_PreventiveActionEntity value, $Res Function(_PreventiveActionEntity) _then) = __$PreventiveActionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, ActionType actionType, String actionName, CohortType cohortType, String patientName, String patientId, ActionStatus status, DateTime scheduledFor, String? assignedTo, String? notes, DateTime? completedAt
});




}
/// @nodoc
class __$PreventiveActionEntityCopyWithImpl<$Res>
    implements _$PreventiveActionEntityCopyWith<$Res> {
  __$PreventiveActionEntityCopyWithImpl(this._self, this._then);

  final _PreventiveActionEntity _self;
  final $Res Function(_PreventiveActionEntity) _then;

/// Create a copy of PreventiveActionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? actionType = null,Object? actionName = null,Object? cohortType = null,Object? patientName = null,Object? patientId = null,Object? status = null,Object? scheduledFor = null,Object? assignedTo = freezed,Object? notes = freezed,Object? completedAt = freezed,}) {
  return _then(_PreventiveActionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as ActionType,actionName: null == actionName ? _self.actionName : actionName // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as CohortType,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ActionStatus,scheduledFor: null == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
