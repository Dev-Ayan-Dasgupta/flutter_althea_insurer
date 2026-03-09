// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_alert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SafetyAlertModel {

 String get id; String get alertType; String get severity; String get cohortType; String get patientName; String get patientId; String get alertMessage; String get detectedReason; DateTime get detectedAt; bool get requiresImmediateAction; String get recommendedAction; String? get assignedCaregiver; bool? get actionTaken;
/// Create a copy of SafetyAlertModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SafetyAlertModelCopyWith<SafetyAlertModel> get copyWith => _$SafetyAlertModelCopyWithImpl<SafetyAlertModel>(this as SafetyAlertModel, _$identity);

  /// Serializes this SafetyAlertModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SafetyAlertModel&&(identical(other.id, id) || other.id == id)&&(identical(other.alertType, alertType) || other.alertType == alertType)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.alertMessage, alertMessage) || other.alertMessage == alertMessage)&&(identical(other.detectedReason, detectedReason) || other.detectedReason == detectedReason)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.requiresImmediateAction, requiresImmediateAction) || other.requiresImmediateAction == requiresImmediateAction)&&(identical(other.recommendedAction, recommendedAction) || other.recommendedAction == recommendedAction)&&(identical(other.assignedCaregiver, assignedCaregiver) || other.assignedCaregiver == assignedCaregiver)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,alertType,severity,cohortType,patientName,patientId,alertMessage,detectedReason,detectedAt,requiresImmediateAction,recommendedAction,assignedCaregiver,actionTaken);

@override
String toString() {
  return 'SafetyAlertModel(id: $id, alertType: $alertType, severity: $severity, cohortType: $cohortType, patientName: $patientName, patientId: $patientId, alertMessage: $alertMessage, detectedReason: $detectedReason, detectedAt: $detectedAt, requiresImmediateAction: $requiresImmediateAction, recommendedAction: $recommendedAction, assignedCaregiver: $assignedCaregiver, actionTaken: $actionTaken)';
}


}

/// @nodoc
abstract mixin class $SafetyAlertModelCopyWith<$Res>  {
  factory $SafetyAlertModelCopyWith(SafetyAlertModel value, $Res Function(SafetyAlertModel) _then) = _$SafetyAlertModelCopyWithImpl;
@useResult
$Res call({
 String id, String alertType, String severity, String cohortType, String patientName, String patientId, String alertMessage, String detectedReason, DateTime detectedAt, bool requiresImmediateAction, String recommendedAction, String? assignedCaregiver, bool? actionTaken
});




}
/// @nodoc
class _$SafetyAlertModelCopyWithImpl<$Res>
    implements $SafetyAlertModelCopyWith<$Res> {
  _$SafetyAlertModelCopyWithImpl(this._self, this._then);

  final SafetyAlertModel _self;
  final $Res Function(SafetyAlertModel) _then;

/// Create a copy of SafetyAlertModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? alertType = null,Object? severity = null,Object? cohortType = null,Object? patientName = null,Object? patientId = null,Object? alertMessage = null,Object? detectedReason = null,Object? detectedAt = null,Object? requiresImmediateAction = null,Object? recommendedAction = null,Object? assignedCaregiver = freezed,Object? actionTaken = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,alertType: null == alertType ? _self.alertType : alertType // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,alertMessage: null == alertMessage ? _self.alertMessage : alertMessage // ignore: cast_nullable_to_non_nullable
as String,detectedReason: null == detectedReason ? _self.detectedReason : detectedReason // ignore: cast_nullable_to_non_nullable
as String,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,requiresImmediateAction: null == requiresImmediateAction ? _self.requiresImmediateAction : requiresImmediateAction // ignore: cast_nullable_to_non_nullable
as bool,recommendedAction: null == recommendedAction ? _self.recommendedAction : recommendedAction // ignore: cast_nullable_to_non_nullable
as String,assignedCaregiver: freezed == assignedCaregiver ? _self.assignedCaregiver : assignedCaregiver // ignore: cast_nullable_to_non_nullable
as String?,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SafetyAlertModel].
extension SafetyAlertModelPatterns on SafetyAlertModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SafetyAlertModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SafetyAlertModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SafetyAlertModel value)  $default,){
final _that = this;
switch (_that) {
case _SafetyAlertModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SafetyAlertModel value)?  $default,){
final _that = this;
switch (_that) {
case _SafetyAlertModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String alertType,  String severity,  String cohortType,  String patientName,  String patientId,  String alertMessage,  String detectedReason,  DateTime detectedAt,  bool requiresImmediateAction,  String recommendedAction,  String? assignedCaregiver,  bool? actionTaken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SafetyAlertModel() when $default != null:
return $default(_that.id,_that.alertType,_that.severity,_that.cohortType,_that.patientName,_that.patientId,_that.alertMessage,_that.detectedReason,_that.detectedAt,_that.requiresImmediateAction,_that.recommendedAction,_that.assignedCaregiver,_that.actionTaken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String alertType,  String severity,  String cohortType,  String patientName,  String patientId,  String alertMessage,  String detectedReason,  DateTime detectedAt,  bool requiresImmediateAction,  String recommendedAction,  String? assignedCaregiver,  bool? actionTaken)  $default,) {final _that = this;
switch (_that) {
case _SafetyAlertModel():
return $default(_that.id,_that.alertType,_that.severity,_that.cohortType,_that.patientName,_that.patientId,_that.alertMessage,_that.detectedReason,_that.detectedAt,_that.requiresImmediateAction,_that.recommendedAction,_that.assignedCaregiver,_that.actionTaken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String alertType,  String severity,  String cohortType,  String patientName,  String patientId,  String alertMessage,  String detectedReason,  DateTime detectedAt,  bool requiresImmediateAction,  String recommendedAction,  String? assignedCaregiver,  bool? actionTaken)?  $default,) {final _that = this;
switch (_that) {
case _SafetyAlertModel() when $default != null:
return $default(_that.id,_that.alertType,_that.severity,_that.cohortType,_that.patientName,_that.patientId,_that.alertMessage,_that.detectedReason,_that.detectedAt,_that.requiresImmediateAction,_that.recommendedAction,_that.assignedCaregiver,_that.actionTaken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SafetyAlertModel extends SafetyAlertModel {
  const _SafetyAlertModel({required this.id, required this.alertType, required this.severity, required this.cohortType, required this.patientName, required this.patientId, required this.alertMessage, required this.detectedReason, required this.detectedAt, required this.requiresImmediateAction, required this.recommendedAction, this.assignedCaregiver, this.actionTaken}): super._();
  factory _SafetyAlertModel.fromJson(Map<String, dynamic> json) => _$SafetyAlertModelFromJson(json);

@override final  String id;
@override final  String alertType;
@override final  String severity;
@override final  String cohortType;
@override final  String patientName;
@override final  String patientId;
@override final  String alertMessage;
@override final  String detectedReason;
@override final  DateTime detectedAt;
@override final  bool requiresImmediateAction;
@override final  String recommendedAction;
@override final  String? assignedCaregiver;
@override final  bool? actionTaken;

/// Create a copy of SafetyAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SafetyAlertModelCopyWith<_SafetyAlertModel> get copyWith => __$SafetyAlertModelCopyWithImpl<_SafetyAlertModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SafetyAlertModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SafetyAlertModel&&(identical(other.id, id) || other.id == id)&&(identical(other.alertType, alertType) || other.alertType == alertType)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.alertMessage, alertMessage) || other.alertMessage == alertMessage)&&(identical(other.detectedReason, detectedReason) || other.detectedReason == detectedReason)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.requiresImmediateAction, requiresImmediateAction) || other.requiresImmediateAction == requiresImmediateAction)&&(identical(other.recommendedAction, recommendedAction) || other.recommendedAction == recommendedAction)&&(identical(other.assignedCaregiver, assignedCaregiver) || other.assignedCaregiver == assignedCaregiver)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,alertType,severity,cohortType,patientName,patientId,alertMessage,detectedReason,detectedAt,requiresImmediateAction,recommendedAction,assignedCaregiver,actionTaken);

@override
String toString() {
  return 'SafetyAlertModel(id: $id, alertType: $alertType, severity: $severity, cohortType: $cohortType, patientName: $patientName, patientId: $patientId, alertMessage: $alertMessage, detectedReason: $detectedReason, detectedAt: $detectedAt, requiresImmediateAction: $requiresImmediateAction, recommendedAction: $recommendedAction, assignedCaregiver: $assignedCaregiver, actionTaken: $actionTaken)';
}


}

/// @nodoc
abstract mixin class _$SafetyAlertModelCopyWith<$Res> implements $SafetyAlertModelCopyWith<$Res> {
  factory _$SafetyAlertModelCopyWith(_SafetyAlertModel value, $Res Function(_SafetyAlertModel) _then) = __$SafetyAlertModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String alertType, String severity, String cohortType, String patientName, String patientId, String alertMessage, String detectedReason, DateTime detectedAt, bool requiresImmediateAction, String recommendedAction, String? assignedCaregiver, bool? actionTaken
});




}
/// @nodoc
class __$SafetyAlertModelCopyWithImpl<$Res>
    implements _$SafetyAlertModelCopyWith<$Res> {
  __$SafetyAlertModelCopyWithImpl(this._self, this._then);

  final _SafetyAlertModel _self;
  final $Res Function(_SafetyAlertModel) _then;

/// Create a copy of SafetyAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? alertType = null,Object? severity = null,Object? cohortType = null,Object? patientName = null,Object? patientId = null,Object? alertMessage = null,Object? detectedReason = null,Object? detectedAt = null,Object? requiresImmediateAction = null,Object? recommendedAction = null,Object? assignedCaregiver = freezed,Object? actionTaken = freezed,}) {
  return _then(_SafetyAlertModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,alertType: null == alertType ? _self.alertType : alertType // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,alertMessage: null == alertMessage ? _self.alertMessage : alertMessage // ignore: cast_nullable_to_non_nullable
as String,detectedReason: null == detectedReason ? _self.detectedReason : detectedReason // ignore: cast_nullable_to_non_nullable
as String,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,requiresImmediateAction: null == requiresImmediateAction ? _self.requiresImmediateAction : requiresImmediateAction // ignore: cast_nullable_to_non_nullable
as bool,recommendedAction: null == recommendedAction ? _self.recommendedAction : recommendedAction // ignore: cast_nullable_to_non_nullable
as String,assignedCaregiver: freezed == assignedCaregiver ? _self.assignedCaregiver : assignedCaregiver // ignore: cast_nullable_to_non_nullable
as String?,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
