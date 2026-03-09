// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preventive_action_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreventiveActionModel {

 String get id; String get actionType; String get actionName; String get cohortType; String get patientName; String get patientId; String get status; DateTime get scheduledFor; String? get assignedTo; String? get notes; DateTime? get completedAt;
/// Create a copy of PreventiveActionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreventiveActionModelCopyWith<PreventiveActionModel> get copyWith => _$PreventiveActionModelCopyWithImpl<PreventiveActionModel>(this as PreventiveActionModel, _$identity);

  /// Serializes this PreventiveActionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreventiveActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.actionName, actionName) || other.actionName == actionName)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actionType,actionName,cohortType,patientName,patientId,status,scheduledFor,assignedTo,notes,completedAt);

@override
String toString() {
  return 'PreventiveActionModel(id: $id, actionType: $actionType, actionName: $actionName, cohortType: $cohortType, patientName: $patientName, patientId: $patientId, status: $status, scheduledFor: $scheduledFor, assignedTo: $assignedTo, notes: $notes, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $PreventiveActionModelCopyWith<$Res>  {
  factory $PreventiveActionModelCopyWith(PreventiveActionModel value, $Res Function(PreventiveActionModel) _then) = _$PreventiveActionModelCopyWithImpl;
@useResult
$Res call({
 String id, String actionType, String actionName, String cohortType, String patientName, String patientId, String status, DateTime scheduledFor, String? assignedTo, String? notes, DateTime? completedAt
});




}
/// @nodoc
class _$PreventiveActionModelCopyWithImpl<$Res>
    implements $PreventiveActionModelCopyWith<$Res> {
  _$PreventiveActionModelCopyWithImpl(this._self, this._then);

  final PreventiveActionModel _self;
  final $Res Function(PreventiveActionModel) _then;

/// Create a copy of PreventiveActionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? actionType = null,Object? actionName = null,Object? cohortType = null,Object? patientName = null,Object? patientId = null,Object? status = null,Object? scheduledFor = null,Object? assignedTo = freezed,Object? notes = freezed,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String,actionName: null == actionName ? _self.actionName : actionName // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,scheduledFor: null == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PreventiveActionModel].
extension PreventiveActionModelPatterns on PreventiveActionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreventiveActionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreventiveActionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreventiveActionModel value)  $default,){
final _that = this;
switch (_that) {
case _PreventiveActionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreventiveActionModel value)?  $default,){
final _that = this;
switch (_that) {
case _PreventiveActionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String actionType,  String actionName,  String cohortType,  String patientName,  String patientId,  String status,  DateTime scheduledFor,  String? assignedTo,  String? notes,  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreventiveActionModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String actionType,  String actionName,  String cohortType,  String patientName,  String patientId,  String status,  DateTime scheduledFor,  String? assignedTo,  String? notes,  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _PreventiveActionModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String actionType,  String actionName,  String cohortType,  String patientName,  String patientId,  String status,  DateTime scheduledFor,  String? assignedTo,  String? notes,  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _PreventiveActionModel() when $default != null:
return $default(_that.id,_that.actionType,_that.actionName,_that.cohortType,_that.patientName,_that.patientId,_that.status,_that.scheduledFor,_that.assignedTo,_that.notes,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PreventiveActionModel extends PreventiveActionModel {
  const _PreventiveActionModel({required this.id, required this.actionType, required this.actionName, required this.cohortType, required this.patientName, required this.patientId, required this.status, required this.scheduledFor, this.assignedTo, this.notes, this.completedAt}): super._();
  factory _PreventiveActionModel.fromJson(Map<String, dynamic> json) => _$PreventiveActionModelFromJson(json);

@override final  String id;
@override final  String actionType;
@override final  String actionName;
@override final  String cohortType;
@override final  String patientName;
@override final  String patientId;
@override final  String status;
@override final  DateTime scheduledFor;
@override final  String? assignedTo;
@override final  String? notes;
@override final  DateTime? completedAt;

/// Create a copy of PreventiveActionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreventiveActionModelCopyWith<_PreventiveActionModel> get copyWith => __$PreventiveActionModelCopyWithImpl<_PreventiveActionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreventiveActionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreventiveActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.actionName, actionName) || other.actionName == actionName)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actionType,actionName,cohortType,patientName,patientId,status,scheduledFor,assignedTo,notes,completedAt);

@override
String toString() {
  return 'PreventiveActionModel(id: $id, actionType: $actionType, actionName: $actionName, cohortType: $cohortType, patientName: $patientName, patientId: $patientId, status: $status, scheduledFor: $scheduledFor, assignedTo: $assignedTo, notes: $notes, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$PreventiveActionModelCopyWith<$Res> implements $PreventiveActionModelCopyWith<$Res> {
  factory _$PreventiveActionModelCopyWith(_PreventiveActionModel value, $Res Function(_PreventiveActionModel) _then) = __$PreventiveActionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String actionType, String actionName, String cohortType, String patientName, String patientId, String status, DateTime scheduledFor, String? assignedTo, String? notes, DateTime? completedAt
});




}
/// @nodoc
class __$PreventiveActionModelCopyWithImpl<$Res>
    implements _$PreventiveActionModelCopyWith<$Res> {
  __$PreventiveActionModelCopyWithImpl(this._self, this._then);

  final _PreventiveActionModel _self;
  final $Res Function(_PreventiveActionModel) _then;

/// Create a copy of PreventiveActionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? actionType = null,Object? actionName = null,Object? cohortType = null,Object? patientName = null,Object? patientId = null,Object? status = null,Object? scheduledFor = null,Object? assignedTo = freezed,Object? notes = freezed,Object? completedAt = freezed,}) {
  return _then(_PreventiveActionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String,actionName: null == actionName ? _self.actionName : actionName // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,scheduledFor: null == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
