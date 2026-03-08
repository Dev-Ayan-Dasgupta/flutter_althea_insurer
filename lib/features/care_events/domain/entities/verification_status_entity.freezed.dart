// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerificationStatusEntity {

 VerificationStatusType get status; bool get bleVerified; bool get gpsVerified; bool get timestampVerified; String? get flagReason;
/// Create a copy of VerificationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationStatusEntityCopyWith<VerificationStatusEntity> get copyWith => _$VerificationStatusEntityCopyWithImpl<VerificationStatusEntity>(this as VerificationStatusEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationStatusEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.bleVerified, bleVerified) || other.bleVerified == bleVerified)&&(identical(other.gpsVerified, gpsVerified) || other.gpsVerified == gpsVerified)&&(identical(other.timestampVerified, timestampVerified) || other.timestampVerified == timestampVerified)&&(identical(other.flagReason, flagReason) || other.flagReason == flagReason));
}


@override
int get hashCode => Object.hash(runtimeType,status,bleVerified,gpsVerified,timestampVerified,flagReason);

@override
String toString() {
  return 'VerificationStatusEntity(status: $status, bleVerified: $bleVerified, gpsVerified: $gpsVerified, timestampVerified: $timestampVerified, flagReason: $flagReason)';
}


}

/// @nodoc
abstract mixin class $VerificationStatusEntityCopyWith<$Res>  {
  factory $VerificationStatusEntityCopyWith(VerificationStatusEntity value, $Res Function(VerificationStatusEntity) _then) = _$VerificationStatusEntityCopyWithImpl;
@useResult
$Res call({
 VerificationStatusType status, bool bleVerified, bool gpsVerified, bool timestampVerified, String? flagReason
});




}
/// @nodoc
class _$VerificationStatusEntityCopyWithImpl<$Res>
    implements $VerificationStatusEntityCopyWith<$Res> {
  _$VerificationStatusEntityCopyWithImpl(this._self, this._then);

  final VerificationStatusEntity _self;
  final $Res Function(VerificationStatusEntity) _then;

/// Create a copy of VerificationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? bleVerified = null,Object? gpsVerified = null,Object? timestampVerified = null,Object? flagReason = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VerificationStatusType,bleVerified: null == bleVerified ? _self.bleVerified : bleVerified // ignore: cast_nullable_to_non_nullable
as bool,gpsVerified: null == gpsVerified ? _self.gpsVerified : gpsVerified // ignore: cast_nullable_to_non_nullable
as bool,timestampVerified: null == timestampVerified ? _self.timestampVerified : timestampVerified // ignore: cast_nullable_to_non_nullable
as bool,flagReason: freezed == flagReason ? _self.flagReason : flagReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerificationStatusEntity].
extension VerificationStatusEntityPatterns on VerificationStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerificationStatusEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerificationStatusEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerificationStatusEntity value)  $default,){
final _that = this;
switch (_that) {
case _VerificationStatusEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerificationStatusEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VerificationStatusEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( VerificationStatusType status,  bool bleVerified,  bool gpsVerified,  bool timestampVerified,  String? flagReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerificationStatusEntity() when $default != null:
return $default(_that.status,_that.bleVerified,_that.gpsVerified,_that.timestampVerified,_that.flagReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( VerificationStatusType status,  bool bleVerified,  bool gpsVerified,  bool timestampVerified,  String? flagReason)  $default,) {final _that = this;
switch (_that) {
case _VerificationStatusEntity():
return $default(_that.status,_that.bleVerified,_that.gpsVerified,_that.timestampVerified,_that.flagReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( VerificationStatusType status,  bool bleVerified,  bool gpsVerified,  bool timestampVerified,  String? flagReason)?  $default,) {final _that = this;
switch (_that) {
case _VerificationStatusEntity() when $default != null:
return $default(_that.status,_that.bleVerified,_that.gpsVerified,_that.timestampVerified,_that.flagReason);case _:
  return null;

}
}

}

/// @nodoc


class _VerificationStatusEntity implements VerificationStatusEntity {
  const _VerificationStatusEntity({required this.status, required this.bleVerified, required this.gpsVerified, required this.timestampVerified, this.flagReason});
  

@override final  VerificationStatusType status;
@override final  bool bleVerified;
@override final  bool gpsVerified;
@override final  bool timestampVerified;
@override final  String? flagReason;

/// Create a copy of VerificationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerificationStatusEntityCopyWith<_VerificationStatusEntity> get copyWith => __$VerificationStatusEntityCopyWithImpl<_VerificationStatusEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationStatusEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.bleVerified, bleVerified) || other.bleVerified == bleVerified)&&(identical(other.gpsVerified, gpsVerified) || other.gpsVerified == gpsVerified)&&(identical(other.timestampVerified, timestampVerified) || other.timestampVerified == timestampVerified)&&(identical(other.flagReason, flagReason) || other.flagReason == flagReason));
}


@override
int get hashCode => Object.hash(runtimeType,status,bleVerified,gpsVerified,timestampVerified,flagReason);

@override
String toString() {
  return 'VerificationStatusEntity(status: $status, bleVerified: $bleVerified, gpsVerified: $gpsVerified, timestampVerified: $timestampVerified, flagReason: $flagReason)';
}


}

/// @nodoc
abstract mixin class _$VerificationStatusEntityCopyWith<$Res> implements $VerificationStatusEntityCopyWith<$Res> {
  factory _$VerificationStatusEntityCopyWith(_VerificationStatusEntity value, $Res Function(_VerificationStatusEntity) _then) = __$VerificationStatusEntityCopyWithImpl;
@override @useResult
$Res call({
 VerificationStatusType status, bool bleVerified, bool gpsVerified, bool timestampVerified, String? flagReason
});




}
/// @nodoc
class __$VerificationStatusEntityCopyWithImpl<$Res>
    implements _$VerificationStatusEntityCopyWith<$Res> {
  __$VerificationStatusEntityCopyWithImpl(this._self, this._then);

  final _VerificationStatusEntity _self;
  final $Res Function(_VerificationStatusEntity) _then;

/// Create a copy of VerificationStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? bleVerified = null,Object? gpsVerified = null,Object? timestampVerified = null,Object? flagReason = freezed,}) {
  return _then(_VerificationStatusEntity(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VerificationStatusType,bleVerified: null == bleVerified ? _self.bleVerified : bleVerified // ignore: cast_nullable_to_non_nullable
as bool,gpsVerified: null == gpsVerified ? _self.gpsVerified : gpsVerified // ignore: cast_nullable_to_non_nullable
as bool,timestampVerified: null == timestampVerified ? _self.timestampVerified : timestampVerified // ignore: cast_nullable_to_non_nullable
as bool,flagReason: freezed == flagReason ? _self.flagReason : flagReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
