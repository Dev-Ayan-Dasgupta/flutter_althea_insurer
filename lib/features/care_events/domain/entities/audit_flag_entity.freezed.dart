// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_flag_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuditFlagEntity {

 String get id; AuditFlagType get type; AuditFlagSeverity get severity; String get description; String get reason; DateTime get detectedAt; bool get requiresInvestigation;
/// Create a copy of AuditFlagEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditFlagEntityCopyWith<AuditFlagEntity> get copyWith => _$AuditFlagEntityCopyWithImpl<AuditFlagEntity>(this as AuditFlagEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditFlagEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.requiresInvestigation, requiresInvestigation) || other.requiresInvestigation == requiresInvestigation));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,severity,description,reason,detectedAt,requiresInvestigation);

@override
String toString() {
  return 'AuditFlagEntity(id: $id, type: $type, severity: $severity, description: $description, reason: $reason, detectedAt: $detectedAt, requiresInvestigation: $requiresInvestigation)';
}


}

/// @nodoc
abstract mixin class $AuditFlagEntityCopyWith<$Res>  {
  factory $AuditFlagEntityCopyWith(AuditFlagEntity value, $Res Function(AuditFlagEntity) _then) = _$AuditFlagEntityCopyWithImpl;
@useResult
$Res call({
 String id, AuditFlagType type, AuditFlagSeverity severity, String description, String reason, DateTime detectedAt, bool requiresInvestigation
});




}
/// @nodoc
class _$AuditFlagEntityCopyWithImpl<$Res>
    implements $AuditFlagEntityCopyWith<$Res> {
  _$AuditFlagEntityCopyWithImpl(this._self, this._then);

  final AuditFlagEntity _self;
  final $Res Function(AuditFlagEntity) _then;

/// Create a copy of AuditFlagEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? severity = null,Object? description = null,Object? reason = null,Object? detectedAt = null,Object? requiresInvestigation = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AuditFlagType,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as AuditFlagSeverity,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,requiresInvestigation: null == requiresInvestigation ? _self.requiresInvestigation : requiresInvestigation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AuditFlagEntity].
extension AuditFlagEntityPatterns on AuditFlagEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuditFlagEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuditFlagEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuditFlagEntity value)  $default,){
final _that = this;
switch (_that) {
case _AuditFlagEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuditFlagEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AuditFlagEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  AuditFlagType type,  AuditFlagSeverity severity,  String description,  String reason,  DateTime detectedAt,  bool requiresInvestigation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditFlagEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  AuditFlagType type,  AuditFlagSeverity severity,  String description,  String reason,  DateTime detectedAt,  bool requiresInvestigation)  $default,) {final _that = this;
switch (_that) {
case _AuditFlagEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  AuditFlagType type,  AuditFlagSeverity severity,  String description,  String reason,  DateTime detectedAt,  bool requiresInvestigation)?  $default,) {final _that = this;
switch (_that) {
case _AuditFlagEntity() when $default != null:
return $default(_that.id,_that.type,_that.severity,_that.description,_that.reason,_that.detectedAt,_that.requiresInvestigation);case _:
  return null;

}
}

}

/// @nodoc


class _AuditFlagEntity implements AuditFlagEntity {
  const _AuditFlagEntity({required this.id, required this.type, required this.severity, required this.description, required this.reason, required this.detectedAt, required this.requiresInvestigation});
  

@override final  String id;
@override final  AuditFlagType type;
@override final  AuditFlagSeverity severity;
@override final  String description;
@override final  String reason;
@override final  DateTime detectedAt;
@override final  bool requiresInvestigation;

/// Create a copy of AuditFlagEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuditFlagEntityCopyWith<_AuditFlagEntity> get copyWith => __$AuditFlagEntityCopyWithImpl<_AuditFlagEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditFlagEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.requiresInvestigation, requiresInvestigation) || other.requiresInvestigation == requiresInvestigation));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,severity,description,reason,detectedAt,requiresInvestigation);

@override
String toString() {
  return 'AuditFlagEntity(id: $id, type: $type, severity: $severity, description: $description, reason: $reason, detectedAt: $detectedAt, requiresInvestigation: $requiresInvestigation)';
}


}

/// @nodoc
abstract mixin class _$AuditFlagEntityCopyWith<$Res> implements $AuditFlagEntityCopyWith<$Res> {
  factory _$AuditFlagEntityCopyWith(_AuditFlagEntity value, $Res Function(_AuditFlagEntity) _then) = __$AuditFlagEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, AuditFlagType type, AuditFlagSeverity severity, String description, String reason, DateTime detectedAt, bool requiresInvestigation
});




}
/// @nodoc
class __$AuditFlagEntityCopyWithImpl<$Res>
    implements _$AuditFlagEntityCopyWith<$Res> {
  __$AuditFlagEntityCopyWithImpl(this._self, this._then);

  final _AuditFlagEntity _self;
  final $Res Function(_AuditFlagEntity) _then;

/// Create a copy of AuditFlagEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? severity = null,Object? description = null,Object? reason = null,Object? detectedAt = null,Object? requiresInvestigation = null,}) {
  return _then(_AuditFlagEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AuditFlagType,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as AuditFlagSeverity,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,requiresInvestigation: null == requiresInvestigation ? _self.requiresInvestigation : requiresInvestigation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
