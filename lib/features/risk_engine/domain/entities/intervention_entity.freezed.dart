// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intervention_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InterventionEntity {

 String get id; String get title; String get description; InterventionType get type; InterventionPriority get priority; double get expectedImpact; int get estimatedCost; String get timeframe; bool get isImplemented;
/// Create a copy of InterventionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterventionEntityCopyWith<InterventionEntity> get copyWith => _$InterventionEntityCopyWithImpl<InterventionEntity>(this as InterventionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterventionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.expectedImpact, expectedImpact) || other.expectedImpact == expectedImpact)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost)&&(identical(other.timeframe, timeframe) || other.timeframe == timeframe)&&(identical(other.isImplemented, isImplemented) || other.isImplemented == isImplemented));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,type,priority,expectedImpact,estimatedCost,timeframe,isImplemented);

@override
String toString() {
  return 'InterventionEntity(id: $id, title: $title, description: $description, type: $type, priority: $priority, expectedImpact: $expectedImpact, estimatedCost: $estimatedCost, timeframe: $timeframe, isImplemented: $isImplemented)';
}


}

/// @nodoc
abstract mixin class $InterventionEntityCopyWith<$Res>  {
  factory $InterventionEntityCopyWith(InterventionEntity value, $Res Function(InterventionEntity) _then) = _$InterventionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, InterventionType type, InterventionPriority priority, double expectedImpact, int estimatedCost, String timeframe, bool isImplemented
});




}
/// @nodoc
class _$InterventionEntityCopyWithImpl<$Res>
    implements $InterventionEntityCopyWith<$Res> {
  _$InterventionEntityCopyWithImpl(this._self, this._then);

  final InterventionEntity _self;
  final $Res Function(InterventionEntity) _then;

/// Create a copy of InterventionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? type = null,Object? priority = null,Object? expectedImpact = null,Object? estimatedCost = null,Object? timeframe = null,Object? isImplemented = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InterventionType,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as InterventionPriority,expectedImpact: null == expectedImpact ? _self.expectedImpact : expectedImpact // ignore: cast_nullable_to_non_nullable
as double,estimatedCost: null == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as int,timeframe: null == timeframe ? _self.timeframe : timeframe // ignore: cast_nullable_to_non_nullable
as String,isImplemented: null == isImplemented ? _self.isImplemented : isImplemented // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InterventionEntity].
extension InterventionEntityPatterns on InterventionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterventionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterventionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterventionEntity value)  $default,){
final _that = this;
switch (_that) {
case _InterventionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterventionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _InterventionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  InterventionType type,  InterventionPriority priority,  double expectedImpact,  int estimatedCost,  String timeframe,  bool isImplemented)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterventionEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.type,_that.priority,_that.expectedImpact,_that.estimatedCost,_that.timeframe,_that.isImplemented);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  InterventionType type,  InterventionPriority priority,  double expectedImpact,  int estimatedCost,  String timeframe,  bool isImplemented)  $default,) {final _that = this;
switch (_that) {
case _InterventionEntity():
return $default(_that.id,_that.title,_that.description,_that.type,_that.priority,_that.expectedImpact,_that.estimatedCost,_that.timeframe,_that.isImplemented);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  InterventionType type,  InterventionPriority priority,  double expectedImpact,  int estimatedCost,  String timeframe,  bool isImplemented)?  $default,) {final _that = this;
switch (_that) {
case _InterventionEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.type,_that.priority,_that.expectedImpact,_that.estimatedCost,_that.timeframe,_that.isImplemented);case _:
  return null;

}
}

}

/// @nodoc


class _InterventionEntity implements InterventionEntity {
  const _InterventionEntity({required this.id, required this.title, required this.description, required this.type, required this.priority, required this.expectedImpact, required this.estimatedCost, required this.timeframe, required this.isImplemented});
  

@override final  String id;
@override final  String title;
@override final  String description;
@override final  InterventionType type;
@override final  InterventionPriority priority;
@override final  double expectedImpact;
@override final  int estimatedCost;
@override final  String timeframe;
@override final  bool isImplemented;

/// Create a copy of InterventionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterventionEntityCopyWith<_InterventionEntity> get copyWith => __$InterventionEntityCopyWithImpl<_InterventionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterventionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.expectedImpact, expectedImpact) || other.expectedImpact == expectedImpact)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost)&&(identical(other.timeframe, timeframe) || other.timeframe == timeframe)&&(identical(other.isImplemented, isImplemented) || other.isImplemented == isImplemented));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,type,priority,expectedImpact,estimatedCost,timeframe,isImplemented);

@override
String toString() {
  return 'InterventionEntity(id: $id, title: $title, description: $description, type: $type, priority: $priority, expectedImpact: $expectedImpact, estimatedCost: $estimatedCost, timeframe: $timeframe, isImplemented: $isImplemented)';
}


}

/// @nodoc
abstract mixin class _$InterventionEntityCopyWith<$Res> implements $InterventionEntityCopyWith<$Res> {
  factory _$InterventionEntityCopyWith(_InterventionEntity value, $Res Function(_InterventionEntity) _then) = __$InterventionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, InterventionType type, InterventionPriority priority, double expectedImpact, int estimatedCost, String timeframe, bool isImplemented
});




}
/// @nodoc
class __$InterventionEntityCopyWithImpl<$Res>
    implements _$InterventionEntityCopyWith<$Res> {
  __$InterventionEntityCopyWithImpl(this._self, this._then);

  final _InterventionEntity _self;
  final $Res Function(_InterventionEntity) _then;

/// Create a copy of InterventionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? type = null,Object? priority = null,Object? expectedImpact = null,Object? estimatedCost = null,Object? timeframe = null,Object? isImplemented = null,}) {
  return _then(_InterventionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InterventionType,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as InterventionPriority,expectedImpact: null == expectedImpact ? _self.expectedImpact : expectedImpact // ignore: cast_nullable_to_non_nullable
as double,estimatedCost: null == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as int,timeframe: null == timeframe ? _self.timeframe : timeframe // ignore: cast_nullable_to_non_nullable
as String,isImplemented: null == isImplemented ? _self.isImplemented : isImplemented // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
