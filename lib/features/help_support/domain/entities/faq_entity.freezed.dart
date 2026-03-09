// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FAQEntity {

 String get id; FAQCategory get category; String get question; String get answer; List<String> get tags; int get helpfulCount; int get notHelpfulCount; DateTime get updatedAt;
/// Create a copy of FAQEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FAQEntityCopyWith<FAQEntity> get copyWith => _$FAQEntityCopyWithImpl<FAQEntity>(this as FAQEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FAQEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.helpfulCount, helpfulCount) || other.helpfulCount == helpfulCount)&&(identical(other.notHelpfulCount, notHelpfulCount) || other.notHelpfulCount == notHelpfulCount)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,category,question,answer,const DeepCollectionEquality().hash(tags),helpfulCount,notHelpfulCount,updatedAt);

@override
String toString() {
  return 'FAQEntity(id: $id, category: $category, question: $question, answer: $answer, tags: $tags, helpfulCount: $helpfulCount, notHelpfulCount: $notHelpfulCount, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $FAQEntityCopyWith<$Res>  {
  factory $FAQEntityCopyWith(FAQEntity value, $Res Function(FAQEntity) _then) = _$FAQEntityCopyWithImpl;
@useResult
$Res call({
 String id, FAQCategory category, String question, String answer, List<String> tags, int helpfulCount, int notHelpfulCount, DateTime updatedAt
});




}
/// @nodoc
class _$FAQEntityCopyWithImpl<$Res>
    implements $FAQEntityCopyWith<$Res> {
  _$FAQEntityCopyWithImpl(this._self, this._then);

  final FAQEntity _self;
  final $Res Function(FAQEntity) _then;

/// Create a copy of FAQEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? question = null,Object? answer = null,Object? tags = null,Object? helpfulCount = null,Object? notHelpfulCount = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as FAQCategory,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,helpfulCount: null == helpfulCount ? _self.helpfulCount : helpfulCount // ignore: cast_nullable_to_non_nullable
as int,notHelpfulCount: null == notHelpfulCount ? _self.notHelpfulCount : notHelpfulCount // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [FAQEntity].
extension FAQEntityPatterns on FAQEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FAQEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FAQEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FAQEntity value)  $default,){
final _that = this;
switch (_that) {
case _FAQEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FAQEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FAQEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  FAQCategory category,  String question,  String answer,  List<String> tags,  int helpfulCount,  int notHelpfulCount,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FAQEntity() when $default != null:
return $default(_that.id,_that.category,_that.question,_that.answer,_that.tags,_that.helpfulCount,_that.notHelpfulCount,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  FAQCategory category,  String question,  String answer,  List<String> tags,  int helpfulCount,  int notHelpfulCount,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _FAQEntity():
return $default(_that.id,_that.category,_that.question,_that.answer,_that.tags,_that.helpfulCount,_that.notHelpfulCount,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  FAQCategory category,  String question,  String answer,  List<String> tags,  int helpfulCount,  int notHelpfulCount,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _FAQEntity() when $default != null:
return $default(_that.id,_that.category,_that.question,_that.answer,_that.tags,_that.helpfulCount,_that.notHelpfulCount,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _FAQEntity implements FAQEntity {
  const _FAQEntity({required this.id, required this.category, required this.question, required this.answer, required final  List<String> tags, required this.helpfulCount, required this.notHelpfulCount, required this.updatedAt}): _tags = tags;
  

@override final  String id;
@override final  FAQCategory category;
@override final  String question;
@override final  String answer;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  int helpfulCount;
@override final  int notHelpfulCount;
@override final  DateTime updatedAt;

/// Create a copy of FAQEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FAQEntityCopyWith<_FAQEntity> get copyWith => __$FAQEntityCopyWithImpl<_FAQEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FAQEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.helpfulCount, helpfulCount) || other.helpfulCount == helpfulCount)&&(identical(other.notHelpfulCount, notHelpfulCount) || other.notHelpfulCount == notHelpfulCount)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,category,question,answer,const DeepCollectionEquality().hash(_tags),helpfulCount,notHelpfulCount,updatedAt);

@override
String toString() {
  return 'FAQEntity(id: $id, category: $category, question: $question, answer: $answer, tags: $tags, helpfulCount: $helpfulCount, notHelpfulCount: $notHelpfulCount, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$FAQEntityCopyWith<$Res> implements $FAQEntityCopyWith<$Res> {
  factory _$FAQEntityCopyWith(_FAQEntity value, $Res Function(_FAQEntity) _then) = __$FAQEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, FAQCategory category, String question, String answer, List<String> tags, int helpfulCount, int notHelpfulCount, DateTime updatedAt
});




}
/// @nodoc
class __$FAQEntityCopyWithImpl<$Res>
    implements _$FAQEntityCopyWith<$Res> {
  __$FAQEntityCopyWithImpl(this._self, this._then);

  final _FAQEntity _self;
  final $Res Function(_FAQEntity) _then;

/// Create a copy of FAQEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? question = null,Object? answer = null,Object? tags = null,Object? helpfulCount = null,Object? notHelpfulCount = null,Object? updatedAt = null,}) {
  return _then(_FAQEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as FAQCategory,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,helpfulCount: null == helpfulCount ? _self.helpfulCount : helpfulCount // ignore: cast_nullable_to_non_nullable
as int,notHelpfulCount: null == notHelpfulCount ? _self.notHelpfulCount : notHelpfulCount // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
