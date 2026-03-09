// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fraud_alert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FraudAlertModel {

 String get id; String get fraudType; String get severity; String get status; String get claimId; String get patientName; String get providerId; String get providerName; double get claimAmount; double get fraudProbability; int get riskScore; String get detectionReason; List<String> get anomalies; DateTime get detectedAt; String? get investigatorAssigned; DateTime? get investigationStarted; String? get resolutionNotes;
/// Create a copy of FraudAlertModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FraudAlertModelCopyWith<FraudAlertModel> get copyWith => _$FraudAlertModelCopyWithImpl<FraudAlertModel>(this as FraudAlertModel, _$identity);

  /// Serializes this FraudAlertModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FraudAlertModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fraudType, fraudType) || other.fraudType == fraudType)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.status, status) || other.status == status)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.claimAmount, claimAmount) || other.claimAmount == claimAmount)&&(identical(other.fraudProbability, fraudProbability) || other.fraudProbability == fraudProbability)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.detectionReason, detectionReason) || other.detectionReason == detectionReason)&&const DeepCollectionEquality().equals(other.anomalies, anomalies)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.investigatorAssigned, investigatorAssigned) || other.investigatorAssigned == investigatorAssigned)&&(identical(other.investigationStarted, investigationStarted) || other.investigationStarted == investigationStarted)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fraudType,severity,status,claimId,patientName,providerId,providerName,claimAmount,fraudProbability,riskScore,detectionReason,const DeepCollectionEquality().hash(anomalies),detectedAt,investigatorAssigned,investigationStarted,resolutionNotes);

@override
String toString() {
  return 'FraudAlertModel(id: $id, fraudType: $fraudType, severity: $severity, status: $status, claimId: $claimId, patientName: $patientName, providerId: $providerId, providerName: $providerName, claimAmount: $claimAmount, fraudProbability: $fraudProbability, riskScore: $riskScore, detectionReason: $detectionReason, anomalies: $anomalies, detectedAt: $detectedAt, investigatorAssigned: $investigatorAssigned, investigationStarted: $investigationStarted, resolutionNotes: $resolutionNotes)';
}


}

/// @nodoc
abstract mixin class $FraudAlertModelCopyWith<$Res>  {
  factory $FraudAlertModelCopyWith(FraudAlertModel value, $Res Function(FraudAlertModel) _then) = _$FraudAlertModelCopyWithImpl;
@useResult
$Res call({
 String id, String fraudType, String severity, String status, String claimId, String patientName, String providerId, String providerName, double claimAmount, double fraudProbability, int riskScore, String detectionReason, List<String> anomalies, DateTime detectedAt, String? investigatorAssigned, DateTime? investigationStarted, String? resolutionNotes
});




}
/// @nodoc
class _$FraudAlertModelCopyWithImpl<$Res>
    implements $FraudAlertModelCopyWith<$Res> {
  _$FraudAlertModelCopyWithImpl(this._self, this._then);

  final FraudAlertModel _self;
  final $Res Function(FraudAlertModel) _then;

/// Create a copy of FraudAlertModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fraudType = null,Object? severity = null,Object? status = null,Object? claimId = null,Object? patientName = null,Object? providerId = null,Object? providerName = null,Object? claimAmount = null,Object? fraudProbability = null,Object? riskScore = null,Object? detectionReason = null,Object? anomalies = null,Object? detectedAt = null,Object? investigatorAssigned = freezed,Object? investigationStarted = freezed,Object? resolutionNotes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fraudType: null == fraudType ? _self.fraudType : fraudType // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,claimId: null == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,providerName: null == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String,claimAmount: null == claimAmount ? _self.claimAmount : claimAmount // ignore: cast_nullable_to_non_nullable
as double,fraudProbability: null == fraudProbability ? _self.fraudProbability : fraudProbability // ignore: cast_nullable_to_non_nullable
as double,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as int,detectionReason: null == detectionReason ? _self.detectionReason : detectionReason // ignore: cast_nullable_to_non_nullable
as String,anomalies: null == anomalies ? _self.anomalies : anomalies // ignore: cast_nullable_to_non_nullable
as List<String>,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,investigatorAssigned: freezed == investigatorAssigned ? _self.investigatorAssigned : investigatorAssigned // ignore: cast_nullable_to_non_nullable
as String?,investigationStarted: freezed == investigationStarted ? _self.investigationStarted : investigationStarted // ignore: cast_nullable_to_non_nullable
as DateTime?,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FraudAlertModel].
extension FraudAlertModelPatterns on FraudAlertModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FraudAlertModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FraudAlertModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FraudAlertModel value)  $default,){
final _that = this;
switch (_that) {
case _FraudAlertModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FraudAlertModel value)?  $default,){
final _that = this;
switch (_that) {
case _FraudAlertModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fraudType,  String severity,  String status,  String claimId,  String patientName,  String providerId,  String providerName,  double claimAmount,  double fraudProbability,  int riskScore,  String detectionReason,  List<String> anomalies,  DateTime detectedAt,  String? investigatorAssigned,  DateTime? investigationStarted,  String? resolutionNotes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FraudAlertModel() when $default != null:
return $default(_that.id,_that.fraudType,_that.severity,_that.status,_that.claimId,_that.patientName,_that.providerId,_that.providerName,_that.claimAmount,_that.fraudProbability,_that.riskScore,_that.detectionReason,_that.anomalies,_that.detectedAt,_that.investigatorAssigned,_that.investigationStarted,_that.resolutionNotes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fraudType,  String severity,  String status,  String claimId,  String patientName,  String providerId,  String providerName,  double claimAmount,  double fraudProbability,  int riskScore,  String detectionReason,  List<String> anomalies,  DateTime detectedAt,  String? investigatorAssigned,  DateTime? investigationStarted,  String? resolutionNotes)  $default,) {final _that = this;
switch (_that) {
case _FraudAlertModel():
return $default(_that.id,_that.fraudType,_that.severity,_that.status,_that.claimId,_that.patientName,_that.providerId,_that.providerName,_that.claimAmount,_that.fraudProbability,_that.riskScore,_that.detectionReason,_that.anomalies,_that.detectedAt,_that.investigatorAssigned,_that.investigationStarted,_that.resolutionNotes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fraudType,  String severity,  String status,  String claimId,  String patientName,  String providerId,  String providerName,  double claimAmount,  double fraudProbability,  int riskScore,  String detectionReason,  List<String> anomalies,  DateTime detectedAt,  String? investigatorAssigned,  DateTime? investigationStarted,  String? resolutionNotes)?  $default,) {final _that = this;
switch (_that) {
case _FraudAlertModel() when $default != null:
return $default(_that.id,_that.fraudType,_that.severity,_that.status,_that.claimId,_that.patientName,_that.providerId,_that.providerName,_that.claimAmount,_that.fraudProbability,_that.riskScore,_that.detectionReason,_that.anomalies,_that.detectedAt,_that.investigatorAssigned,_that.investigationStarted,_that.resolutionNotes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FraudAlertModel extends FraudAlertModel {
  const _FraudAlertModel({required this.id, required this.fraudType, required this.severity, required this.status, required this.claimId, required this.patientName, required this.providerId, required this.providerName, required this.claimAmount, required this.fraudProbability, required this.riskScore, required this.detectionReason, required final  List<String> anomalies, required this.detectedAt, this.investigatorAssigned, this.investigationStarted, this.resolutionNotes}): _anomalies = anomalies,super._();
  factory _FraudAlertModel.fromJson(Map<String, dynamic> json) => _$FraudAlertModelFromJson(json);

@override final  String id;
@override final  String fraudType;
@override final  String severity;
@override final  String status;
@override final  String claimId;
@override final  String patientName;
@override final  String providerId;
@override final  String providerName;
@override final  double claimAmount;
@override final  double fraudProbability;
@override final  int riskScore;
@override final  String detectionReason;
 final  List<String> _anomalies;
@override List<String> get anomalies {
  if (_anomalies is EqualUnmodifiableListView) return _anomalies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_anomalies);
}

@override final  DateTime detectedAt;
@override final  String? investigatorAssigned;
@override final  DateTime? investigationStarted;
@override final  String? resolutionNotes;

/// Create a copy of FraudAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FraudAlertModelCopyWith<_FraudAlertModel> get copyWith => __$FraudAlertModelCopyWithImpl<_FraudAlertModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FraudAlertModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FraudAlertModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fraudType, fraudType) || other.fraudType == fraudType)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.status, status) || other.status == status)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.claimAmount, claimAmount) || other.claimAmount == claimAmount)&&(identical(other.fraudProbability, fraudProbability) || other.fraudProbability == fraudProbability)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.detectionReason, detectionReason) || other.detectionReason == detectionReason)&&const DeepCollectionEquality().equals(other._anomalies, _anomalies)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.investigatorAssigned, investigatorAssigned) || other.investigatorAssigned == investigatorAssigned)&&(identical(other.investigationStarted, investigationStarted) || other.investigationStarted == investigationStarted)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fraudType,severity,status,claimId,patientName,providerId,providerName,claimAmount,fraudProbability,riskScore,detectionReason,const DeepCollectionEquality().hash(_anomalies),detectedAt,investigatorAssigned,investigationStarted,resolutionNotes);

@override
String toString() {
  return 'FraudAlertModel(id: $id, fraudType: $fraudType, severity: $severity, status: $status, claimId: $claimId, patientName: $patientName, providerId: $providerId, providerName: $providerName, claimAmount: $claimAmount, fraudProbability: $fraudProbability, riskScore: $riskScore, detectionReason: $detectionReason, anomalies: $anomalies, detectedAt: $detectedAt, investigatorAssigned: $investigatorAssigned, investigationStarted: $investigationStarted, resolutionNotes: $resolutionNotes)';
}


}

/// @nodoc
abstract mixin class _$FraudAlertModelCopyWith<$Res> implements $FraudAlertModelCopyWith<$Res> {
  factory _$FraudAlertModelCopyWith(_FraudAlertModel value, $Res Function(_FraudAlertModel) _then) = __$FraudAlertModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String fraudType, String severity, String status, String claimId, String patientName, String providerId, String providerName, double claimAmount, double fraudProbability, int riskScore, String detectionReason, List<String> anomalies, DateTime detectedAt, String? investigatorAssigned, DateTime? investigationStarted, String? resolutionNotes
});




}
/// @nodoc
class __$FraudAlertModelCopyWithImpl<$Res>
    implements _$FraudAlertModelCopyWith<$Res> {
  __$FraudAlertModelCopyWithImpl(this._self, this._then);

  final _FraudAlertModel _self;
  final $Res Function(_FraudAlertModel) _then;

/// Create a copy of FraudAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fraudType = null,Object? severity = null,Object? status = null,Object? claimId = null,Object? patientName = null,Object? providerId = null,Object? providerName = null,Object? claimAmount = null,Object? fraudProbability = null,Object? riskScore = null,Object? detectionReason = null,Object? anomalies = null,Object? detectedAt = null,Object? investigatorAssigned = freezed,Object? investigationStarted = freezed,Object? resolutionNotes = freezed,}) {
  return _then(_FraudAlertModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fraudType: null == fraudType ? _self.fraudType : fraudType // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,claimId: null == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,providerName: null == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String,claimAmount: null == claimAmount ? _self.claimAmount : claimAmount // ignore: cast_nullable_to_non_nullable
as double,fraudProbability: null == fraudProbability ? _self.fraudProbability : fraudProbability // ignore: cast_nullable_to_non_nullable
as double,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as int,detectionReason: null == detectionReason ? _self.detectionReason : detectionReason // ignore: cast_nullable_to_non_nullable
as String,anomalies: null == anomalies ? _self._anomalies : anomalies // ignore: cast_nullable_to_non_nullable
as List<String>,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,investigatorAssigned: freezed == investigatorAssigned ? _self.investigatorAssigned : investigatorAssigned // ignore: cast_nullable_to_non_nullable
as String?,investigationStarted: freezed == investigationStarted ? _self.investigationStarted : investigationStarted // ignore: cast_nullable_to_non_nullable
as DateTime?,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
