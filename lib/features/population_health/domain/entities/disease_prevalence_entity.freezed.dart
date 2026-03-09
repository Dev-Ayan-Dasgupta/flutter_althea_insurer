// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disease_prevalence_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DiseasePrevalenceEntity {

 String get id; DiseaseCategory get category; String get diseaseName; int get totalCases; int get newCasesThisQuarter; double get prevalenceRate; double get changeFromLastQuarter; int get criticalCases; int get moderateCases; int get mildCases; double get avgAge; String get mostAffectedZone; double get costImpact;
/// Create a copy of DiseasePrevalenceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiseasePrevalenceEntityCopyWith<DiseasePrevalenceEntity> get copyWith => _$DiseasePrevalenceEntityCopyWithImpl<DiseasePrevalenceEntity>(this as DiseasePrevalenceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiseasePrevalenceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.totalCases, totalCases) || other.totalCases == totalCases)&&(identical(other.newCasesThisQuarter, newCasesThisQuarter) || other.newCasesThisQuarter == newCasesThisQuarter)&&(identical(other.prevalenceRate, prevalenceRate) || other.prevalenceRate == prevalenceRate)&&(identical(other.changeFromLastQuarter, changeFromLastQuarter) || other.changeFromLastQuarter == changeFromLastQuarter)&&(identical(other.criticalCases, criticalCases) || other.criticalCases == criticalCases)&&(identical(other.moderateCases, moderateCases) || other.moderateCases == moderateCases)&&(identical(other.mildCases, mildCases) || other.mildCases == mildCases)&&(identical(other.avgAge, avgAge) || other.avgAge == avgAge)&&(identical(other.mostAffectedZone, mostAffectedZone) || other.mostAffectedZone == mostAffectedZone)&&(identical(other.costImpact, costImpact) || other.costImpact == costImpact));
}


@override
int get hashCode => Object.hash(runtimeType,id,category,diseaseName,totalCases,newCasesThisQuarter,prevalenceRate,changeFromLastQuarter,criticalCases,moderateCases,mildCases,avgAge,mostAffectedZone,costImpact);

@override
String toString() {
  return 'DiseasePrevalenceEntity(id: $id, category: $category, diseaseName: $diseaseName, totalCases: $totalCases, newCasesThisQuarter: $newCasesThisQuarter, prevalenceRate: $prevalenceRate, changeFromLastQuarter: $changeFromLastQuarter, criticalCases: $criticalCases, moderateCases: $moderateCases, mildCases: $mildCases, avgAge: $avgAge, mostAffectedZone: $mostAffectedZone, costImpact: $costImpact)';
}


}

/// @nodoc
abstract mixin class $DiseasePrevalenceEntityCopyWith<$Res>  {
  factory $DiseasePrevalenceEntityCopyWith(DiseasePrevalenceEntity value, $Res Function(DiseasePrevalenceEntity) _then) = _$DiseasePrevalenceEntityCopyWithImpl;
@useResult
$Res call({
 String id, DiseaseCategory category, String diseaseName, int totalCases, int newCasesThisQuarter, double prevalenceRate, double changeFromLastQuarter, int criticalCases, int moderateCases, int mildCases, double avgAge, String mostAffectedZone, double costImpact
});




}
/// @nodoc
class _$DiseasePrevalenceEntityCopyWithImpl<$Res>
    implements $DiseasePrevalenceEntityCopyWith<$Res> {
  _$DiseasePrevalenceEntityCopyWithImpl(this._self, this._then);

  final DiseasePrevalenceEntity _self;
  final $Res Function(DiseasePrevalenceEntity) _then;

/// Create a copy of DiseasePrevalenceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? diseaseName = null,Object? totalCases = null,Object? newCasesThisQuarter = null,Object? prevalenceRate = null,Object? changeFromLastQuarter = null,Object? criticalCases = null,Object? moderateCases = null,Object? mildCases = null,Object? avgAge = null,Object? mostAffectedZone = null,Object? costImpact = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as DiseaseCategory,diseaseName: null == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String,totalCases: null == totalCases ? _self.totalCases : totalCases // ignore: cast_nullable_to_non_nullable
as int,newCasesThisQuarter: null == newCasesThisQuarter ? _self.newCasesThisQuarter : newCasesThisQuarter // ignore: cast_nullable_to_non_nullable
as int,prevalenceRate: null == prevalenceRate ? _self.prevalenceRate : prevalenceRate // ignore: cast_nullable_to_non_nullable
as double,changeFromLastQuarter: null == changeFromLastQuarter ? _self.changeFromLastQuarter : changeFromLastQuarter // ignore: cast_nullable_to_non_nullable
as double,criticalCases: null == criticalCases ? _self.criticalCases : criticalCases // ignore: cast_nullable_to_non_nullable
as int,moderateCases: null == moderateCases ? _self.moderateCases : moderateCases // ignore: cast_nullable_to_non_nullable
as int,mildCases: null == mildCases ? _self.mildCases : mildCases // ignore: cast_nullable_to_non_nullable
as int,avgAge: null == avgAge ? _self.avgAge : avgAge // ignore: cast_nullable_to_non_nullable
as double,mostAffectedZone: null == mostAffectedZone ? _self.mostAffectedZone : mostAffectedZone // ignore: cast_nullable_to_non_nullable
as String,costImpact: null == costImpact ? _self.costImpact : costImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DiseasePrevalenceEntity].
extension DiseasePrevalenceEntityPatterns on DiseasePrevalenceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiseasePrevalenceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiseasePrevalenceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiseasePrevalenceEntity value)  $default,){
final _that = this;
switch (_that) {
case _DiseasePrevalenceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiseasePrevalenceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DiseasePrevalenceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DiseaseCategory category,  String diseaseName,  int totalCases,  int newCasesThisQuarter,  double prevalenceRate,  double changeFromLastQuarter,  int criticalCases,  int moderateCases,  int mildCases,  double avgAge,  String mostAffectedZone,  double costImpact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiseasePrevalenceEntity() when $default != null:
return $default(_that.id,_that.category,_that.diseaseName,_that.totalCases,_that.newCasesThisQuarter,_that.prevalenceRate,_that.changeFromLastQuarter,_that.criticalCases,_that.moderateCases,_that.mildCases,_that.avgAge,_that.mostAffectedZone,_that.costImpact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DiseaseCategory category,  String diseaseName,  int totalCases,  int newCasesThisQuarter,  double prevalenceRate,  double changeFromLastQuarter,  int criticalCases,  int moderateCases,  int mildCases,  double avgAge,  String mostAffectedZone,  double costImpact)  $default,) {final _that = this;
switch (_that) {
case _DiseasePrevalenceEntity():
return $default(_that.id,_that.category,_that.diseaseName,_that.totalCases,_that.newCasesThisQuarter,_that.prevalenceRate,_that.changeFromLastQuarter,_that.criticalCases,_that.moderateCases,_that.mildCases,_that.avgAge,_that.mostAffectedZone,_that.costImpact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DiseaseCategory category,  String diseaseName,  int totalCases,  int newCasesThisQuarter,  double prevalenceRate,  double changeFromLastQuarter,  int criticalCases,  int moderateCases,  int mildCases,  double avgAge,  String mostAffectedZone,  double costImpact)?  $default,) {final _that = this;
switch (_that) {
case _DiseasePrevalenceEntity() when $default != null:
return $default(_that.id,_that.category,_that.diseaseName,_that.totalCases,_that.newCasesThisQuarter,_that.prevalenceRate,_that.changeFromLastQuarter,_that.criticalCases,_that.moderateCases,_that.mildCases,_that.avgAge,_that.mostAffectedZone,_that.costImpact);case _:
  return null;

}
}

}

/// @nodoc


class _DiseasePrevalenceEntity implements DiseasePrevalenceEntity {
  const _DiseasePrevalenceEntity({required this.id, required this.category, required this.diseaseName, required this.totalCases, required this.newCasesThisQuarter, required this.prevalenceRate, required this.changeFromLastQuarter, required this.criticalCases, required this.moderateCases, required this.mildCases, required this.avgAge, required this.mostAffectedZone, required this.costImpact});
  

@override final  String id;
@override final  DiseaseCategory category;
@override final  String diseaseName;
@override final  int totalCases;
@override final  int newCasesThisQuarter;
@override final  double prevalenceRate;
@override final  double changeFromLastQuarter;
@override final  int criticalCases;
@override final  int moderateCases;
@override final  int mildCases;
@override final  double avgAge;
@override final  String mostAffectedZone;
@override final  double costImpact;

/// Create a copy of DiseasePrevalenceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiseasePrevalenceEntityCopyWith<_DiseasePrevalenceEntity> get copyWith => __$DiseasePrevalenceEntityCopyWithImpl<_DiseasePrevalenceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiseasePrevalenceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.totalCases, totalCases) || other.totalCases == totalCases)&&(identical(other.newCasesThisQuarter, newCasesThisQuarter) || other.newCasesThisQuarter == newCasesThisQuarter)&&(identical(other.prevalenceRate, prevalenceRate) || other.prevalenceRate == prevalenceRate)&&(identical(other.changeFromLastQuarter, changeFromLastQuarter) || other.changeFromLastQuarter == changeFromLastQuarter)&&(identical(other.criticalCases, criticalCases) || other.criticalCases == criticalCases)&&(identical(other.moderateCases, moderateCases) || other.moderateCases == moderateCases)&&(identical(other.mildCases, mildCases) || other.mildCases == mildCases)&&(identical(other.avgAge, avgAge) || other.avgAge == avgAge)&&(identical(other.mostAffectedZone, mostAffectedZone) || other.mostAffectedZone == mostAffectedZone)&&(identical(other.costImpact, costImpact) || other.costImpact == costImpact));
}


@override
int get hashCode => Object.hash(runtimeType,id,category,diseaseName,totalCases,newCasesThisQuarter,prevalenceRate,changeFromLastQuarter,criticalCases,moderateCases,mildCases,avgAge,mostAffectedZone,costImpact);

@override
String toString() {
  return 'DiseasePrevalenceEntity(id: $id, category: $category, diseaseName: $diseaseName, totalCases: $totalCases, newCasesThisQuarter: $newCasesThisQuarter, prevalenceRate: $prevalenceRate, changeFromLastQuarter: $changeFromLastQuarter, criticalCases: $criticalCases, moderateCases: $moderateCases, mildCases: $mildCases, avgAge: $avgAge, mostAffectedZone: $mostAffectedZone, costImpact: $costImpact)';
}


}

/// @nodoc
abstract mixin class _$DiseasePrevalenceEntityCopyWith<$Res> implements $DiseasePrevalenceEntityCopyWith<$Res> {
  factory _$DiseasePrevalenceEntityCopyWith(_DiseasePrevalenceEntity value, $Res Function(_DiseasePrevalenceEntity) _then) = __$DiseasePrevalenceEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, DiseaseCategory category, String diseaseName, int totalCases, int newCasesThisQuarter, double prevalenceRate, double changeFromLastQuarter, int criticalCases, int moderateCases, int mildCases, double avgAge, String mostAffectedZone, double costImpact
});




}
/// @nodoc
class __$DiseasePrevalenceEntityCopyWithImpl<$Res>
    implements _$DiseasePrevalenceEntityCopyWith<$Res> {
  __$DiseasePrevalenceEntityCopyWithImpl(this._self, this._then);

  final _DiseasePrevalenceEntity _self;
  final $Res Function(_DiseasePrevalenceEntity) _then;

/// Create a copy of DiseasePrevalenceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? diseaseName = null,Object? totalCases = null,Object? newCasesThisQuarter = null,Object? prevalenceRate = null,Object? changeFromLastQuarter = null,Object? criticalCases = null,Object? moderateCases = null,Object? mildCases = null,Object? avgAge = null,Object? mostAffectedZone = null,Object? costImpact = null,}) {
  return _then(_DiseasePrevalenceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as DiseaseCategory,diseaseName: null == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String,totalCases: null == totalCases ? _self.totalCases : totalCases // ignore: cast_nullable_to_non_nullable
as int,newCasesThisQuarter: null == newCasesThisQuarter ? _self.newCasesThisQuarter : newCasesThisQuarter // ignore: cast_nullable_to_non_nullable
as int,prevalenceRate: null == prevalenceRate ? _self.prevalenceRate : prevalenceRate // ignore: cast_nullable_to_non_nullable
as double,changeFromLastQuarter: null == changeFromLastQuarter ? _self.changeFromLastQuarter : changeFromLastQuarter // ignore: cast_nullable_to_non_nullable
as double,criticalCases: null == criticalCases ? _self.criticalCases : criticalCases // ignore: cast_nullable_to_non_nullable
as int,moderateCases: null == moderateCases ? _self.moderateCases : moderateCases // ignore: cast_nullable_to_non_nullable
as int,mildCases: null == mildCases ? _self.mildCases : mildCases // ignore: cast_nullable_to_non_nullable
as int,avgAge: null == avgAge ? _self.avgAge : avgAge // ignore: cast_nullable_to_non_nullable
as double,mostAffectedZone: null == mostAffectedZone ? _self.mostAffectedZone : mostAffectedZone // ignore: cast_nullable_to_non_nullable
as String,costImpact: null == costImpact ? _self.costImpact : costImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
