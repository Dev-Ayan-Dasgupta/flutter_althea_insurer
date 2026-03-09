// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intervention_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InterventionModel {

 String get id; String get type; String get interventionName; String get patientId; String get patientName; String get description; String get expectedOutcome; String get status; DateTime get createdAt; DateTime? get scheduledFor; DateTime? get completedAt; String? get assignedTo; String? get outcome;
/// Create a copy of InterventionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterventionModelCopyWith<InterventionModel> get copyWith => _$InterventionModelCopyWithImpl<InterventionModel>(this as InterventionModel, _$identity);

  /// Serializes this InterventionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterventionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.interventionName, interventionName) || other.interventionName == interventionName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.description, description) || other.description == description)&&(identical(other.expectedOutcome, expectedOutcome) || other.expectedOutcome == expectedOutcome)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.outcome, outcome) || other.outcome == outcome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,interventionName,patientId,patientName,description,expectedOutcome,status,createdAt,scheduledFor,completedAt,assignedTo,outcome);

@override
String toString() {
  return 'InterventionModel(id: $id, type: $type, interventionName: $interventionName, patientId: $patientId, patientName: $patientName, description: $description, expectedOutcome: $expectedOutcome, status: $status, createdAt: $createdAt, scheduledFor: $scheduledFor, completedAt: $completedAt, assignedTo: $assignedTo, outcome: $outcome)';
}


}

/// @nodoc
abstract mixin class $InterventionModelCopyWith<$Res>  {
  factory $InterventionModelCopyWith(InterventionModel value, $Res Function(InterventionModel) _then) = _$InterventionModelCopyWithImpl;
@useResult
$Res call({
 String id, String type, String interventionName, String patientId, String patientName, String description, String expectedOutcome, String status, DateTime createdAt, DateTime? scheduledFor, DateTime? completedAt, String? assignedTo, String? outcome
});




}
/// @nodoc
class _$InterventionModelCopyWithImpl<$Res>
    implements $InterventionModelCopyWith<$Res> {
  _$InterventionModelCopyWithImpl(this._self, this._then);

  final InterventionModel _self;
  final $Res Function(InterventionModel) _then;

/// Create a copy of InterventionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? interventionName = null,Object? patientId = null,Object? patientName = null,Object? description = null,Object? expectedOutcome = null,Object? status = null,Object? createdAt = null,Object? scheduledFor = freezed,Object? completedAt = freezed,Object? assignedTo = freezed,Object? outcome = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,interventionName: null == interventionName ? _self.interventionName : interventionName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,expectedOutcome: null == expectedOutcome ? _self.expectedOutcome : expectedOutcome // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduledFor: freezed == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,outcome: freezed == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InterventionModel].
extension InterventionModelPatterns on InterventionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterventionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterventionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterventionModel value)  $default,){
final _that = this;
switch (_that) {
case _InterventionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterventionModel value)?  $default,){
final _that = this;
switch (_that) {
case _InterventionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String interventionName,  String patientId,  String patientName,  String description,  String expectedOutcome,  String status,  DateTime createdAt,  DateTime? scheduledFor,  DateTime? completedAt,  String? assignedTo,  String? outcome)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterventionModel() when $default != null:
return $default(_that.id,_that.type,_that.interventionName,_that.patientId,_that.patientName,_that.description,_that.expectedOutcome,_that.status,_that.createdAt,_that.scheduledFor,_that.completedAt,_that.assignedTo,_that.outcome);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String interventionName,  String patientId,  String patientName,  String description,  String expectedOutcome,  String status,  DateTime createdAt,  DateTime? scheduledFor,  DateTime? completedAt,  String? assignedTo,  String? outcome)  $default,) {final _that = this;
switch (_that) {
case _InterventionModel():
return $default(_that.id,_that.type,_that.interventionName,_that.patientId,_that.patientName,_that.description,_that.expectedOutcome,_that.status,_that.createdAt,_that.scheduledFor,_that.completedAt,_that.assignedTo,_that.outcome);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String interventionName,  String patientId,  String patientName,  String description,  String expectedOutcome,  String status,  DateTime createdAt,  DateTime? scheduledFor,  DateTime? completedAt,  String? assignedTo,  String? outcome)?  $default,) {final _that = this;
switch (_that) {
case _InterventionModel() when $default != null:
return $default(_that.id,_that.type,_that.interventionName,_that.patientId,_that.patientName,_that.description,_that.expectedOutcome,_that.status,_that.createdAt,_that.scheduledFor,_that.completedAt,_that.assignedTo,_that.outcome);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterventionModel extends InterventionModel {
  const _InterventionModel({required this.id, required this.type, required this.interventionName, required this.patientId, required this.patientName, required this.description, required this.expectedOutcome, required this.status, required this.createdAt, this.scheduledFor, this.completedAt, this.assignedTo, this.outcome}): super._();
  factory _InterventionModel.fromJson(Map<String, dynamic> json) => _$InterventionModelFromJson(json);

@override final  String id;
@override final  String type;
@override final  String interventionName;
@override final  String patientId;
@override final  String patientName;
@override final  String description;
@override final  String expectedOutcome;
@override final  String status;
@override final  DateTime createdAt;
@override final  DateTime? scheduledFor;
@override final  DateTime? completedAt;
@override final  String? assignedTo;
@override final  String? outcome;

/// Create a copy of InterventionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterventionModelCopyWith<_InterventionModel> get copyWith => __$InterventionModelCopyWithImpl<_InterventionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterventionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterventionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.interventionName, interventionName) || other.interventionName == interventionName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.description, description) || other.description == description)&&(identical(other.expectedOutcome, expectedOutcome) || other.expectedOutcome == expectedOutcome)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.outcome, outcome) || other.outcome == outcome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,interventionName,patientId,patientName,description,expectedOutcome,status,createdAt,scheduledFor,completedAt,assignedTo,outcome);

@override
String toString() {
  return 'InterventionModel(id: $id, type: $type, interventionName: $interventionName, patientId: $patientId, patientName: $patientName, description: $description, expectedOutcome: $expectedOutcome, status: $status, createdAt: $createdAt, scheduledFor: $scheduledFor, completedAt: $completedAt, assignedTo: $assignedTo, outcome: $outcome)';
}


}

/// @nodoc
abstract mixin class _$InterventionModelCopyWith<$Res> implements $InterventionModelCopyWith<$Res> {
  factory _$InterventionModelCopyWith(_InterventionModel value, $Res Function(_InterventionModel) _then) = __$InterventionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String interventionName, String patientId, String patientName, String description, String expectedOutcome, String status, DateTime createdAt, DateTime? scheduledFor, DateTime? completedAt, String? assignedTo, String? outcome
});




}
/// @nodoc
class __$InterventionModelCopyWithImpl<$Res>
    implements _$InterventionModelCopyWith<$Res> {
  __$InterventionModelCopyWithImpl(this._self, this._then);

  final _InterventionModel _self;
  final $Res Function(_InterventionModel) _then;

/// Create a copy of InterventionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? interventionName = null,Object? patientId = null,Object? patientName = null,Object? description = null,Object? expectedOutcome = null,Object? status = null,Object? createdAt = null,Object? scheduledFor = freezed,Object? completedAt = freezed,Object? assignedTo = freezed,Object? outcome = freezed,}) {
  return _then(_InterventionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,interventionName: null == interventionName ? _self.interventionName : interventionName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,expectedOutcome: null == expectedOutcome ? _self.expectedOutcome : expectedOutcome // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,scheduledFor: freezed == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,outcome: freezed == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
