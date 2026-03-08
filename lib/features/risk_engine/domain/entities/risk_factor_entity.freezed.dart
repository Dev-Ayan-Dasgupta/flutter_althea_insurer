// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risk_factor_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RiskFactorEntity {

 String get id; String get name; RiskFactorCategory get category; double get impactScore; String get description; bool get isModifiable; String? get currentValue; String? get targetValue;
/// Create a copy of RiskFactorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskFactorEntityCopyWith<RiskFactorEntity> get copyWith => _$RiskFactorEntityCopyWithImpl<RiskFactorEntity>(this as RiskFactorEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskFactorEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.impactScore, impactScore) || other.impactScore == impactScore)&&(identical(other.description, description) || other.description == description)&&(identical(other.isModifiable, isModifiable) || other.isModifiable == isModifiable)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,category,impactScore,description,isModifiable,currentValue,targetValue);

@override
String toString() {
  return 'RiskFactorEntity(id: $id, name: $name, category: $category, impactScore: $impactScore, description: $description, isModifiable: $isModifiable, currentValue: $currentValue, targetValue: $targetValue)';
}


}

/// @nodoc
abstract mixin class $RiskFactorEntityCopyWith<$Res>  {
  factory $RiskFactorEntityCopyWith(RiskFactorEntity value, $Res Function(RiskFactorEntity) _then) = _$RiskFactorEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, RiskFactorCategory category, double impactScore, String description, bool isModifiable, String? currentValue, String? targetValue
});




}
/// @nodoc
class _$RiskFactorEntityCopyWithImpl<$Res>
    implements $RiskFactorEntityCopyWith<$Res> {
  _$RiskFactorEntityCopyWithImpl(this._self, this._then);

  final RiskFactorEntity _self;
  final $Res Function(RiskFactorEntity) _then;

/// Create a copy of RiskFactorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? category = null,Object? impactScore = null,Object? description = null,Object? isModifiable = null,Object? currentValue = freezed,Object? targetValue = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as RiskFactorCategory,impactScore: null == impactScore ? _self.impactScore : impactScore // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isModifiable: null == isModifiable ? _self.isModifiable : isModifiable // ignore: cast_nullable_to_non_nullable
as bool,currentValue: freezed == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as String?,targetValue: freezed == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskFactorEntity].
extension RiskFactorEntityPatterns on RiskFactorEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskFactorEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskFactorEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskFactorEntity value)  $default,){
final _that = this;
switch (_that) {
case _RiskFactorEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskFactorEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RiskFactorEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  RiskFactorCategory category,  double impactScore,  String description,  bool isModifiable,  String? currentValue,  String? targetValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskFactorEntity() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.impactScore,_that.description,_that.isModifiable,_that.currentValue,_that.targetValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  RiskFactorCategory category,  double impactScore,  String description,  bool isModifiable,  String? currentValue,  String? targetValue)  $default,) {final _that = this;
switch (_that) {
case _RiskFactorEntity():
return $default(_that.id,_that.name,_that.category,_that.impactScore,_that.description,_that.isModifiable,_that.currentValue,_that.targetValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  RiskFactorCategory category,  double impactScore,  String description,  bool isModifiable,  String? currentValue,  String? targetValue)?  $default,) {final _that = this;
switch (_that) {
case _RiskFactorEntity() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.impactScore,_that.description,_that.isModifiable,_that.currentValue,_that.targetValue);case _:
  return null;

}
}

}

/// @nodoc


class _RiskFactorEntity implements RiskFactorEntity {
  const _RiskFactorEntity({required this.id, required this.name, required this.category, required this.impactScore, required this.description, required this.isModifiable, this.currentValue, this.targetValue});
  

@override final  String id;
@override final  String name;
@override final  RiskFactorCategory category;
@override final  double impactScore;
@override final  String description;
@override final  bool isModifiable;
@override final  String? currentValue;
@override final  String? targetValue;

/// Create a copy of RiskFactorEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskFactorEntityCopyWith<_RiskFactorEntity> get copyWith => __$RiskFactorEntityCopyWithImpl<_RiskFactorEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskFactorEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.impactScore, impactScore) || other.impactScore == impactScore)&&(identical(other.description, description) || other.description == description)&&(identical(other.isModifiable, isModifiable) || other.isModifiable == isModifiable)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,category,impactScore,description,isModifiable,currentValue,targetValue);

@override
String toString() {
  return 'RiskFactorEntity(id: $id, name: $name, category: $category, impactScore: $impactScore, description: $description, isModifiable: $isModifiable, currentValue: $currentValue, targetValue: $targetValue)';
}


}

/// @nodoc
abstract mixin class _$RiskFactorEntityCopyWith<$Res> implements $RiskFactorEntityCopyWith<$Res> {
  factory _$RiskFactorEntityCopyWith(_RiskFactorEntity value, $Res Function(_RiskFactorEntity) _then) = __$RiskFactorEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, RiskFactorCategory category, double impactScore, String description, bool isModifiable, String? currentValue, String? targetValue
});




}
/// @nodoc
class __$RiskFactorEntityCopyWithImpl<$Res>
    implements _$RiskFactorEntityCopyWith<$Res> {
  __$RiskFactorEntityCopyWithImpl(this._self, this._then);

  final _RiskFactorEntity _self;
  final $Res Function(_RiskFactorEntity) _then;

/// Create a copy of RiskFactorEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? category = null,Object? impactScore = null,Object? description = null,Object? isModifiable = null,Object? currentValue = freezed,Object? targetValue = freezed,}) {
  return _then(_RiskFactorEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as RiskFactorCategory,impactScore: null == impactScore ? _self.impactScore : impactScore // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isModifiable: null == isModifiable ? _self.isModifiable : isModifiable // ignore: cast_nullable_to_non_nullable
as bool,currentValue: freezed == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as String?,targetValue: freezed == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
