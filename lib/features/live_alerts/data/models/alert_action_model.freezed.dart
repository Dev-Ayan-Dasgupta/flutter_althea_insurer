// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_action_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AlertActionModel {

 String get id; String get alertId; String get actionType; String get actionName; DateTime get performedAt; String get performedBy; String? get notes; Map<String, dynamic>? get actionData;
/// Create a copy of AlertActionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertActionModelCopyWith<AlertActionModel> get copyWith => _$AlertActionModelCopyWithImpl<AlertActionModel>(this as AlertActionModel, _$identity);

  /// Serializes this AlertActionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlertActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.alertId, alertId) || other.alertId == alertId)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.actionName, actionName) || other.actionName == actionName)&&(identical(other.performedAt, performedAt) || other.performedAt == performedAt)&&(identical(other.performedBy, performedBy) || other.performedBy == performedBy)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.actionData, actionData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,alertId,actionType,actionName,performedAt,performedBy,notes,const DeepCollectionEquality().hash(actionData));

@override
String toString() {
  return 'AlertActionModel(id: $id, alertId: $alertId, actionType: $actionType, actionName: $actionName, performedAt: $performedAt, performedBy: $performedBy, notes: $notes, actionData: $actionData)';
}


}

/// @nodoc
abstract mixin class $AlertActionModelCopyWith<$Res>  {
  factory $AlertActionModelCopyWith(AlertActionModel value, $Res Function(AlertActionModel) _then) = _$AlertActionModelCopyWithImpl;
@useResult
$Res call({
 String id, String alertId, String actionType, String actionName, DateTime performedAt, String performedBy, String? notes, Map<String, dynamic>? actionData
});




}
/// @nodoc
class _$AlertActionModelCopyWithImpl<$Res>
    implements $AlertActionModelCopyWith<$Res> {
  _$AlertActionModelCopyWithImpl(this._self, this._then);

  final AlertActionModel _self;
  final $Res Function(AlertActionModel) _then;

/// Create a copy of AlertActionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? alertId = null,Object? actionType = null,Object? actionName = null,Object? performedAt = null,Object? performedBy = null,Object? notes = freezed,Object? actionData = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,alertId: null == alertId ? _self.alertId : alertId // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String,actionName: null == actionName ? _self.actionName : actionName // ignore: cast_nullable_to_non_nullable
as String,performedAt: null == performedAt ? _self.performedAt : performedAt // ignore: cast_nullable_to_non_nullable
as DateTime,performedBy: null == performedBy ? _self.performedBy : performedBy // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,actionData: freezed == actionData ? _self.actionData : actionData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AlertActionModel].
extension AlertActionModelPatterns on AlertActionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlertActionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlertActionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlertActionModel value)  $default,){
final _that = this;
switch (_that) {
case _AlertActionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlertActionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AlertActionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String alertId,  String actionType,  String actionName,  DateTime performedAt,  String performedBy,  String? notes,  Map<String, dynamic>? actionData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlertActionModel() when $default != null:
return $default(_that.id,_that.alertId,_that.actionType,_that.actionName,_that.performedAt,_that.performedBy,_that.notes,_that.actionData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String alertId,  String actionType,  String actionName,  DateTime performedAt,  String performedBy,  String? notes,  Map<String, dynamic>? actionData)  $default,) {final _that = this;
switch (_that) {
case _AlertActionModel():
return $default(_that.id,_that.alertId,_that.actionType,_that.actionName,_that.performedAt,_that.performedBy,_that.notes,_that.actionData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String alertId,  String actionType,  String actionName,  DateTime performedAt,  String performedBy,  String? notes,  Map<String, dynamic>? actionData)?  $default,) {final _that = this;
switch (_that) {
case _AlertActionModel() when $default != null:
return $default(_that.id,_that.alertId,_that.actionType,_that.actionName,_that.performedAt,_that.performedBy,_that.notes,_that.actionData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlertActionModel extends AlertActionModel {
  const _AlertActionModel({required this.id, required this.alertId, required this.actionType, required this.actionName, required this.performedAt, required this.performedBy, this.notes, final  Map<String, dynamic>? actionData}): _actionData = actionData,super._();
  factory _AlertActionModel.fromJson(Map<String, dynamic> json) => _$AlertActionModelFromJson(json);

@override final  String id;
@override final  String alertId;
@override final  String actionType;
@override final  String actionName;
@override final  DateTime performedAt;
@override final  String performedBy;
@override final  String? notes;
 final  Map<String, dynamic>? _actionData;
@override Map<String, dynamic>? get actionData {
  final value = _actionData;
  if (value == null) return null;
  if (_actionData is EqualUnmodifiableMapView) return _actionData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AlertActionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertActionModelCopyWith<_AlertActionModel> get copyWith => __$AlertActionModelCopyWithImpl<_AlertActionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlertActionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlertActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.alertId, alertId) || other.alertId == alertId)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.actionName, actionName) || other.actionName == actionName)&&(identical(other.performedAt, performedAt) || other.performedAt == performedAt)&&(identical(other.performedBy, performedBy) || other.performedBy == performedBy)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._actionData, _actionData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,alertId,actionType,actionName,performedAt,performedBy,notes,const DeepCollectionEquality().hash(_actionData));

@override
String toString() {
  return 'AlertActionModel(id: $id, alertId: $alertId, actionType: $actionType, actionName: $actionName, performedAt: $performedAt, performedBy: $performedBy, notes: $notes, actionData: $actionData)';
}


}

/// @nodoc
abstract mixin class _$AlertActionModelCopyWith<$Res> implements $AlertActionModelCopyWith<$Res> {
  factory _$AlertActionModelCopyWith(_AlertActionModel value, $Res Function(_AlertActionModel) _then) = __$AlertActionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String alertId, String actionType, String actionName, DateTime performedAt, String performedBy, String? notes, Map<String, dynamic>? actionData
});




}
/// @nodoc
class __$AlertActionModelCopyWithImpl<$Res>
    implements _$AlertActionModelCopyWith<$Res> {
  __$AlertActionModelCopyWithImpl(this._self, this._then);

  final _AlertActionModel _self;
  final $Res Function(_AlertActionModel) _then;

/// Create a copy of AlertActionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? alertId = null,Object? actionType = null,Object? actionName = null,Object? performedAt = null,Object? performedBy = null,Object? notes = freezed,Object? actionData = freezed,}) {
  return _then(_AlertActionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,alertId: null == alertId ? _self.alertId : alertId // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String,actionName: null == actionName ? _self.actionName : actionName // ignore: cast_nullable_to_non_nullable
as String,performedAt: null == performedAt ? _self.performedAt : performedAt // ignore: cast_nullable_to_non_nullable
as DateTime,performedBy: null == performedBy ? _self.performedBy : performedBy // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,actionData: freezed == actionData ? _self._actionData : actionData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
