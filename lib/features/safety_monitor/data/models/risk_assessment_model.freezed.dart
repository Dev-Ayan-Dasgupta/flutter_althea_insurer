// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risk_assessment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RiskAssessmentModel {

 String get id; String get patientName; String get patientId; String get cohortType; String get riskLevel; double get riskScore; List<RiskFactorModel> get riskFactors; DateTime get lastAssessment; DateTime get nextAssessment; String get assessedBy;
/// Create a copy of RiskAssessmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskAssessmentModelCopyWith<RiskAssessmentModel> get copyWith => _$RiskAssessmentModelCopyWithImpl<RiskAssessmentModel>(this as RiskAssessmentModel, _$identity);

  /// Serializes this RiskAssessmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskAssessmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&const DeepCollectionEquality().equals(other.riskFactors, riskFactors)&&(identical(other.lastAssessment, lastAssessment) || other.lastAssessment == lastAssessment)&&(identical(other.nextAssessment, nextAssessment) || other.nextAssessment == nextAssessment)&&(identical(other.assessedBy, assessedBy) || other.assessedBy == assessedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientName,patientId,cohortType,riskLevel,riskScore,const DeepCollectionEquality().hash(riskFactors),lastAssessment,nextAssessment,assessedBy);

@override
String toString() {
  return 'RiskAssessmentModel(id: $id, patientName: $patientName, patientId: $patientId, cohortType: $cohortType, riskLevel: $riskLevel, riskScore: $riskScore, riskFactors: $riskFactors, lastAssessment: $lastAssessment, nextAssessment: $nextAssessment, assessedBy: $assessedBy)';
}


}

/// @nodoc
abstract mixin class $RiskAssessmentModelCopyWith<$Res>  {
  factory $RiskAssessmentModelCopyWith(RiskAssessmentModel value, $Res Function(RiskAssessmentModel) _then) = _$RiskAssessmentModelCopyWithImpl;
@useResult
$Res call({
 String id, String patientName, String patientId, String cohortType, String riskLevel, double riskScore, List<RiskFactorModel> riskFactors, DateTime lastAssessment, DateTime nextAssessment, String assessedBy
});




}
/// @nodoc
class _$RiskAssessmentModelCopyWithImpl<$Res>
    implements $RiskAssessmentModelCopyWith<$Res> {
  _$RiskAssessmentModelCopyWithImpl(this._self, this._then);

  final RiskAssessmentModel _self;
  final $Res Function(RiskAssessmentModel) _then;

/// Create a copy of RiskAssessmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientName = null,Object? patientId = null,Object? cohortType = null,Object? riskLevel = null,Object? riskScore = null,Object? riskFactors = null,Object? lastAssessment = null,Object? nextAssessment = null,Object? assessedBy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as String,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,riskFactors: null == riskFactors ? _self.riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<RiskFactorModel>,lastAssessment: null == lastAssessment ? _self.lastAssessment : lastAssessment // ignore: cast_nullable_to_non_nullable
as DateTime,nextAssessment: null == nextAssessment ? _self.nextAssessment : nextAssessment // ignore: cast_nullable_to_non_nullable
as DateTime,assessedBy: null == assessedBy ? _self.assessedBy : assessedBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskAssessmentModel].
extension RiskAssessmentModelPatterns on RiskAssessmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskAssessmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskAssessmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskAssessmentModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskAssessmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskAssessmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskAssessmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientName,  String patientId,  String cohortType,  String riskLevel,  double riskScore,  List<RiskFactorModel> riskFactors,  DateTime lastAssessment,  DateTime nextAssessment,  String assessedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskAssessmentModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientName,  String patientId,  String cohortType,  String riskLevel,  double riskScore,  List<RiskFactorModel> riskFactors,  DateTime lastAssessment,  DateTime nextAssessment,  String assessedBy)  $default,) {final _that = this;
switch (_that) {
case _RiskAssessmentModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientName,  String patientId,  String cohortType,  String riskLevel,  double riskScore,  List<RiskFactorModel> riskFactors,  DateTime lastAssessment,  DateTime nextAssessment,  String assessedBy)?  $default,) {final _that = this;
switch (_that) {
case _RiskAssessmentModel() when $default != null:
return $default(_that.id,_that.patientName,_that.patientId,_that.cohortType,_that.riskLevel,_that.riskScore,_that.riskFactors,_that.lastAssessment,_that.nextAssessment,_that.assessedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiskAssessmentModel extends RiskAssessmentModel {
  const _RiskAssessmentModel({required this.id, required this.patientName, required this.patientId, required this.cohortType, required this.riskLevel, required this.riskScore, required final  List<RiskFactorModel> riskFactors, required this.lastAssessment, required this.nextAssessment, required this.assessedBy}): _riskFactors = riskFactors,super._();
  factory _RiskAssessmentModel.fromJson(Map<String, dynamic> json) => _$RiskAssessmentModelFromJson(json);

@override final  String id;
@override final  String patientName;
@override final  String patientId;
@override final  String cohortType;
@override final  String riskLevel;
@override final  double riskScore;
 final  List<RiskFactorModel> _riskFactors;
@override List<RiskFactorModel> get riskFactors {
  if (_riskFactors is EqualUnmodifiableListView) return _riskFactors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riskFactors);
}

@override final  DateTime lastAssessment;
@override final  DateTime nextAssessment;
@override final  String assessedBy;

/// Create a copy of RiskAssessmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskAssessmentModelCopyWith<_RiskAssessmentModel> get copyWith => __$RiskAssessmentModelCopyWithImpl<_RiskAssessmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskAssessmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskAssessmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&const DeepCollectionEquality().equals(other._riskFactors, _riskFactors)&&(identical(other.lastAssessment, lastAssessment) || other.lastAssessment == lastAssessment)&&(identical(other.nextAssessment, nextAssessment) || other.nextAssessment == nextAssessment)&&(identical(other.assessedBy, assessedBy) || other.assessedBy == assessedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientName,patientId,cohortType,riskLevel,riskScore,const DeepCollectionEquality().hash(_riskFactors),lastAssessment,nextAssessment,assessedBy);

@override
String toString() {
  return 'RiskAssessmentModel(id: $id, patientName: $patientName, patientId: $patientId, cohortType: $cohortType, riskLevel: $riskLevel, riskScore: $riskScore, riskFactors: $riskFactors, lastAssessment: $lastAssessment, nextAssessment: $nextAssessment, assessedBy: $assessedBy)';
}


}

/// @nodoc
abstract mixin class _$RiskAssessmentModelCopyWith<$Res> implements $RiskAssessmentModelCopyWith<$Res> {
  factory _$RiskAssessmentModelCopyWith(_RiskAssessmentModel value, $Res Function(_RiskAssessmentModel) _then) = __$RiskAssessmentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientName, String patientId, String cohortType, String riskLevel, double riskScore, List<RiskFactorModel> riskFactors, DateTime lastAssessment, DateTime nextAssessment, String assessedBy
});




}
/// @nodoc
class __$RiskAssessmentModelCopyWithImpl<$Res>
    implements _$RiskAssessmentModelCopyWith<$Res> {
  __$RiskAssessmentModelCopyWithImpl(this._self, this._then);

  final _RiskAssessmentModel _self;
  final $Res Function(_RiskAssessmentModel) _then;

/// Create a copy of RiskAssessmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientName = null,Object? patientId = null,Object? cohortType = null,Object? riskLevel = null,Object? riskScore = null,Object? riskFactors = null,Object? lastAssessment = null,Object? nextAssessment = null,Object? assessedBy = null,}) {
  return _then(_RiskAssessmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as String,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,riskFactors: null == riskFactors ? _self._riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<RiskFactorModel>,lastAssessment: null == lastAssessment ? _self.lastAssessment : lastAssessment // ignore: cast_nullable_to_non_nullable
as DateTime,nextAssessment: null == nextAssessment ? _self.nextAssessment : nextAssessment // ignore: cast_nullable_to_non_nullable
as DateTime,assessedBy: null == assessedBy ? _self.assessedBy : assessedBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RiskFactorModel {

 String get factor; int get score; String get description;
/// Create a copy of RiskFactorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskFactorModelCopyWith<RiskFactorModel> get copyWith => _$RiskFactorModelCopyWithImpl<RiskFactorModel>(this as RiskFactorModel, _$identity);

  /// Serializes this RiskFactorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskFactorModel&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.score, score) || other.score == score)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,factor,score,description);

@override
String toString() {
  return 'RiskFactorModel(factor: $factor, score: $score, description: $description)';
}


}

/// @nodoc
abstract mixin class $RiskFactorModelCopyWith<$Res>  {
  factory $RiskFactorModelCopyWith(RiskFactorModel value, $Res Function(RiskFactorModel) _then) = _$RiskFactorModelCopyWithImpl;
@useResult
$Res call({
 String factor, int score, String description
});




}
/// @nodoc
class _$RiskFactorModelCopyWithImpl<$Res>
    implements $RiskFactorModelCopyWith<$Res> {
  _$RiskFactorModelCopyWithImpl(this._self, this._then);

  final RiskFactorModel _self;
  final $Res Function(RiskFactorModel) _then;

/// Create a copy of RiskFactorModel
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


/// Adds pattern-matching-related methods to [RiskFactorModel].
extension RiskFactorModelPatterns on RiskFactorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskFactorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskFactorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskFactorModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskFactorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskFactorModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskFactorModel() when $default != null:
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
case _RiskFactorModel() when $default != null:
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
case _RiskFactorModel():
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
case _RiskFactorModel() when $default != null:
return $default(_that.factor,_that.score,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiskFactorModel extends RiskFactorModel {
  const _RiskFactorModel({required this.factor, required this.score, required this.description}): super._();
  factory _RiskFactorModel.fromJson(Map<String, dynamic> json) => _$RiskFactorModelFromJson(json);

@override final  String factor;
@override final  int score;
@override final  String description;

/// Create a copy of RiskFactorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskFactorModelCopyWith<_RiskFactorModel> get copyWith => __$RiskFactorModelCopyWithImpl<_RiskFactorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskFactorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskFactorModel&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.score, score) || other.score == score)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,factor,score,description);

@override
String toString() {
  return 'RiskFactorModel(factor: $factor, score: $score, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RiskFactorModelCopyWith<$Res> implements $RiskFactorModelCopyWith<$Res> {
  factory _$RiskFactorModelCopyWith(_RiskFactorModel value, $Res Function(_RiskFactorModel) _then) = __$RiskFactorModelCopyWithImpl;
@override @useResult
$Res call({
 String factor, int score, String description
});




}
/// @nodoc
class __$RiskFactorModelCopyWithImpl<$Res>
    implements _$RiskFactorModelCopyWith<$Res> {
  __$RiskFactorModelCopyWithImpl(this._self, this._then);

  final _RiskFactorModel _self;
  final $Res Function(_RiskFactorModel) _then;

/// Create a copy of RiskFactorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? factor = null,Object? score = null,Object? description = null,}) {
  return _then(_RiskFactorModel(
factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
