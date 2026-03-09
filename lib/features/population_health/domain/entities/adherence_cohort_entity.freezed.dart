// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adherence_cohort_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdherenceCohortEntity {

 String get id; String get cohortName; String get diseaseType; int get totalPatients; int get excellentAdherence; int get goodAdherence; int get fairAdherence; int get poorAdherence; double get avgAdherenceRate; double get hospitalizationRate; double get costPerPatient; List<String> get interventionsActive;
/// Create a copy of AdherenceCohortEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdherenceCohortEntityCopyWith<AdherenceCohortEntity> get copyWith => _$AdherenceCohortEntityCopyWithImpl<AdherenceCohortEntity>(this as AdherenceCohortEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdherenceCohortEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.cohortName, cohortName) || other.cohortName == cohortName)&&(identical(other.diseaseType, diseaseType) || other.diseaseType == diseaseType)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.excellentAdherence, excellentAdherence) || other.excellentAdherence == excellentAdherence)&&(identical(other.goodAdherence, goodAdherence) || other.goodAdherence == goodAdherence)&&(identical(other.fairAdherence, fairAdherence) || other.fairAdherence == fairAdherence)&&(identical(other.poorAdherence, poorAdherence) || other.poorAdherence == poorAdherence)&&(identical(other.avgAdherenceRate, avgAdherenceRate) || other.avgAdherenceRate == avgAdherenceRate)&&(identical(other.hospitalizationRate, hospitalizationRate) || other.hospitalizationRate == hospitalizationRate)&&(identical(other.costPerPatient, costPerPatient) || other.costPerPatient == costPerPatient)&&const DeepCollectionEquality().equals(other.interventionsActive, interventionsActive));
}


@override
int get hashCode => Object.hash(runtimeType,id,cohortName,diseaseType,totalPatients,excellentAdherence,goodAdherence,fairAdherence,poorAdherence,avgAdherenceRate,hospitalizationRate,costPerPatient,const DeepCollectionEquality().hash(interventionsActive));

@override
String toString() {
  return 'AdherenceCohortEntity(id: $id, cohortName: $cohortName, diseaseType: $diseaseType, totalPatients: $totalPatients, excellentAdherence: $excellentAdherence, goodAdherence: $goodAdherence, fairAdherence: $fairAdherence, poorAdherence: $poorAdherence, avgAdherenceRate: $avgAdherenceRate, hospitalizationRate: $hospitalizationRate, costPerPatient: $costPerPatient, interventionsActive: $interventionsActive)';
}


}

/// @nodoc
abstract mixin class $AdherenceCohortEntityCopyWith<$Res>  {
  factory $AdherenceCohortEntityCopyWith(AdherenceCohortEntity value, $Res Function(AdherenceCohortEntity) _then) = _$AdherenceCohortEntityCopyWithImpl;
@useResult
$Res call({
 String id, String cohortName, String diseaseType, int totalPatients, int excellentAdherence, int goodAdherence, int fairAdherence, int poorAdherence, double avgAdherenceRate, double hospitalizationRate, double costPerPatient, List<String> interventionsActive
});




}
/// @nodoc
class _$AdherenceCohortEntityCopyWithImpl<$Res>
    implements $AdherenceCohortEntityCopyWith<$Res> {
  _$AdherenceCohortEntityCopyWithImpl(this._self, this._then);

  final AdherenceCohortEntity _self;
  final $Res Function(AdherenceCohortEntity) _then;

/// Create a copy of AdherenceCohortEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? cohortName = null,Object? diseaseType = null,Object? totalPatients = null,Object? excellentAdherence = null,Object? goodAdherence = null,Object? fairAdherence = null,Object? poorAdherence = null,Object? avgAdherenceRate = null,Object? hospitalizationRate = null,Object? costPerPatient = null,Object? interventionsActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,cohortName: null == cohortName ? _self.cohortName : cohortName // ignore: cast_nullable_to_non_nullable
as String,diseaseType: null == diseaseType ? _self.diseaseType : diseaseType // ignore: cast_nullable_to_non_nullable
as String,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,excellentAdherence: null == excellentAdherence ? _self.excellentAdherence : excellentAdherence // ignore: cast_nullable_to_non_nullable
as int,goodAdherence: null == goodAdherence ? _self.goodAdherence : goodAdherence // ignore: cast_nullable_to_non_nullable
as int,fairAdherence: null == fairAdherence ? _self.fairAdherence : fairAdherence // ignore: cast_nullable_to_non_nullable
as int,poorAdherence: null == poorAdherence ? _self.poorAdherence : poorAdherence // ignore: cast_nullable_to_non_nullable
as int,avgAdherenceRate: null == avgAdherenceRate ? _self.avgAdherenceRate : avgAdherenceRate // ignore: cast_nullable_to_non_nullable
as double,hospitalizationRate: null == hospitalizationRate ? _self.hospitalizationRate : hospitalizationRate // ignore: cast_nullable_to_non_nullable
as double,costPerPatient: null == costPerPatient ? _self.costPerPatient : costPerPatient // ignore: cast_nullable_to_non_nullable
as double,interventionsActive: null == interventionsActive ? _self.interventionsActive : interventionsActive // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdherenceCohortEntity].
extension AdherenceCohortEntityPatterns on AdherenceCohortEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdherenceCohortEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdherenceCohortEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdherenceCohortEntity value)  $default,){
final _that = this;
switch (_that) {
case _AdherenceCohortEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdherenceCohortEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AdherenceCohortEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String cohortName,  String diseaseType,  int totalPatients,  int excellentAdherence,  int goodAdherence,  int fairAdherence,  int poorAdherence,  double avgAdherenceRate,  double hospitalizationRate,  double costPerPatient,  List<String> interventionsActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdherenceCohortEntity() when $default != null:
return $default(_that.id,_that.cohortName,_that.diseaseType,_that.totalPatients,_that.excellentAdherence,_that.goodAdherence,_that.fairAdherence,_that.poorAdherence,_that.avgAdherenceRate,_that.hospitalizationRate,_that.costPerPatient,_that.interventionsActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String cohortName,  String diseaseType,  int totalPatients,  int excellentAdherence,  int goodAdherence,  int fairAdherence,  int poorAdherence,  double avgAdherenceRate,  double hospitalizationRate,  double costPerPatient,  List<String> interventionsActive)  $default,) {final _that = this;
switch (_that) {
case _AdherenceCohortEntity():
return $default(_that.id,_that.cohortName,_that.diseaseType,_that.totalPatients,_that.excellentAdherence,_that.goodAdherence,_that.fairAdherence,_that.poorAdherence,_that.avgAdherenceRate,_that.hospitalizationRate,_that.costPerPatient,_that.interventionsActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String cohortName,  String diseaseType,  int totalPatients,  int excellentAdherence,  int goodAdherence,  int fairAdherence,  int poorAdherence,  double avgAdherenceRate,  double hospitalizationRate,  double costPerPatient,  List<String> interventionsActive)?  $default,) {final _that = this;
switch (_that) {
case _AdherenceCohortEntity() when $default != null:
return $default(_that.id,_that.cohortName,_that.diseaseType,_that.totalPatients,_that.excellentAdherence,_that.goodAdherence,_that.fairAdherence,_that.poorAdherence,_that.avgAdherenceRate,_that.hospitalizationRate,_that.costPerPatient,_that.interventionsActive);case _:
  return null;

}
}

}

/// @nodoc


class _AdherenceCohortEntity implements AdherenceCohortEntity {
  const _AdherenceCohortEntity({required this.id, required this.cohortName, required this.diseaseType, required this.totalPatients, required this.excellentAdherence, required this.goodAdherence, required this.fairAdherence, required this.poorAdherence, required this.avgAdherenceRate, required this.hospitalizationRate, required this.costPerPatient, required final  List<String> interventionsActive}): _interventionsActive = interventionsActive;
  

@override final  String id;
@override final  String cohortName;
@override final  String diseaseType;
@override final  int totalPatients;
@override final  int excellentAdherence;
@override final  int goodAdherence;
@override final  int fairAdherence;
@override final  int poorAdherence;
@override final  double avgAdherenceRate;
@override final  double hospitalizationRate;
@override final  double costPerPatient;
 final  List<String> _interventionsActive;
@override List<String> get interventionsActive {
  if (_interventionsActive is EqualUnmodifiableListView) return _interventionsActive;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interventionsActive);
}


/// Create a copy of AdherenceCohortEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdherenceCohortEntityCopyWith<_AdherenceCohortEntity> get copyWith => __$AdherenceCohortEntityCopyWithImpl<_AdherenceCohortEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdherenceCohortEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.cohortName, cohortName) || other.cohortName == cohortName)&&(identical(other.diseaseType, diseaseType) || other.diseaseType == diseaseType)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.excellentAdherence, excellentAdherence) || other.excellentAdherence == excellentAdherence)&&(identical(other.goodAdherence, goodAdherence) || other.goodAdherence == goodAdherence)&&(identical(other.fairAdherence, fairAdherence) || other.fairAdherence == fairAdherence)&&(identical(other.poorAdherence, poorAdherence) || other.poorAdherence == poorAdherence)&&(identical(other.avgAdherenceRate, avgAdherenceRate) || other.avgAdherenceRate == avgAdherenceRate)&&(identical(other.hospitalizationRate, hospitalizationRate) || other.hospitalizationRate == hospitalizationRate)&&(identical(other.costPerPatient, costPerPatient) || other.costPerPatient == costPerPatient)&&const DeepCollectionEquality().equals(other._interventionsActive, _interventionsActive));
}


@override
int get hashCode => Object.hash(runtimeType,id,cohortName,diseaseType,totalPatients,excellentAdherence,goodAdherence,fairAdherence,poorAdherence,avgAdherenceRate,hospitalizationRate,costPerPatient,const DeepCollectionEquality().hash(_interventionsActive));

@override
String toString() {
  return 'AdherenceCohortEntity(id: $id, cohortName: $cohortName, diseaseType: $diseaseType, totalPatients: $totalPatients, excellentAdherence: $excellentAdherence, goodAdherence: $goodAdherence, fairAdherence: $fairAdherence, poorAdherence: $poorAdherence, avgAdherenceRate: $avgAdherenceRate, hospitalizationRate: $hospitalizationRate, costPerPatient: $costPerPatient, interventionsActive: $interventionsActive)';
}


}

/// @nodoc
abstract mixin class _$AdherenceCohortEntityCopyWith<$Res> implements $AdherenceCohortEntityCopyWith<$Res> {
  factory _$AdherenceCohortEntityCopyWith(_AdherenceCohortEntity value, $Res Function(_AdherenceCohortEntity) _then) = __$AdherenceCohortEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String cohortName, String diseaseType, int totalPatients, int excellentAdherence, int goodAdherence, int fairAdherence, int poorAdherence, double avgAdherenceRate, double hospitalizationRate, double costPerPatient, List<String> interventionsActive
});




}
/// @nodoc
class __$AdherenceCohortEntityCopyWithImpl<$Res>
    implements _$AdherenceCohortEntityCopyWith<$Res> {
  __$AdherenceCohortEntityCopyWithImpl(this._self, this._then);

  final _AdherenceCohortEntity _self;
  final $Res Function(_AdherenceCohortEntity) _then;

/// Create a copy of AdherenceCohortEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? cohortName = null,Object? diseaseType = null,Object? totalPatients = null,Object? excellentAdherence = null,Object? goodAdherence = null,Object? fairAdherence = null,Object? poorAdherence = null,Object? avgAdherenceRate = null,Object? hospitalizationRate = null,Object? costPerPatient = null,Object? interventionsActive = null,}) {
  return _then(_AdherenceCohortEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,cohortName: null == cohortName ? _self.cohortName : cohortName // ignore: cast_nullable_to_non_nullable
as String,diseaseType: null == diseaseType ? _self.diseaseType : diseaseType // ignore: cast_nullable_to_non_nullable
as String,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,excellentAdherence: null == excellentAdherence ? _self.excellentAdherence : excellentAdherence // ignore: cast_nullable_to_non_nullable
as int,goodAdherence: null == goodAdherence ? _self.goodAdherence : goodAdherence // ignore: cast_nullable_to_non_nullable
as int,fairAdherence: null == fairAdherence ? _self.fairAdherence : fairAdherence // ignore: cast_nullable_to_non_nullable
as int,poorAdherence: null == poorAdherence ? _self.poorAdherence : poorAdherence // ignore: cast_nullable_to_non_nullable
as int,avgAdherenceRate: null == avgAdherenceRate ? _self.avgAdherenceRate : avgAdherenceRate // ignore: cast_nullable_to_non_nullable
as double,hospitalizationRate: null == hospitalizationRate ? _self.hospitalizationRate : hospitalizationRate // ignore: cast_nullable_to_non_nullable
as double,costPerPatient: null == costPerPatient ? _self.costPerPatient : costPerPatient // ignore: cast_nullable_to_non_nullable
as double,interventionsActive: null == interventionsActive ? _self._interventionsActive : interventionsActive // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
