// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_flag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuditFlagModel {

 String get id; String get type; String get severity; String get description; String get reason; DateTime get detectedAt; bool get requiresInvestigation;
/// Create a copy of AuditFlagModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditFlagModelCopyWith<AuditFlagModel> get copyWith => _$AuditFlagModelCopyWithImpl<AuditFlagModel>(this as AuditFlagModel, _$identity);

  /// Serializes this AuditFlagModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditFlagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.requiresInvestigation, requiresInvestigation) || other.requiresInvestigation == requiresInvestigation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,severity,description,reason,detectedAt,requiresInvestigation);

@override
String toString() {
  return 'AuditFlagModel(id: $id, type: $type, severity: $severity, description: $description, reason: $reason, detectedAt: $detectedAt, requiresInvestigation: $requiresInvestigation)';
}


}

/// @nodoc
abstract mixin class $AuditFlagModelCopyWith<$Res>  {
  factory $AuditFlagModelCopyWith(AuditFlagModel value, $Res Function(AuditFlagModel) _then) = _$AuditFlagModelCopyWithImpl;
@useResult
$Res call({
 String id, String type, String severity, String description, String reason, DateTime detectedAt, bool requiresInvestigation
});




}
/// @nodoc
class _$AuditFlagModelCopyWithImpl<$Res>
    implements $AuditFlagModelCopyWith<$Res> {
  _$AuditFlagModelCopyWithImpl(this._self, this._then);

  final AuditFlagModel _self;
  final $Res Function(AuditFlagModel) _then;

/// Create a copy of AuditFlagModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? severity = null,Object? description = null,Object? reason = null,Object? detectedAt = null,Object? requiresInvestigation = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,requiresInvestigation: null == requiresInvestigation ? _self.requiresInvestigation : requiresInvestigation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AuditFlagModel].
extension AuditFlagModelPatterns on AuditFlagModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuditFlagModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuditFlagModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuditFlagModel value)  $default,){
final _that = this;
switch (_that) {
case _AuditFlagModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuditFlagModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuditFlagModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String severity,  String description,  String reason,  DateTime detectedAt,  bool requiresInvestigation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditFlagModel() when $default != null:
return $default(_that.id,_that.type,_that.severity,_that.description,_that.reason,_that.detectedAt,_that.requiresInvestigation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String severity,  String description,  String reason,  DateTime detectedAt,  bool requiresInvestigation)  $default,) {final _that = this;
switch (_that) {
case _AuditFlagModel():
return $default(_that.id,_that.type,_that.severity,_that.description,_that.reason,_that.detectedAt,_that.requiresInvestigation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String severity,  String description,  String reason,  DateTime detectedAt,  bool requiresInvestigation)?  $default,) {final _that = this;
switch (_that) {
case _AuditFlagModel() when $default != null:
return $default(_that.id,_that.type,_that.severity,_that.description,_that.reason,_that.detectedAt,_that.requiresInvestigation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuditFlagModel extends AuditFlagModel {
  const _AuditFlagModel({required this.id, required this.type, required this.severity, required this.description, required this.reason, required this.detectedAt, required this.requiresInvestigation}): super._();
  factory _AuditFlagModel.fromJson(Map<String, dynamic> json) => _$AuditFlagModelFromJson(json);

@override final  String id;
@override final  String type;
@override final  String severity;
@override final  String description;
@override final  String reason;
@override final  DateTime detectedAt;
@override final  bool requiresInvestigation;

/// Create a copy of AuditFlagModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuditFlagModelCopyWith<_AuditFlagModel> get copyWith => __$AuditFlagModelCopyWithImpl<_AuditFlagModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuditFlagModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditFlagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.requiresInvestigation, requiresInvestigation) || other.requiresInvestigation == requiresInvestigation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,severity,description,reason,detectedAt,requiresInvestigation);

@override
String toString() {
  return 'AuditFlagModel(id: $id, type: $type, severity: $severity, description: $description, reason: $reason, detectedAt: $detectedAt, requiresInvestigation: $requiresInvestigation)';
}


}

/// @nodoc
abstract mixin class _$AuditFlagModelCopyWith<$Res> implements $AuditFlagModelCopyWith<$Res> {
  factory _$AuditFlagModelCopyWith(_AuditFlagModel value, $Res Function(_AuditFlagModel) _then) = __$AuditFlagModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String severity, String description, String reason, DateTime detectedAt, bool requiresInvestigation
});




}
/// @nodoc
class __$AuditFlagModelCopyWithImpl<$Res>
    implements _$AuditFlagModelCopyWith<$Res> {
  __$AuditFlagModelCopyWithImpl(this._self, this._then);

  final _AuditFlagModel _self;
  final $Res Function(_AuditFlagModel) _then;

/// Create a copy of AuditFlagModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? severity = null,Object? description = null,Object? reason = null,Object? detectedAt = null,Object? requiresInvestigation = null,}) {
  return _then(_AuditFlagModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,requiresInvestigation: null == requiresInvestigation ? _self.requiresInvestigation : requiresInvestigation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
