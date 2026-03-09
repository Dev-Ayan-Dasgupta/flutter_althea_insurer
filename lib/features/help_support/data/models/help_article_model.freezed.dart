// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'help_article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HelpArticleModel {

 String get id; String get category; String get title; String get summary; String get content; List<String> get tags; int get readTime; int get views; DateTime get publishedAt; DateTime get updatedAt;
/// Create a copy of HelpArticleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HelpArticleModelCopyWith<HelpArticleModel> get copyWith => _$HelpArticleModelCopyWithImpl<HelpArticleModel>(this as HelpArticleModel, _$identity);

  /// Serializes this HelpArticleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HelpArticleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.readTime, readTime) || other.readTime == readTime)&&(identical(other.views, views) || other.views == views)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,title,summary,content,const DeepCollectionEquality().hash(tags),readTime,views,publishedAt,updatedAt);

@override
String toString() {
  return 'HelpArticleModel(id: $id, category: $category, title: $title, summary: $summary, content: $content, tags: $tags, readTime: $readTime, views: $views, publishedAt: $publishedAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $HelpArticleModelCopyWith<$Res>  {
  factory $HelpArticleModelCopyWith(HelpArticleModel value, $Res Function(HelpArticleModel) _then) = _$HelpArticleModelCopyWithImpl;
@useResult
$Res call({
 String id, String category, String title, String summary, String content, List<String> tags, int readTime, int views, DateTime publishedAt, DateTime updatedAt
});




}
/// @nodoc
class _$HelpArticleModelCopyWithImpl<$Res>
    implements $HelpArticleModelCopyWith<$Res> {
  _$HelpArticleModelCopyWithImpl(this._self, this._then);

  final HelpArticleModel _self;
  final $Res Function(HelpArticleModel) _then;

/// Create a copy of HelpArticleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? title = null,Object? summary = null,Object? content = null,Object? tags = null,Object? readTime = null,Object? views = null,Object? publishedAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,readTime: null == readTime ? _self.readTime : readTime // ignore: cast_nullable_to_non_nullable
as int,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [HelpArticleModel].
extension HelpArticleModelPatterns on HelpArticleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HelpArticleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HelpArticleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HelpArticleModel value)  $default,){
final _that = this;
switch (_that) {
case _HelpArticleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HelpArticleModel value)?  $default,){
final _that = this;
switch (_that) {
case _HelpArticleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String category,  String title,  String summary,  String content,  List<String> tags,  int readTime,  int views,  DateTime publishedAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HelpArticleModel() when $default != null:
return $default(_that.id,_that.category,_that.title,_that.summary,_that.content,_that.tags,_that.readTime,_that.views,_that.publishedAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String category,  String title,  String summary,  String content,  List<String> tags,  int readTime,  int views,  DateTime publishedAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _HelpArticleModel():
return $default(_that.id,_that.category,_that.title,_that.summary,_that.content,_that.tags,_that.readTime,_that.views,_that.publishedAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String category,  String title,  String summary,  String content,  List<String> tags,  int readTime,  int views,  DateTime publishedAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _HelpArticleModel() when $default != null:
return $default(_that.id,_that.category,_that.title,_that.summary,_that.content,_that.tags,_that.readTime,_that.views,_that.publishedAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HelpArticleModel extends HelpArticleModel {
  const _HelpArticleModel({required this.id, required this.category, required this.title, required this.summary, required this.content, required final  List<String> tags, required this.readTime, required this.views, required this.publishedAt, required this.updatedAt}): _tags = tags,super._();
  factory _HelpArticleModel.fromJson(Map<String, dynamic> json) => _$HelpArticleModelFromJson(json);

@override final  String id;
@override final  String category;
@override final  String title;
@override final  String summary;
@override final  String content;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  int readTime;
@override final  int views;
@override final  DateTime publishedAt;
@override final  DateTime updatedAt;

/// Create a copy of HelpArticleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HelpArticleModelCopyWith<_HelpArticleModel> get copyWith => __$HelpArticleModelCopyWithImpl<_HelpArticleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HelpArticleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HelpArticleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.readTime, readTime) || other.readTime == readTime)&&(identical(other.views, views) || other.views == views)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,title,summary,content,const DeepCollectionEquality().hash(_tags),readTime,views,publishedAt,updatedAt);

@override
String toString() {
  return 'HelpArticleModel(id: $id, category: $category, title: $title, summary: $summary, content: $content, tags: $tags, readTime: $readTime, views: $views, publishedAt: $publishedAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$HelpArticleModelCopyWith<$Res> implements $HelpArticleModelCopyWith<$Res> {
  factory _$HelpArticleModelCopyWith(_HelpArticleModel value, $Res Function(_HelpArticleModel) _then) = __$HelpArticleModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String category, String title, String summary, String content, List<String> tags, int readTime, int views, DateTime publishedAt, DateTime updatedAt
});




}
/// @nodoc
class __$HelpArticleModelCopyWithImpl<$Res>
    implements _$HelpArticleModelCopyWith<$Res> {
  __$HelpArticleModelCopyWithImpl(this._self, this._then);

  final _HelpArticleModel _self;
  final $Res Function(_HelpArticleModel) _then;

/// Create a copy of HelpArticleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? title = null,Object? summary = null,Object? content = null,Object? tags = null,Object? readTime = null,Object? views = null,Object? publishedAt = null,Object? updatedAt = null,}) {
  return _then(_HelpArticleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,readTime: null == readTime ? _self.readTime : readTime // ignore: cast_nullable_to_non_nullable
as int,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
