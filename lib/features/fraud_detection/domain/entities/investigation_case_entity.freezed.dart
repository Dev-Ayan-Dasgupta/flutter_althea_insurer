// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investigation_case_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvestigationCaseEntity {

 String get id; String get caseNumber; String get title; CaseStatus get status; CasePriority get priority; CaseOutcome get outcome; List<String> get claimIds; String get primarySuspect; String get suspectType; double get totalAmountInvolved; double get recoveredAmount; int get relatedClaims; DateTime get openedAt; DateTime? get closedAt; String get investigator; List<String> get evidenceCollected; List<String> get findings; String? get actionTaken;
/// Create a copy of InvestigationCaseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvestigationCaseEntityCopyWith<InvestigationCaseEntity> get copyWith => _$InvestigationCaseEntityCopyWithImpl<InvestigationCaseEntity>(this as InvestigationCaseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestigationCaseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.caseNumber, caseNumber) || other.caseNumber == caseNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.outcome, outcome) || other.outcome == outcome)&&const DeepCollectionEquality().equals(other.claimIds, claimIds)&&(identical(other.primarySuspect, primarySuspect) || other.primarySuspect == primarySuspect)&&(identical(other.suspectType, suspectType) || other.suspectType == suspectType)&&(identical(other.totalAmountInvolved, totalAmountInvolved) || other.totalAmountInvolved == totalAmountInvolved)&&(identical(other.recoveredAmount, recoveredAmount) || other.recoveredAmount == recoveredAmount)&&(identical(other.relatedClaims, relatedClaims) || other.relatedClaims == relatedClaims)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.investigator, investigator) || other.investigator == investigator)&&const DeepCollectionEquality().equals(other.evidenceCollected, evidenceCollected)&&const DeepCollectionEquality().equals(other.findings, findings)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken));
}


@override
int get hashCode => Object.hash(runtimeType,id,caseNumber,title,status,priority,outcome,const DeepCollectionEquality().hash(claimIds),primarySuspect,suspectType,totalAmountInvolved,recoveredAmount,relatedClaims,openedAt,closedAt,investigator,const DeepCollectionEquality().hash(evidenceCollected),const DeepCollectionEquality().hash(findings),actionTaken);

@override
String toString() {
  return 'InvestigationCaseEntity(id: $id, caseNumber: $caseNumber, title: $title, status: $status, priority: $priority, outcome: $outcome, claimIds: $claimIds, primarySuspect: $primarySuspect, suspectType: $suspectType, totalAmountInvolved: $totalAmountInvolved, recoveredAmount: $recoveredAmount, relatedClaims: $relatedClaims, openedAt: $openedAt, closedAt: $closedAt, investigator: $investigator, evidenceCollected: $evidenceCollected, findings: $findings, actionTaken: $actionTaken)';
}


}

/// @nodoc
abstract mixin class $InvestigationCaseEntityCopyWith<$Res>  {
  factory $InvestigationCaseEntityCopyWith(InvestigationCaseEntity value, $Res Function(InvestigationCaseEntity) _then) = _$InvestigationCaseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String caseNumber, String title, CaseStatus status, CasePriority priority, CaseOutcome outcome, List<String> claimIds, String primarySuspect, String suspectType, double totalAmountInvolved, double recoveredAmount, int relatedClaims, DateTime openedAt, DateTime? closedAt, String investigator, List<String> evidenceCollected, List<String> findings, String? actionTaken
});




}
/// @nodoc
class _$InvestigationCaseEntityCopyWithImpl<$Res>
    implements $InvestigationCaseEntityCopyWith<$Res> {
  _$InvestigationCaseEntityCopyWithImpl(this._self, this._then);

  final InvestigationCaseEntity _self;
  final $Res Function(InvestigationCaseEntity) _then;

/// Create a copy of InvestigationCaseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? caseNumber = null,Object? title = null,Object? status = null,Object? priority = null,Object? outcome = null,Object? claimIds = null,Object? primarySuspect = null,Object? suspectType = null,Object? totalAmountInvolved = null,Object? recoveredAmount = null,Object? relatedClaims = null,Object? openedAt = null,Object? closedAt = freezed,Object? investigator = null,Object? evidenceCollected = null,Object? findings = null,Object? actionTaken = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,caseNumber: null == caseNumber ? _self.caseNumber : caseNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CaseStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as CasePriority,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as CaseOutcome,claimIds: null == claimIds ? _self.claimIds : claimIds // ignore: cast_nullable_to_non_nullable
as List<String>,primarySuspect: null == primarySuspect ? _self.primarySuspect : primarySuspect // ignore: cast_nullable_to_non_nullable
as String,suspectType: null == suspectType ? _self.suspectType : suspectType // ignore: cast_nullable_to_non_nullable
as String,totalAmountInvolved: null == totalAmountInvolved ? _self.totalAmountInvolved : totalAmountInvolved // ignore: cast_nullable_to_non_nullable
as double,recoveredAmount: null == recoveredAmount ? _self.recoveredAmount : recoveredAmount // ignore: cast_nullable_to_non_nullable
as double,relatedClaims: null == relatedClaims ? _self.relatedClaims : relatedClaims // ignore: cast_nullable_to_non_nullable
as int,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,investigator: null == investigator ? _self.investigator : investigator // ignore: cast_nullable_to_non_nullable
as String,evidenceCollected: null == evidenceCollected ? _self.evidenceCollected : evidenceCollected // ignore: cast_nullable_to_non_nullable
as List<String>,findings: null == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as List<String>,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvestigationCaseEntity].
extension InvestigationCaseEntityPatterns on InvestigationCaseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvestigationCaseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvestigationCaseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvestigationCaseEntity value)  $default,){
final _that = this;
switch (_that) {
case _InvestigationCaseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvestigationCaseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _InvestigationCaseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String caseNumber,  String title,  CaseStatus status,  CasePriority priority,  CaseOutcome outcome,  List<String> claimIds,  String primarySuspect,  String suspectType,  double totalAmountInvolved,  double recoveredAmount,  int relatedClaims,  DateTime openedAt,  DateTime? closedAt,  String investigator,  List<String> evidenceCollected,  List<String> findings,  String? actionTaken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvestigationCaseEntity() when $default != null:
return $default(_that.id,_that.caseNumber,_that.title,_that.status,_that.priority,_that.outcome,_that.claimIds,_that.primarySuspect,_that.suspectType,_that.totalAmountInvolved,_that.recoveredAmount,_that.relatedClaims,_that.openedAt,_that.closedAt,_that.investigator,_that.evidenceCollected,_that.findings,_that.actionTaken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String caseNumber,  String title,  CaseStatus status,  CasePriority priority,  CaseOutcome outcome,  List<String> claimIds,  String primarySuspect,  String suspectType,  double totalAmountInvolved,  double recoveredAmount,  int relatedClaims,  DateTime openedAt,  DateTime? closedAt,  String investigator,  List<String> evidenceCollected,  List<String> findings,  String? actionTaken)  $default,) {final _that = this;
switch (_that) {
case _InvestigationCaseEntity():
return $default(_that.id,_that.caseNumber,_that.title,_that.status,_that.priority,_that.outcome,_that.claimIds,_that.primarySuspect,_that.suspectType,_that.totalAmountInvolved,_that.recoveredAmount,_that.relatedClaims,_that.openedAt,_that.closedAt,_that.investigator,_that.evidenceCollected,_that.findings,_that.actionTaken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String caseNumber,  String title,  CaseStatus status,  CasePriority priority,  CaseOutcome outcome,  List<String> claimIds,  String primarySuspect,  String suspectType,  double totalAmountInvolved,  double recoveredAmount,  int relatedClaims,  DateTime openedAt,  DateTime? closedAt,  String investigator,  List<String> evidenceCollected,  List<String> findings,  String? actionTaken)?  $default,) {final _that = this;
switch (_that) {
case _InvestigationCaseEntity() when $default != null:
return $default(_that.id,_that.caseNumber,_that.title,_that.status,_that.priority,_that.outcome,_that.claimIds,_that.primarySuspect,_that.suspectType,_that.totalAmountInvolved,_that.recoveredAmount,_that.relatedClaims,_that.openedAt,_that.closedAt,_that.investigator,_that.evidenceCollected,_that.findings,_that.actionTaken);case _:
  return null;

}
}

}

/// @nodoc


class _InvestigationCaseEntity implements InvestigationCaseEntity {
  const _InvestigationCaseEntity({required this.id, required this.caseNumber, required this.title, required this.status, required this.priority, required this.outcome, required final  List<String> claimIds, required this.primarySuspect, required this.suspectType, required this.totalAmountInvolved, required this.recoveredAmount, required this.relatedClaims, required this.openedAt, this.closedAt, required this.investigator, required final  List<String> evidenceCollected, required final  List<String> findings, this.actionTaken}): _claimIds = claimIds,_evidenceCollected = evidenceCollected,_findings = findings;
  

@override final  String id;
@override final  String caseNumber;
@override final  String title;
@override final  CaseStatus status;
@override final  CasePriority priority;
@override final  CaseOutcome outcome;
 final  List<String> _claimIds;
@override List<String> get claimIds {
  if (_claimIds is EqualUnmodifiableListView) return _claimIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_claimIds);
}

@override final  String primarySuspect;
@override final  String suspectType;
@override final  double totalAmountInvolved;
@override final  double recoveredAmount;
@override final  int relatedClaims;
@override final  DateTime openedAt;
@override final  DateTime? closedAt;
@override final  String investigator;
 final  List<String> _evidenceCollected;
@override List<String> get evidenceCollected {
  if (_evidenceCollected is EqualUnmodifiableListView) return _evidenceCollected;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidenceCollected);
}

 final  List<String> _findings;
@override List<String> get findings {
  if (_findings is EqualUnmodifiableListView) return _findings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_findings);
}

@override final  String? actionTaken;

/// Create a copy of InvestigationCaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvestigationCaseEntityCopyWith<_InvestigationCaseEntity> get copyWith => __$InvestigationCaseEntityCopyWithImpl<_InvestigationCaseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvestigationCaseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.caseNumber, caseNumber) || other.caseNumber == caseNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.outcome, outcome) || other.outcome == outcome)&&const DeepCollectionEquality().equals(other._claimIds, _claimIds)&&(identical(other.primarySuspect, primarySuspect) || other.primarySuspect == primarySuspect)&&(identical(other.suspectType, suspectType) || other.suspectType == suspectType)&&(identical(other.totalAmountInvolved, totalAmountInvolved) || other.totalAmountInvolved == totalAmountInvolved)&&(identical(other.recoveredAmount, recoveredAmount) || other.recoveredAmount == recoveredAmount)&&(identical(other.relatedClaims, relatedClaims) || other.relatedClaims == relatedClaims)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.investigator, investigator) || other.investigator == investigator)&&const DeepCollectionEquality().equals(other._evidenceCollected, _evidenceCollected)&&const DeepCollectionEquality().equals(other._findings, _findings)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken));
}


@override
int get hashCode => Object.hash(runtimeType,id,caseNumber,title,status,priority,outcome,const DeepCollectionEquality().hash(_claimIds),primarySuspect,suspectType,totalAmountInvolved,recoveredAmount,relatedClaims,openedAt,closedAt,investigator,const DeepCollectionEquality().hash(_evidenceCollected),const DeepCollectionEquality().hash(_findings),actionTaken);

@override
String toString() {
  return 'InvestigationCaseEntity(id: $id, caseNumber: $caseNumber, title: $title, status: $status, priority: $priority, outcome: $outcome, claimIds: $claimIds, primarySuspect: $primarySuspect, suspectType: $suspectType, totalAmountInvolved: $totalAmountInvolved, recoveredAmount: $recoveredAmount, relatedClaims: $relatedClaims, openedAt: $openedAt, closedAt: $closedAt, investigator: $investigator, evidenceCollected: $evidenceCollected, findings: $findings, actionTaken: $actionTaken)';
}


}

/// @nodoc
abstract mixin class _$InvestigationCaseEntityCopyWith<$Res> implements $InvestigationCaseEntityCopyWith<$Res> {
  factory _$InvestigationCaseEntityCopyWith(_InvestigationCaseEntity value, $Res Function(_InvestigationCaseEntity) _then) = __$InvestigationCaseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String caseNumber, String title, CaseStatus status, CasePriority priority, CaseOutcome outcome, List<String> claimIds, String primarySuspect, String suspectType, double totalAmountInvolved, double recoveredAmount, int relatedClaims, DateTime openedAt, DateTime? closedAt, String investigator, List<String> evidenceCollected, List<String> findings, String? actionTaken
});




}
/// @nodoc
class __$InvestigationCaseEntityCopyWithImpl<$Res>
    implements _$InvestigationCaseEntityCopyWith<$Res> {
  __$InvestigationCaseEntityCopyWithImpl(this._self, this._then);

  final _InvestigationCaseEntity _self;
  final $Res Function(_InvestigationCaseEntity) _then;

/// Create a copy of InvestigationCaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? caseNumber = null,Object? title = null,Object? status = null,Object? priority = null,Object? outcome = null,Object? claimIds = null,Object? primarySuspect = null,Object? suspectType = null,Object? totalAmountInvolved = null,Object? recoveredAmount = null,Object? relatedClaims = null,Object? openedAt = null,Object? closedAt = freezed,Object? investigator = null,Object? evidenceCollected = null,Object? findings = null,Object? actionTaken = freezed,}) {
  return _then(_InvestigationCaseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,caseNumber: null == caseNumber ? _self.caseNumber : caseNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CaseStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as CasePriority,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as CaseOutcome,claimIds: null == claimIds ? _self._claimIds : claimIds // ignore: cast_nullable_to_non_nullable
as List<String>,primarySuspect: null == primarySuspect ? _self.primarySuspect : primarySuspect // ignore: cast_nullable_to_non_nullable
as String,suspectType: null == suspectType ? _self.suspectType : suspectType // ignore: cast_nullable_to_non_nullable
as String,totalAmountInvolved: null == totalAmountInvolved ? _self.totalAmountInvolved : totalAmountInvolved // ignore: cast_nullable_to_non_nullable
as double,recoveredAmount: null == recoveredAmount ? _self.recoveredAmount : recoveredAmount // ignore: cast_nullable_to_non_nullable
as double,relatedClaims: null == relatedClaims ? _self.relatedClaims : relatedClaims // ignore: cast_nullable_to_non_nullable
as int,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,investigator: null == investigator ? _self.investigator : investigator // ignore: cast_nullable_to_non_nullable
as String,evidenceCollected: null == evidenceCollected ? _self._evidenceCollected : evidenceCollected // ignore: cast_nullable_to_non_nullable
as List<String>,findings: null == findings ? _self._findings : findings // ignore: cast_nullable_to_non_nullable
as List<String>,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
