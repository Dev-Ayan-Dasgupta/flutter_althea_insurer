// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MedicationEntity {

 String get id; String get name; String get genericName; MedicationType get type; String get dosage; Frequency get frequency; List<String> get timings; DateTime get startDate; DateTime? get endDate; bool get isActive; String get prescribedBy; String get purpose; String? get sideEffects; String? get instructions;
/// Create a copy of MedicationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicationEntityCopyWith<MedicationEntity> get copyWith => _$MedicationEntityCopyWithImpl<MedicationEntity>(this as MedicationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.genericName, genericName) || other.genericName == genericName)&&(identical(other.type, type) || other.type == type)&&(identical(other.dosage, dosage) || other.dosage == dosage)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&const DeepCollectionEquality().equals(other.timings, timings)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.prescribedBy, prescribedBy) || other.prescribedBy == prescribedBy)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.sideEffects, sideEffects) || other.sideEffects == sideEffects)&&(identical(other.instructions, instructions) || other.instructions == instructions));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,genericName,type,dosage,frequency,const DeepCollectionEquality().hash(timings),startDate,endDate,isActive,prescribedBy,purpose,sideEffects,instructions);

@override
String toString() {
  return 'MedicationEntity(id: $id, name: $name, genericName: $genericName, type: $type, dosage: $dosage, frequency: $frequency, timings: $timings, startDate: $startDate, endDate: $endDate, isActive: $isActive, prescribedBy: $prescribedBy, purpose: $purpose, sideEffects: $sideEffects, instructions: $instructions)';
}


}

/// @nodoc
abstract mixin class $MedicationEntityCopyWith<$Res>  {
  factory $MedicationEntityCopyWith(MedicationEntity value, $Res Function(MedicationEntity) _then) = _$MedicationEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String genericName, MedicationType type, String dosage, Frequency frequency, List<String> timings, DateTime startDate, DateTime? endDate, bool isActive, String prescribedBy, String purpose, String? sideEffects, String? instructions
});




}
/// @nodoc
class _$MedicationEntityCopyWithImpl<$Res>
    implements $MedicationEntityCopyWith<$Res> {
  _$MedicationEntityCopyWithImpl(this._self, this._then);

  final MedicationEntity _self;
  final $Res Function(MedicationEntity) _then;

/// Create a copy of MedicationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? genericName = null,Object? type = null,Object? dosage = null,Object? frequency = null,Object? timings = null,Object? startDate = null,Object? endDate = freezed,Object? isActive = null,Object? prescribedBy = null,Object? purpose = null,Object? sideEffects = freezed,Object? instructions = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,genericName: null == genericName ? _self.genericName : genericName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MedicationType,dosage: null == dosage ? _self.dosage : dosage // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as Frequency,timings: null == timings ? _self.timings : timings // ignore: cast_nullable_to_non_nullable
as List<String>,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,prescribedBy: null == prescribedBy ? _self.prescribedBy : prescribedBy // ignore: cast_nullable_to_non_nullable
as String,purpose: null == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String,sideEffects: freezed == sideEffects ? _self.sideEffects : sideEffects // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MedicationEntity].
extension MedicationEntityPatterns on MedicationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicationEntity value)  $default,){
final _that = this;
switch (_that) {
case _MedicationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MedicationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String genericName,  MedicationType type,  String dosage,  Frequency frequency,  List<String> timings,  DateTime startDate,  DateTime? endDate,  bool isActive,  String prescribedBy,  String purpose,  String? sideEffects,  String? instructions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicationEntity() when $default != null:
return $default(_that.id,_that.name,_that.genericName,_that.type,_that.dosage,_that.frequency,_that.timings,_that.startDate,_that.endDate,_that.isActive,_that.prescribedBy,_that.purpose,_that.sideEffects,_that.instructions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String genericName,  MedicationType type,  String dosage,  Frequency frequency,  List<String> timings,  DateTime startDate,  DateTime? endDate,  bool isActive,  String prescribedBy,  String purpose,  String? sideEffects,  String? instructions)  $default,) {final _that = this;
switch (_that) {
case _MedicationEntity():
return $default(_that.id,_that.name,_that.genericName,_that.type,_that.dosage,_that.frequency,_that.timings,_that.startDate,_that.endDate,_that.isActive,_that.prescribedBy,_that.purpose,_that.sideEffects,_that.instructions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String genericName,  MedicationType type,  String dosage,  Frequency frequency,  List<String> timings,  DateTime startDate,  DateTime? endDate,  bool isActive,  String prescribedBy,  String purpose,  String? sideEffects,  String? instructions)?  $default,) {final _that = this;
switch (_that) {
case _MedicationEntity() when $default != null:
return $default(_that.id,_that.name,_that.genericName,_that.type,_that.dosage,_that.frequency,_that.timings,_that.startDate,_that.endDate,_that.isActive,_that.prescribedBy,_that.purpose,_that.sideEffects,_that.instructions);case _:
  return null;

}
}

}

/// @nodoc


class _MedicationEntity implements MedicationEntity {
  const _MedicationEntity({required this.id, required this.name, required this.genericName, required this.type, required this.dosage, required this.frequency, required final  List<String> timings, required this.startDate, this.endDate, required this.isActive, required this.prescribedBy, required this.purpose, this.sideEffects, this.instructions}): _timings = timings;
  

@override final  String id;
@override final  String name;
@override final  String genericName;
@override final  MedicationType type;
@override final  String dosage;
@override final  Frequency frequency;
 final  List<String> _timings;
@override List<String> get timings {
  if (_timings is EqualUnmodifiableListView) return _timings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timings);
}

@override final  DateTime startDate;
@override final  DateTime? endDate;
@override final  bool isActive;
@override final  String prescribedBy;
@override final  String purpose;
@override final  String? sideEffects;
@override final  String? instructions;

/// Create a copy of MedicationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationEntityCopyWith<_MedicationEntity> get copyWith => __$MedicationEntityCopyWithImpl<_MedicationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.genericName, genericName) || other.genericName == genericName)&&(identical(other.type, type) || other.type == type)&&(identical(other.dosage, dosage) || other.dosage == dosage)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&const DeepCollectionEquality().equals(other._timings, _timings)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.prescribedBy, prescribedBy) || other.prescribedBy == prescribedBy)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.sideEffects, sideEffects) || other.sideEffects == sideEffects)&&(identical(other.instructions, instructions) || other.instructions == instructions));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,genericName,type,dosage,frequency,const DeepCollectionEquality().hash(_timings),startDate,endDate,isActive,prescribedBy,purpose,sideEffects,instructions);

@override
String toString() {
  return 'MedicationEntity(id: $id, name: $name, genericName: $genericName, type: $type, dosage: $dosage, frequency: $frequency, timings: $timings, startDate: $startDate, endDate: $endDate, isActive: $isActive, prescribedBy: $prescribedBy, purpose: $purpose, sideEffects: $sideEffects, instructions: $instructions)';
}


}

/// @nodoc
abstract mixin class _$MedicationEntityCopyWith<$Res> implements $MedicationEntityCopyWith<$Res> {
  factory _$MedicationEntityCopyWith(_MedicationEntity value, $Res Function(_MedicationEntity) _then) = __$MedicationEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String genericName, MedicationType type, String dosage, Frequency frequency, List<String> timings, DateTime startDate, DateTime? endDate, bool isActive, String prescribedBy, String purpose, String? sideEffects, String? instructions
});




}
/// @nodoc
class __$MedicationEntityCopyWithImpl<$Res>
    implements _$MedicationEntityCopyWith<$Res> {
  __$MedicationEntityCopyWithImpl(this._self, this._then);

  final _MedicationEntity _self;
  final $Res Function(_MedicationEntity) _then;

/// Create a copy of MedicationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? genericName = null,Object? type = null,Object? dosage = null,Object? frequency = null,Object? timings = null,Object? startDate = null,Object? endDate = freezed,Object? isActive = null,Object? prescribedBy = null,Object? purpose = null,Object? sideEffects = freezed,Object? instructions = freezed,}) {
  return _then(_MedicationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,genericName: null == genericName ? _self.genericName : genericName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MedicationType,dosage: null == dosage ? _self.dosage : dosage // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as Frequency,timings: null == timings ? _self._timings : timings // ignore: cast_nullable_to_non_nullable
as List<String>,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,prescribedBy: null == prescribedBy ? _self.prescribedBy : prescribedBy // ignore: cast_nullable_to_non_nullable
as String,purpose: null == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String,sideEffects: freezed == sideEffects ? _self.sideEffects : sideEffects // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
