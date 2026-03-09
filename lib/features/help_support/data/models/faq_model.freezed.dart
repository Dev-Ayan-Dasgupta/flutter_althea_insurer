// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FAQModel {

 String get id; String get category; String get question; String get answer; List<String> get tags; int get helpfulCount; int get notHelpfulCount; DateTime get updatedAt;
/// Create a copy of FAQModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FAQModelCopyWith<FAQModel> get copyWith => _$FAQModelCopyWithImpl<FAQModel>(this as FAQModel, _$identity);

  /// Serializes this FAQModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FAQModel&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.helpfulCount, helpfulCount) || other.helpfulCount == helpfulCount)&&(identical(other.notHelpfulCount, notHelpfulCount) || other.notHelpfulCount == notHelpfulCount)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,question,answer,const DeepCollectionEquality().hash(tags),helpfulCount,notHelpfulCount,updatedAt);

@override
String toString() {
  return 'FAQModel(id: $id, category: $category, question: $question, answer: $answer, tags: $tags, helpfulCount: $helpfulCount, notHelpfulCount: $notHelpfulCount, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $FAQModelCopyWith<$Res>  {
  factory $FAQModelCopyWith(FAQModel value, $Res Function(FAQModel) _then) = _$FAQModelCopyWithImpl;
@useResult
$Res call({
 String id, String category, String question, String answer, List<String> tags, int helpfulCount, int notHelpfulCount, DateTime updatedAt
});




}
/// @nodoc
class _$FAQModelCopyWithImpl<$Res>
    implements $FAQModelCopyWith<$Res> {
  _$FAQModelCopyWithImpl(this._self, this._then);

  final FAQModel _self;
  final $Res Function(FAQModel) _then;

/// Create a copy of FAQModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? question = null,Object? answer = null,Object? tags = null,Object? helpfulCount = null,Object? notHelpfulCount = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,helpfulCount: null == helpfulCount ? _self.helpfulCount : helpfulCount // ignore: cast_nullable_to_non_nullable
as int,notHelpfulCount: null == notHelpfulCount ? _self.notHelpfulCount : notHelpfulCount // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [FAQModel].
extension FAQModelPatterns on FAQModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FAQModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FAQModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FAQModel value)  $default,){
final _that = this;
switch (_that) {
case _FAQModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FAQModel value)?  $default,){
final _that = this;
switch (_that) {
case _FAQModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String category,  String question,  String answer,  List<String> tags,  int helpfulCount,  int notHelpfulCount,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FAQModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String category,  String question,  String answer,  List<String> tags,  int helpfulCount,  int notHelpfulCount,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _FAQModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String category,  String question,  String answer,  List<String> tags,  int helpfulCount,  int notHelpfulCount,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _FAQModel() when $default != null:
return $default(_that.id,_that.category,_that.question,_that.answer,_that.tags,_that.helpfulCount,_that.notHelpfulCount,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FAQModel extends FAQModel {
  const _FAQModel({required this.id, required this.category, required this.question, required this.answer, required final  List<String> tags, required this.helpfulCount, required this.notHelpfulCount, required this.updatedAt}): _tags = tags,super._();
  factory _FAQModel.fromJson(Map<String, dynamic> json) => _$FAQModelFromJson(json);

@override final  String id;
@override final  String category;
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

/// Create a copy of FAQModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FAQModelCopyWith<_FAQModel> get copyWith => __$FAQModelCopyWithImpl<_FAQModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FAQModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FAQModel&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.helpfulCount, helpfulCount) || other.helpfulCount == helpfulCount)&&(identical(other.notHelpfulCount, notHelpfulCount) || other.notHelpfulCount == notHelpfulCount)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,question,answer,const DeepCollectionEquality().hash(_tags),helpfulCount,notHelpfulCount,updatedAt);

@override
String toString() {
  return 'FAQModel(id: $id, category: $category, question: $question, answer: $answer, tags: $tags, helpfulCount: $helpfulCount, notHelpfulCount: $notHelpfulCount, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$FAQModelCopyWith<$Res> implements $FAQModelCopyWith<$Res> {
  factory _$FAQModelCopyWith(_FAQModel value, $Res Function(_FAQModel) _then) = __$FAQModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String category, String question, String answer, List<String> tags, int helpfulCount, int notHelpfulCount, DateTime updatedAt
});




}
/// @nodoc
class __$FAQModelCopyWithImpl<$Res>
    implements _$FAQModelCopyWith<$Res> {
  __$FAQModelCopyWithImpl(this._self, this._then);

  final _FAQModel _self;
  final $Res Function(_FAQModel) _then;

/// Create a copy of FAQModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? question = null,Object? answer = null,Object? tags = null,Object? helpfulCount = null,Object? notHelpfulCount = null,Object? updatedAt = null,}) {
  return _then(_FAQModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
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
