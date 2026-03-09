// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_verification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClaimVerificationEntity {

 String get id; String get claimId; String get patientName; String get providerName; double get claimAmount; DateTime get claimDate; VerificationStatus get status; List<VerificationCheck> get checksCompleted; List<VerificationCheck> get checksPending; int get totalChecks; int get passedChecks; int get failedChecks; double get verificationScore; List<String> get redFlags; List<String> get verifiedDocuments; String? get assignedVerifier; DateTime? get completedAt; String? get recommendation;
/// Create a copy of ClaimVerificationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimVerificationEntityCopyWith<ClaimVerificationEntity> get copyWith => _$ClaimVerificationEntityCopyWithImpl<ClaimVerificationEntity>(this as ClaimVerificationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimVerificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.claimAmount, claimAmount) || other.claimAmount == claimAmount)&&(identical(other.claimDate, claimDate) || other.claimDate == claimDate)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.checksCompleted, checksCompleted)&&const DeepCollectionEquality().equals(other.checksPending, checksPending)&&(identical(other.totalChecks, totalChecks) || other.totalChecks == totalChecks)&&(identical(other.passedChecks, passedChecks) || other.passedChecks == passedChecks)&&(identical(other.failedChecks, failedChecks) || other.failedChecks == failedChecks)&&(identical(other.verificationScore, verificationScore) || other.verificationScore == verificationScore)&&const DeepCollectionEquality().equals(other.redFlags, redFlags)&&const DeepCollectionEquality().equals(other.verifiedDocuments, verifiedDocuments)&&(identical(other.assignedVerifier, assignedVerifier) || other.assignedVerifier == assignedVerifier)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation));
}


@override
int get hashCode => Object.hash(runtimeType,id,claimId,patientName,providerName,claimAmount,claimDate,status,const DeepCollectionEquality().hash(checksCompleted),const DeepCollectionEquality().hash(checksPending),totalChecks,passedChecks,failedChecks,verificationScore,const DeepCollectionEquality().hash(redFlags),const DeepCollectionEquality().hash(verifiedDocuments),assignedVerifier,completedAt,recommendation);

@override
String toString() {
  return 'ClaimVerificationEntity(id: $id, claimId: $claimId, patientName: $patientName, providerName: $providerName, claimAmount: $claimAmount, claimDate: $claimDate, status: $status, checksCompleted: $checksCompleted, checksPending: $checksPending, totalChecks: $totalChecks, passedChecks: $passedChecks, failedChecks: $failedChecks, verificationScore: $verificationScore, redFlags: $redFlags, verifiedDocuments: $verifiedDocuments, assignedVerifier: $assignedVerifier, completedAt: $completedAt, recommendation: $recommendation)';
}


}

/// @nodoc
abstract mixin class $ClaimVerificationEntityCopyWith<$Res>  {
  factory $ClaimVerificationEntityCopyWith(ClaimVerificationEntity value, $Res Function(ClaimVerificationEntity) _then) = _$ClaimVerificationEntityCopyWithImpl;
@useResult
$Res call({
 String id, String claimId, String patientName, String providerName, double claimAmount, DateTime claimDate, VerificationStatus status, List<VerificationCheck> checksCompleted, List<VerificationCheck> checksPending, int totalChecks, int passedChecks, int failedChecks, double verificationScore, List<String> redFlags, List<String> verifiedDocuments, String? assignedVerifier, DateTime? completedAt, String? recommendation
});




}
/// @nodoc
class _$ClaimVerificationEntityCopyWithImpl<$Res>
    implements $ClaimVerificationEntityCopyWith<$Res> {
  _$ClaimVerificationEntityCopyWithImpl(this._self, this._then);

  final ClaimVerificationEntity _self;
  final $Res Function(ClaimVerificationEntity) _then;

/// Create a copy of ClaimVerificationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? claimId = null,Object? patientName = null,Object? providerName = null,Object? claimAmount = null,Object? claimDate = null,Object? status = null,Object? checksCompleted = null,Object? checksPending = null,Object? totalChecks = null,Object? passedChecks = null,Object? failedChecks = null,Object? verificationScore = null,Object? redFlags = null,Object? verifiedDocuments = null,Object? assignedVerifier = freezed,Object? completedAt = freezed,Object? recommendation = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,claimId: null == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,providerName: null == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String,claimAmount: null == claimAmount ? _self.claimAmount : claimAmount // ignore: cast_nullable_to_non_nullable
as double,claimDate: null == claimDate ? _self.claimDate : claimDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VerificationStatus,checksCompleted: null == checksCompleted ? _self.checksCompleted : checksCompleted // ignore: cast_nullable_to_non_nullable
as List<VerificationCheck>,checksPending: null == checksPending ? _self.checksPending : checksPending // ignore: cast_nullable_to_non_nullable
as List<VerificationCheck>,totalChecks: null == totalChecks ? _self.totalChecks : totalChecks // ignore: cast_nullable_to_non_nullable
as int,passedChecks: null == passedChecks ? _self.passedChecks : passedChecks // ignore: cast_nullable_to_non_nullable
as int,failedChecks: null == failedChecks ? _self.failedChecks : failedChecks // ignore: cast_nullable_to_non_nullable
as int,verificationScore: null == verificationScore ? _self.verificationScore : verificationScore // ignore: cast_nullable_to_non_nullable
as double,redFlags: null == redFlags ? _self.redFlags : redFlags // ignore: cast_nullable_to_non_nullable
as List<String>,verifiedDocuments: null == verifiedDocuments ? _self.verifiedDocuments : verifiedDocuments // ignore: cast_nullable_to_non_nullable
as List<String>,assignedVerifier: freezed == assignedVerifier ? _self.assignedVerifier : assignedVerifier // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimVerificationEntity].
extension ClaimVerificationEntityPatterns on ClaimVerificationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimVerificationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimVerificationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimVerificationEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClaimVerificationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimVerificationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimVerificationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String claimId,  String patientName,  String providerName,  double claimAmount,  DateTime claimDate,  VerificationStatus status,  List<VerificationCheck> checksCompleted,  List<VerificationCheck> checksPending,  int totalChecks,  int passedChecks,  int failedChecks,  double verificationScore,  List<String> redFlags,  List<String> verifiedDocuments,  String? assignedVerifier,  DateTime? completedAt,  String? recommendation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimVerificationEntity() when $default != null:
return $default(_that.id,_that.claimId,_that.patientName,_that.providerName,_that.claimAmount,_that.claimDate,_that.status,_that.checksCompleted,_that.checksPending,_that.totalChecks,_that.passedChecks,_that.failedChecks,_that.verificationScore,_that.redFlags,_that.verifiedDocuments,_that.assignedVerifier,_that.completedAt,_that.recommendation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String claimId,  String patientName,  String providerName,  double claimAmount,  DateTime claimDate,  VerificationStatus status,  List<VerificationCheck> checksCompleted,  List<VerificationCheck> checksPending,  int totalChecks,  int passedChecks,  int failedChecks,  double verificationScore,  List<String> redFlags,  List<String> verifiedDocuments,  String? assignedVerifier,  DateTime? completedAt,  String? recommendation)  $default,) {final _that = this;
switch (_that) {
case _ClaimVerificationEntity():
return $default(_that.id,_that.claimId,_that.patientName,_that.providerName,_that.claimAmount,_that.claimDate,_that.status,_that.checksCompleted,_that.checksPending,_that.totalChecks,_that.passedChecks,_that.failedChecks,_that.verificationScore,_that.redFlags,_that.verifiedDocuments,_that.assignedVerifier,_that.completedAt,_that.recommendation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String claimId,  String patientName,  String providerName,  double claimAmount,  DateTime claimDate,  VerificationStatus status,  List<VerificationCheck> checksCompleted,  List<VerificationCheck> checksPending,  int totalChecks,  int passedChecks,  int failedChecks,  double verificationScore,  List<String> redFlags,  List<String> verifiedDocuments,  String? assignedVerifier,  DateTime? completedAt,  String? recommendation)?  $default,) {final _that = this;
switch (_that) {
case _ClaimVerificationEntity() when $default != null:
return $default(_that.id,_that.claimId,_that.patientName,_that.providerName,_that.claimAmount,_that.claimDate,_that.status,_that.checksCompleted,_that.checksPending,_that.totalChecks,_that.passedChecks,_that.failedChecks,_that.verificationScore,_that.redFlags,_that.verifiedDocuments,_that.assignedVerifier,_that.completedAt,_that.recommendation);case _:
  return null;

}
}

}

/// @nodoc


class _ClaimVerificationEntity implements ClaimVerificationEntity {
  const _ClaimVerificationEntity({required this.id, required this.claimId, required this.patientName, required this.providerName, required this.claimAmount, required this.claimDate, required this.status, required final  List<VerificationCheck> checksCompleted, required final  List<VerificationCheck> checksPending, required this.totalChecks, required this.passedChecks, required this.failedChecks, required this.verificationScore, required final  List<String> redFlags, required final  List<String> verifiedDocuments, this.assignedVerifier, this.completedAt, this.recommendation}): _checksCompleted = checksCompleted,_checksPending = checksPending,_redFlags = redFlags,_verifiedDocuments = verifiedDocuments;
  

@override final  String id;
@override final  String claimId;
@override final  String patientName;
@override final  String providerName;
@override final  double claimAmount;
@override final  DateTime claimDate;
@override final  VerificationStatus status;
 final  List<VerificationCheck> _checksCompleted;
@override List<VerificationCheck> get checksCompleted {
  if (_checksCompleted is EqualUnmodifiableListView) return _checksCompleted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checksCompleted);
}

 final  List<VerificationCheck> _checksPending;
@override List<VerificationCheck> get checksPending {
  if (_checksPending is EqualUnmodifiableListView) return _checksPending;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checksPending);
}

@override final  int totalChecks;
@override final  int passedChecks;
@override final  int failedChecks;
@override final  double verificationScore;
 final  List<String> _redFlags;
@override List<String> get redFlags {
  if (_redFlags is EqualUnmodifiableListView) return _redFlags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_redFlags);
}

 final  List<String> _verifiedDocuments;
@override List<String> get verifiedDocuments {
  if (_verifiedDocuments is EqualUnmodifiableListView) return _verifiedDocuments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_verifiedDocuments);
}

@override final  String? assignedVerifier;
@override final  DateTime? completedAt;
@override final  String? recommendation;

/// Create a copy of ClaimVerificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimVerificationEntityCopyWith<_ClaimVerificationEntity> get copyWith => __$ClaimVerificationEntityCopyWithImpl<_ClaimVerificationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimVerificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.claimAmount, claimAmount) || other.claimAmount == claimAmount)&&(identical(other.claimDate, claimDate) || other.claimDate == claimDate)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._checksCompleted, _checksCompleted)&&const DeepCollectionEquality().equals(other._checksPending, _checksPending)&&(identical(other.totalChecks, totalChecks) || other.totalChecks == totalChecks)&&(identical(other.passedChecks, passedChecks) || other.passedChecks == passedChecks)&&(identical(other.failedChecks, failedChecks) || other.failedChecks == failedChecks)&&(identical(other.verificationScore, verificationScore) || other.verificationScore == verificationScore)&&const DeepCollectionEquality().equals(other._redFlags, _redFlags)&&const DeepCollectionEquality().equals(other._verifiedDocuments, _verifiedDocuments)&&(identical(other.assignedVerifier, assignedVerifier) || other.assignedVerifier == assignedVerifier)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation));
}


@override
int get hashCode => Object.hash(runtimeType,id,claimId,patientName,providerName,claimAmount,claimDate,status,const DeepCollectionEquality().hash(_checksCompleted),const DeepCollectionEquality().hash(_checksPending),totalChecks,passedChecks,failedChecks,verificationScore,const DeepCollectionEquality().hash(_redFlags),const DeepCollectionEquality().hash(_verifiedDocuments),assignedVerifier,completedAt,recommendation);

@override
String toString() {
  return 'ClaimVerificationEntity(id: $id, claimId: $claimId, patientName: $patientName, providerName: $providerName, claimAmount: $claimAmount, claimDate: $claimDate, status: $status, checksCompleted: $checksCompleted, checksPending: $checksPending, totalChecks: $totalChecks, passedChecks: $passedChecks, failedChecks: $failedChecks, verificationScore: $verificationScore, redFlags: $redFlags, verifiedDocuments: $verifiedDocuments, assignedVerifier: $assignedVerifier, completedAt: $completedAt, recommendation: $recommendation)';
}


}

/// @nodoc
abstract mixin class _$ClaimVerificationEntityCopyWith<$Res> implements $ClaimVerificationEntityCopyWith<$Res> {
  factory _$ClaimVerificationEntityCopyWith(_ClaimVerificationEntity value, $Res Function(_ClaimVerificationEntity) _then) = __$ClaimVerificationEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String claimId, String patientName, String providerName, double claimAmount, DateTime claimDate, VerificationStatus status, List<VerificationCheck> checksCompleted, List<VerificationCheck> checksPending, int totalChecks, int passedChecks, int failedChecks, double verificationScore, List<String> redFlags, List<String> verifiedDocuments, String? assignedVerifier, DateTime? completedAt, String? recommendation
});




}
/// @nodoc
class __$ClaimVerificationEntityCopyWithImpl<$Res>
    implements _$ClaimVerificationEntityCopyWith<$Res> {
  __$ClaimVerificationEntityCopyWithImpl(this._self, this._then);

  final _ClaimVerificationEntity _self;
  final $Res Function(_ClaimVerificationEntity) _then;

/// Create a copy of ClaimVerificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? claimId = null,Object? patientName = null,Object? providerName = null,Object? claimAmount = null,Object? claimDate = null,Object? status = null,Object? checksCompleted = null,Object? checksPending = null,Object? totalChecks = null,Object? passedChecks = null,Object? failedChecks = null,Object? verificationScore = null,Object? redFlags = null,Object? verifiedDocuments = null,Object? assignedVerifier = freezed,Object? completedAt = freezed,Object? recommendation = freezed,}) {
  return _then(_ClaimVerificationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,claimId: null == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,providerName: null == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String,claimAmount: null == claimAmount ? _self.claimAmount : claimAmount // ignore: cast_nullable_to_non_nullable
as double,claimDate: null == claimDate ? _self.claimDate : claimDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VerificationStatus,checksCompleted: null == checksCompleted ? _self._checksCompleted : checksCompleted // ignore: cast_nullable_to_non_nullable
as List<VerificationCheck>,checksPending: null == checksPending ? _self._checksPending : checksPending // ignore: cast_nullable_to_non_nullable
as List<VerificationCheck>,totalChecks: null == totalChecks ? _self.totalChecks : totalChecks // ignore: cast_nullable_to_non_nullable
as int,passedChecks: null == passedChecks ? _self.passedChecks : passedChecks // ignore: cast_nullable_to_non_nullable
as int,failedChecks: null == failedChecks ? _self.failedChecks : failedChecks // ignore: cast_nullable_to_non_nullable
as int,verificationScore: null == verificationScore ? _self.verificationScore : verificationScore // ignore: cast_nullable_to_non_nullable
as double,redFlags: null == redFlags ? _self._redFlags : redFlags // ignore: cast_nullable_to_non_nullable
as List<String>,verifiedDocuments: null == verifiedDocuments ? _self._verifiedDocuments : verifiedDocuments // ignore: cast_nullable_to_non_nullable
as List<String>,assignedVerifier: freezed == assignedVerifier ? _self.assignedVerifier : assignedVerifier // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
