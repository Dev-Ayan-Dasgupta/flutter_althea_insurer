// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_auth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PreAuthEntity {

 String get id; String get emergencyCaseId; PreAuthStatus get status; double get approvedAmount; String get approvedBy; DateTime get approvedAt; String? get rejectionReason; String? get notes;
/// Create a copy of PreAuthEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreAuthEntityCopyWith<PreAuthEntity> get copyWith => _$PreAuthEntityCopyWithImpl<PreAuthEntity>(this as PreAuthEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreAuthEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.emergencyCaseId, emergencyCaseId) || other.emergencyCaseId == emergencyCaseId)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedAmount, approvedAmount) || other.approvedAmount == approvedAmount)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,id,emergencyCaseId,status,approvedAmount,approvedBy,approvedAt,rejectionReason,notes);

@override
String toString() {
  return 'PreAuthEntity(id: $id, emergencyCaseId: $emergencyCaseId, status: $status, approvedAmount: $approvedAmount, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $PreAuthEntityCopyWith<$Res>  {
  factory $PreAuthEntityCopyWith(PreAuthEntity value, $Res Function(PreAuthEntity) _then) = _$PreAuthEntityCopyWithImpl;
@useResult
$Res call({
 String id, String emergencyCaseId, PreAuthStatus status, double approvedAmount, String approvedBy, DateTime approvedAt, String? rejectionReason, String? notes
});




}
/// @nodoc
class _$PreAuthEntityCopyWithImpl<$Res>
    implements $PreAuthEntityCopyWith<$Res> {
  _$PreAuthEntityCopyWithImpl(this._self, this._then);

  final PreAuthEntity _self;
  final $Res Function(PreAuthEntity) _then;

/// Create a copy of PreAuthEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? emergencyCaseId = null,Object? status = null,Object? approvedAmount = null,Object? approvedBy = null,Object? approvedAt = null,Object? rejectionReason = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,emergencyCaseId: null == emergencyCaseId ? _self.emergencyCaseId : emergencyCaseId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PreAuthStatus,approvedAmount: null == approvedAmount ? _self.approvedAmount : approvedAmount // ignore: cast_nullable_to_non_nullable
as double,approvedBy: null == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String,approvedAt: null == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PreAuthEntity].
extension PreAuthEntityPatterns on PreAuthEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreAuthEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreAuthEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreAuthEntity value)  $default,){
final _that = this;
switch (_that) {
case _PreAuthEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreAuthEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PreAuthEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String emergencyCaseId,  PreAuthStatus status,  double approvedAmount,  String approvedBy,  DateTime approvedAt,  String? rejectionReason,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreAuthEntity() when $default != null:
return $default(_that.id,_that.emergencyCaseId,_that.status,_that.approvedAmount,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String emergencyCaseId,  PreAuthStatus status,  double approvedAmount,  String approvedBy,  DateTime approvedAt,  String? rejectionReason,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _PreAuthEntity():
return $default(_that.id,_that.emergencyCaseId,_that.status,_that.approvedAmount,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String emergencyCaseId,  PreAuthStatus status,  double approvedAmount,  String approvedBy,  DateTime approvedAt,  String? rejectionReason,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _PreAuthEntity() when $default != null:
return $default(_that.id,_that.emergencyCaseId,_that.status,_that.approvedAmount,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.notes);case _:
  return null;

}
}

}

/// @nodoc


class _PreAuthEntity implements PreAuthEntity {
  const _PreAuthEntity({required this.id, required this.emergencyCaseId, required this.status, required this.approvedAmount, required this.approvedBy, required this.approvedAt, this.rejectionReason, this.notes});
  

@override final  String id;
@override final  String emergencyCaseId;
@override final  PreAuthStatus status;
@override final  double approvedAmount;
@override final  String approvedBy;
@override final  DateTime approvedAt;
@override final  String? rejectionReason;
@override final  String? notes;

/// Create a copy of PreAuthEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreAuthEntityCopyWith<_PreAuthEntity> get copyWith => __$PreAuthEntityCopyWithImpl<_PreAuthEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreAuthEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.emergencyCaseId, emergencyCaseId) || other.emergencyCaseId == emergencyCaseId)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedAmount, approvedAmount) || other.approvedAmount == approvedAmount)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,id,emergencyCaseId,status,approvedAmount,approvedBy,approvedAt,rejectionReason,notes);

@override
String toString() {
  return 'PreAuthEntity(id: $id, emergencyCaseId: $emergencyCaseId, status: $status, approvedAmount: $approvedAmount, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$PreAuthEntityCopyWith<$Res> implements $PreAuthEntityCopyWith<$Res> {
  factory _$PreAuthEntityCopyWith(_PreAuthEntity value, $Res Function(_PreAuthEntity) _then) = __$PreAuthEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String emergencyCaseId, PreAuthStatus status, double approvedAmount, String approvedBy, DateTime approvedAt, String? rejectionReason, String? notes
});




}
/// @nodoc
class __$PreAuthEntityCopyWithImpl<$Res>
    implements _$PreAuthEntityCopyWith<$Res> {
  __$PreAuthEntityCopyWithImpl(this._self, this._then);

  final _PreAuthEntity _self;
  final $Res Function(_PreAuthEntity) _then;

/// Create a copy of PreAuthEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? emergencyCaseId = null,Object? status = null,Object? approvedAmount = null,Object? approvedBy = null,Object? approvedAt = null,Object? rejectionReason = freezed,Object? notes = freezed,}) {
  return _then(_PreAuthEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,emergencyCaseId: null == emergencyCaseId ? _self.emergencyCaseId : emergencyCaseId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PreAuthStatus,approvedAmount: null == approvedAmount ? _self.approvedAmount : approvedAmount // ignore: cast_nullable_to_non_nullable
as double,approvedBy: null == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String,approvedAt: null == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
