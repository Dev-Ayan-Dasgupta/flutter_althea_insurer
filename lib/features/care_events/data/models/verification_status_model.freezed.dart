// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerificationStatusModel {

 String get status; bool get bleVerified; bool get gpsVerified; bool get timestampVerified; String? get flagReason;
/// Create a copy of VerificationStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationStatusModelCopyWith<VerificationStatusModel> get copyWith => _$VerificationStatusModelCopyWithImpl<VerificationStatusModel>(this as VerificationStatusModel, _$identity);

  /// Serializes this VerificationStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationStatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.bleVerified, bleVerified) || other.bleVerified == bleVerified)&&(identical(other.gpsVerified, gpsVerified) || other.gpsVerified == gpsVerified)&&(identical(other.timestampVerified, timestampVerified) || other.timestampVerified == timestampVerified)&&(identical(other.flagReason, flagReason) || other.flagReason == flagReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,bleVerified,gpsVerified,timestampVerified,flagReason);

@override
String toString() {
  return 'VerificationStatusModel(status: $status, bleVerified: $bleVerified, gpsVerified: $gpsVerified, timestampVerified: $timestampVerified, flagReason: $flagReason)';
}


}

/// @nodoc
abstract mixin class $VerificationStatusModelCopyWith<$Res>  {
  factory $VerificationStatusModelCopyWith(VerificationStatusModel value, $Res Function(VerificationStatusModel) _then) = _$VerificationStatusModelCopyWithImpl;
@useResult
$Res call({
 String status, bool bleVerified, bool gpsVerified, bool timestampVerified, String? flagReason
});




}
/// @nodoc
class _$VerificationStatusModelCopyWithImpl<$Res>
    implements $VerificationStatusModelCopyWith<$Res> {
  _$VerificationStatusModelCopyWithImpl(this._self, this._then);

  final VerificationStatusModel _self;
  final $Res Function(VerificationStatusModel) _then;

/// Create a copy of VerificationStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? bleVerified = null,Object? gpsVerified = null,Object? timestampVerified = null,Object? flagReason = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,bleVerified: null == bleVerified ? _self.bleVerified : bleVerified // ignore: cast_nullable_to_non_nullable
as bool,gpsVerified: null == gpsVerified ? _self.gpsVerified : gpsVerified // ignore: cast_nullable_to_non_nullable
as bool,timestampVerified: null == timestampVerified ? _self.timestampVerified : timestampVerified // ignore: cast_nullable_to_non_nullable
as bool,flagReason: freezed == flagReason ? _self.flagReason : flagReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerificationStatusModel].
extension VerificationStatusModelPatterns on VerificationStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerificationStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerificationStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerificationStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _VerificationStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerificationStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _VerificationStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  bool bleVerified,  bool gpsVerified,  bool timestampVerified,  String? flagReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerificationStatusModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  bool bleVerified,  bool gpsVerified,  bool timestampVerified,  String? flagReason)  $default,) {final _that = this;
switch (_that) {
case _VerificationStatusModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  bool bleVerified,  bool gpsVerified,  bool timestampVerified,  String? flagReason)?  $default,) {final _that = this;
switch (_that) {
case _VerificationStatusModel() when $default != null:
return $default(_that.status,_that.bleVerified,_that.gpsVerified,_that.timestampVerified,_that.flagReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerificationStatusModel extends VerificationStatusModel {
  const _VerificationStatusModel({required this.status, required this.bleVerified, required this.gpsVerified, required this.timestampVerified, this.flagReason}): super._();
  factory _VerificationStatusModel.fromJson(Map<String, dynamic> json) => _$VerificationStatusModelFromJson(json);

@override final  String status;
@override final  bool bleVerified;
@override final  bool gpsVerified;
@override final  bool timestampVerified;
@override final  String? flagReason;

/// Create a copy of VerificationStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerificationStatusModelCopyWith<_VerificationStatusModel> get copyWith => __$VerificationStatusModelCopyWithImpl<_VerificationStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerificationStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationStatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.bleVerified, bleVerified) || other.bleVerified == bleVerified)&&(identical(other.gpsVerified, gpsVerified) || other.gpsVerified == gpsVerified)&&(identical(other.timestampVerified, timestampVerified) || other.timestampVerified == timestampVerified)&&(identical(other.flagReason, flagReason) || other.flagReason == flagReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,bleVerified,gpsVerified,timestampVerified,flagReason);

@override
String toString() {
  return 'VerificationStatusModel(status: $status, bleVerified: $bleVerified, gpsVerified: $gpsVerified, timestampVerified: $timestampVerified, flagReason: $flagReason)';
}


}

/// @nodoc
abstract mixin class _$VerificationStatusModelCopyWith<$Res> implements $VerificationStatusModelCopyWith<$Res> {
  factory _$VerificationStatusModelCopyWith(_VerificationStatusModel value, $Res Function(_VerificationStatusModel) _then) = __$VerificationStatusModelCopyWithImpl;
@override @useResult
$Res call({
 String status, bool bleVerified, bool gpsVerified, bool timestampVerified, String? flagReason
});




}
/// @nodoc
class __$VerificationStatusModelCopyWithImpl<$Res>
    implements _$VerificationStatusModelCopyWith<$Res> {
  __$VerificationStatusModelCopyWithImpl(this._self, this._then);

  final _VerificationStatusModel _self;
  final $Res Function(_VerificationStatusModel) _then;

/// Create a copy of VerificationStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? bleVerified = null,Object? gpsVerified = null,Object? timestampVerified = null,Object? flagReason = freezed,}) {
  return _then(_VerificationStatusModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,bleVerified: null == bleVerified ? _self.bleVerified : bleVerified // ignore: cast_nullable_to_non_nullable
as bool,gpsVerified: null == gpsVerified ? _self.gpsVerified : gpsVerified // ignore: cast_nullable_to_non_nullable
as bool,timestampVerified: null == timestampVerified ? _self.timestampVerified : timestampVerified // ignore: cast_nullable_to_non_nullable
as bool,flagReason: freezed == flagReason ? _self.flagReason : flagReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
