// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risk_assessment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RiskAssessmentEntity {

 String get id; String get patientName; String get patientId; CohortType get cohortType; RiskLevel get riskLevel; double get riskScore; List<RiskFactor> get riskFactors; DateTime get lastAssessment; DateTime get nextAssessment; String get assessedBy;
/// Create a copy of RiskAssessmentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskAssessmentEntityCopyWith<RiskAssessmentEntity> get copyWith => _$RiskAssessmentEntityCopyWithImpl<RiskAssessmentEntity>(this as RiskAssessmentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskAssessmentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&const DeepCollectionEquality().equals(other.riskFactors, riskFactors)&&(identical(other.lastAssessment, lastAssessment) || other.lastAssessment == lastAssessment)&&(identical(other.nextAssessment, nextAssessment) || other.nextAssessment == nextAssessment)&&(identical(other.assessedBy, assessedBy) || other.assessedBy == assessedBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientName,patientId,cohortType,riskLevel,riskScore,const DeepCollectionEquality().hash(riskFactors),lastAssessment,nextAssessment,assessedBy);

@override
String toString() {
  return 'RiskAssessmentEntity(id: $id, patientName: $patientName, patientId: $patientId, cohortType: $cohortType, riskLevel: $riskLevel, riskScore: $riskScore, riskFactors: $riskFactors, lastAssessment: $lastAssessment, nextAssessment: $nextAssessment, assessedBy: $assessedBy)';
}


}

/// @nodoc
abstract mixin class $RiskAssessmentEntityCopyWith<$Res>  {
  factory $RiskAssessmentEntityCopyWith(RiskAssessmentEntity value, $Res Function(RiskAssessmentEntity) _then) = _$RiskAssessmentEntityCopyWithImpl;
@useResult
$Res call({
 String id, String patientName, String patientId, CohortType cohortType, RiskLevel riskLevel, double riskScore, List<RiskFactor> riskFactors, DateTime lastAssessment, DateTime nextAssessment, String assessedBy
});




}
/// @nodoc
class _$RiskAssessmentEntityCopyWithImpl<$Res>
    implements $RiskAssessmentEntityCopyWith<$Res> {
  _$RiskAssessmentEntityCopyWithImpl(this._self, this._then);

  final RiskAssessmentEntity _self;
  final $Res Function(RiskAssessmentEntity) _then;

/// Create a copy of RiskAssessmentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientName = null,Object? patientId = null,Object? cohortType = null,Object? riskLevel = null,Object? riskScore = null,Object? riskFactors = null,Object? lastAssessment = null,Object? nextAssessment = null,Object? assessedBy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as CohortType,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as RiskLevel,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,riskFactors: null == riskFactors ? _self.riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<RiskFactor>,lastAssessment: null == lastAssessment ? _self.lastAssessment : lastAssessment // ignore: cast_nullable_to_non_nullable
as DateTime,nextAssessment: null == nextAssessment ? _self.nextAssessment : nextAssessment // ignore: cast_nullable_to_non_nullable
as DateTime,assessedBy: null == assessedBy ? _self.assessedBy : assessedBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskAssessmentEntity].
extension RiskAssessmentEntityPatterns on RiskAssessmentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskAssessmentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskAssessmentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskAssessmentEntity value)  $default,){
final _that = this;
switch (_that) {
case _RiskAssessmentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskAssessmentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RiskAssessmentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientName,  String patientId,  CohortType cohortType,  RiskLevel riskLevel,  double riskScore,  List<RiskFactor> riskFactors,  DateTime lastAssessment,  DateTime nextAssessment,  String assessedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskAssessmentEntity() when $default != null:
return $default(_that.id,_that.patientName,_that.patientId,_that.cohortType,_that.riskLevel,_that.riskScore,_that.riskFactors,_that.lastAssessment,_that.nextAssessment,_that.assessedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientName,  String patientId,  CohortType cohortType,  RiskLevel riskLevel,  double riskScore,  List<RiskFactor> riskFactors,  DateTime lastAssessment,  DateTime nextAssessment,  String assessedBy)  $default,) {final _that = this;
switch (_that) {
case _RiskAssessmentEntity():
return $default(_that.id,_that.patientName,_that.patientId,_that.cohortType,_that.riskLevel,_that.riskScore,_that.riskFactors,_that.lastAssessment,_that.nextAssessment,_that.assessedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientName,  String patientId,  CohortType cohortType,  RiskLevel riskLevel,  double riskScore,  List<RiskFactor> riskFactors,  DateTime lastAssessment,  DateTime nextAssessment,  String assessedBy)?  $default,) {final _that = this;
switch (_that) {
case _RiskAssessmentEntity() when $default != null:
return $default(_that.id,_that.patientName,_that.patientId,_that.cohortType,_that.riskLevel,_that.riskScore,_that.riskFactors,_that.lastAssessment,_that.nextAssessment,_that.assessedBy);case _:
  return null;

}
}

}

/// @nodoc


class _RiskAssessmentEntity implements RiskAssessmentEntity {
  const _RiskAssessmentEntity({required this.id, required this.patientName, required this.patientId, required this.cohortType, required this.riskLevel, required this.riskScore, required final  List<RiskFactor> riskFactors, required this.lastAssessment, required this.nextAssessment, required this.assessedBy}): _riskFactors = riskFactors;
  

@override final  String id;
@override final  String patientName;
@override final  String patientId;
@override final  CohortType cohortType;
@override final  RiskLevel riskLevel;
@override final  double riskScore;
 final  List<RiskFactor> _riskFactors;
@override List<RiskFactor> get riskFactors {
  if (_riskFactors is EqualUnmodifiableListView) return _riskFactors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riskFactors);
}

@override final  DateTime lastAssessment;
@override final  DateTime nextAssessment;
@override final  String assessedBy;

/// Create a copy of RiskAssessmentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskAssessmentEntityCopyWith<_RiskAssessmentEntity> get copyWith => __$RiskAssessmentEntityCopyWithImpl<_RiskAssessmentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskAssessmentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&const DeepCollectionEquality().equals(other._riskFactors, _riskFactors)&&(identical(other.lastAssessment, lastAssessment) || other.lastAssessment == lastAssessment)&&(identical(other.nextAssessment, nextAssessment) || other.nextAssessment == nextAssessment)&&(identical(other.assessedBy, assessedBy) || other.assessedBy == assessedBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientName,patientId,cohortType,riskLevel,riskScore,const DeepCollectionEquality().hash(_riskFactors),lastAssessment,nextAssessment,assessedBy);

@override
String toString() {
  return 'RiskAssessmentEntity(id: $id, patientName: $patientName, patientId: $patientId, cohortType: $cohortType, riskLevel: $riskLevel, riskScore: $riskScore, riskFactors: $riskFactors, lastAssessment: $lastAssessment, nextAssessment: $nextAssessment, assessedBy: $assessedBy)';
}


}

/// @nodoc
abstract mixin class _$RiskAssessmentEntityCopyWith<$Res> implements $RiskAssessmentEntityCopyWith<$Res> {
  factory _$RiskAssessmentEntityCopyWith(_RiskAssessmentEntity value, $Res Function(_RiskAssessmentEntity) _then) = __$RiskAssessmentEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientName, String patientId, CohortType cohortType, RiskLevel riskLevel, double riskScore, List<RiskFactor> riskFactors, DateTime lastAssessment, DateTime nextAssessment, String assessedBy
});




}
/// @nodoc
class __$RiskAssessmentEntityCopyWithImpl<$Res>
    implements _$RiskAssessmentEntityCopyWith<$Res> {
  __$RiskAssessmentEntityCopyWithImpl(this._self, this._then);

  final _RiskAssessmentEntity _self;
  final $Res Function(_RiskAssessmentEntity) _then;

/// Create a copy of RiskAssessmentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientName = null,Object? patientId = null,Object? cohortType = null,Object? riskLevel = null,Object? riskScore = null,Object? riskFactors = null,Object? lastAssessment = null,Object? nextAssessment = null,Object? assessedBy = null,}) {
  return _then(_RiskAssessmentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as CohortType,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as RiskLevel,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,riskFactors: null == riskFactors ? _self._riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<RiskFactor>,lastAssessment: null == lastAssessment ? _self.lastAssessment : lastAssessment // ignore: cast_nullable_to_non_nullable
as DateTime,nextAssessment: null == nextAssessment ? _self.nextAssessment : nextAssessment // ignore: cast_nullable_to_non_nullable
as DateTime,assessedBy: null == assessedBy ? _self.assessedBy : assessedBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RiskFactor {

 String get factor; int get score; String get description;
/// Create a copy of RiskFactor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskFactorCopyWith<RiskFactor> get copyWith => _$RiskFactorCopyWithImpl<RiskFactor>(this as RiskFactor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskFactor&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.score, score) || other.score == score)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,factor,score,description);

@override
String toString() {
  return 'RiskFactor(factor: $factor, score: $score, description: $description)';
}


}

/// @nodoc
abstract mixin class $RiskFactorCopyWith<$Res>  {
  factory $RiskFactorCopyWith(RiskFactor value, $Res Function(RiskFactor) _then) = _$RiskFactorCopyWithImpl;
@useResult
$Res call({
 String factor, int score, String description
});




}
/// @nodoc
class _$RiskFactorCopyWithImpl<$Res>
    implements $RiskFactorCopyWith<$Res> {
  _$RiskFactorCopyWithImpl(this._self, this._then);

  final RiskFactor _self;
  final $Res Function(RiskFactor) _then;

/// Create a copy of RiskFactor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? factor = null,Object? score = null,Object? description = null,}) {
  return _then(_self.copyWith(
factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskFactor].
extension RiskFactorPatterns on RiskFactor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskFactor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskFactor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskFactor value)  $default,){
final _that = this;
switch (_that) {
case _RiskFactor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskFactor value)?  $default,){
final _that = this;
switch (_that) {
case _RiskFactor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String factor,  int score,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskFactor() when $default != null:
return $default(_that.factor,_that.score,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String factor,  int score,  String description)  $default,) {final _that = this;
switch (_that) {
case _RiskFactor():
return $default(_that.factor,_that.score,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String factor,  int score,  String description)?  $default,) {final _that = this;
switch (_that) {
case _RiskFactor() when $default != null:
return $default(_that.factor,_that.score,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _RiskFactor implements RiskFactor {
  const _RiskFactor({required this.factor, required this.score, required this.description});
  

@override final  String factor;
@override final  int score;
@override final  String description;

/// Create a copy of RiskFactor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskFactorCopyWith<_RiskFactor> get copyWith => __$RiskFactorCopyWithImpl<_RiskFactor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskFactor&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.score, score) || other.score == score)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,factor,score,description);

@override
String toString() {
  return 'RiskFactor(factor: $factor, score: $score, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RiskFactorCopyWith<$Res> implements $RiskFactorCopyWith<$Res> {
  factory _$RiskFactorCopyWith(_RiskFactor value, $Res Function(_RiskFactor) _then) = __$RiskFactorCopyWithImpl;
@override @useResult
$Res call({
 String factor, int score, String description
});




}
/// @nodoc
class __$RiskFactorCopyWithImpl<$Res>
    implements _$RiskFactorCopyWith<$Res> {
  __$RiskFactorCopyWithImpl(this._self, this._then);

  final _RiskFactor _self;
  final $Res Function(_RiskFactor) _then;

/// Create a copy of RiskFactor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? factor = null,Object? score = null,Object? description = null,}) {
  return _then(_RiskFactor(
factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
