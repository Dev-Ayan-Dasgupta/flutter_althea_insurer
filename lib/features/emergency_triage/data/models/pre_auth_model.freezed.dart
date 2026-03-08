// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreAuthModel {

 String get id; String get emergencyCaseId; String get status; double get approvedAmount; String get approvedBy; DateTime get approvedAt; String? get rejectionReason; String? get notes;
/// Create a copy of PreAuthModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreAuthModelCopyWith<PreAuthModel> get copyWith => _$PreAuthModelCopyWithImpl<PreAuthModel>(this as PreAuthModel, _$identity);

  /// Serializes this PreAuthModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreAuthModel&&(identical(other.id, id) || other.id == id)&&(identical(other.emergencyCaseId, emergencyCaseId) || other.emergencyCaseId == emergencyCaseId)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedAmount, approvedAmount) || other.approvedAmount == approvedAmount)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,emergencyCaseId,status,approvedAmount,approvedBy,approvedAt,rejectionReason,notes);

@override
String toString() {
  return 'PreAuthModel(id: $id, emergencyCaseId: $emergencyCaseId, status: $status, approvedAmount: $approvedAmount, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $PreAuthModelCopyWith<$Res>  {
  factory $PreAuthModelCopyWith(PreAuthModel value, $Res Function(PreAuthModel) _then) = _$PreAuthModelCopyWithImpl;
@useResult
$Res call({
 String id, String emergencyCaseId, String status, double approvedAmount, String approvedBy, DateTime approvedAt, String? rejectionReason, String? notes
});




}
/// @nodoc
class _$PreAuthModelCopyWithImpl<$Res>
    implements $PreAuthModelCopyWith<$Res> {
  _$PreAuthModelCopyWithImpl(this._self, this._then);

  final PreAuthModel _self;
  final $Res Function(PreAuthModel) _then;

/// Create a copy of PreAuthModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? emergencyCaseId = null,Object? status = null,Object? approvedAmount = null,Object? approvedBy = null,Object? approvedAt = null,Object? rejectionReason = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,emergencyCaseId: null == emergencyCaseId ? _self.emergencyCaseId : emergencyCaseId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,approvedAmount: null == approvedAmount ? _self.approvedAmount : approvedAmount // ignore: cast_nullable_to_non_nullable
as double,approvedBy: null == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String,approvedAt: null == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PreAuthModel].
extension PreAuthModelPatterns on PreAuthModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreAuthModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreAuthModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreAuthModel value)  $default,){
final _that = this;
switch (_that) {
case _PreAuthModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreAuthModel value)?  $default,){
final _that = this;
switch (_that) {
case _PreAuthModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String emergencyCaseId,  String status,  double approvedAmount,  String approvedBy,  DateTime approvedAt,  String? rejectionReason,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreAuthModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String emergencyCaseId,  String status,  double approvedAmount,  String approvedBy,  DateTime approvedAt,  String? rejectionReason,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _PreAuthModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String emergencyCaseId,  String status,  double approvedAmount,  String approvedBy,  DateTime approvedAt,  String? rejectionReason,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _PreAuthModel() when $default != null:
return $default(_that.id,_that.emergencyCaseId,_that.status,_that.approvedAmount,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PreAuthModel extends PreAuthModel {
  const _PreAuthModel({required this.id, required this.emergencyCaseId, required this.status, required this.approvedAmount, required this.approvedBy, required this.approvedAt, this.rejectionReason, this.notes}): super._();
  factory _PreAuthModel.fromJson(Map<String, dynamic> json) => _$PreAuthModelFromJson(json);

@override final  String id;
@override final  String emergencyCaseId;
@override final  String status;
@override final  double approvedAmount;
@override final  String approvedBy;
@override final  DateTime approvedAt;
@override final  String? rejectionReason;
@override final  String? notes;

/// Create a copy of PreAuthModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreAuthModelCopyWith<_PreAuthModel> get copyWith => __$PreAuthModelCopyWithImpl<_PreAuthModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreAuthModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreAuthModel&&(identical(other.id, id) || other.id == id)&&(identical(other.emergencyCaseId, emergencyCaseId) || other.emergencyCaseId == emergencyCaseId)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedAmount, approvedAmount) || other.approvedAmount == approvedAmount)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,emergencyCaseId,status,approvedAmount,approvedBy,approvedAt,rejectionReason,notes);

@override
String toString() {
  return 'PreAuthModel(id: $id, emergencyCaseId: $emergencyCaseId, status: $status, approvedAmount: $approvedAmount, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$PreAuthModelCopyWith<$Res> implements $PreAuthModelCopyWith<$Res> {
  factory _$PreAuthModelCopyWith(_PreAuthModel value, $Res Function(_PreAuthModel) _then) = __$PreAuthModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String emergencyCaseId, String status, double approvedAmount, String approvedBy, DateTime approvedAt, String? rejectionReason, String? notes
});




}
/// @nodoc
class __$PreAuthModelCopyWithImpl<$Res>
    implements _$PreAuthModelCopyWith<$Res> {
  __$PreAuthModelCopyWithImpl(this._self, this._then);

  final _PreAuthModel _self;
  final $Res Function(_PreAuthModel) _then;

/// Create a copy of PreAuthModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? emergencyCaseId = null,Object? status = null,Object? approvedAmount = null,Object? approvedBy = null,Object? approvedAt = null,Object? rejectionReason = freezed,Object? notes = freezed,}) {
  return _then(_PreAuthModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,emergencyCaseId: null == emergencyCaseId ? _self.emergencyCaseId : emergencyCaseId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,approvedAmount: null == approvedAmount ? _self.approvedAmount : approvedAmount // ignore: cast_nullable_to_non_nullable
as double,approvedBy: null == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String,approvedAt: null == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
