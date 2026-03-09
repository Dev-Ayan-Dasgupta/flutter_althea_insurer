// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legal_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LegalDocumentModel {

 String get id; String get title; String get content; DateTime get lastUpdated; String get version; List<LegalSectionModel>? get sections;
/// Create a copy of LegalDocumentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegalDocumentModelCopyWith<LegalDocumentModel> get copyWith => _$LegalDocumentModelCopyWithImpl<LegalDocumentModel>(this as LegalDocumentModel, _$identity);

  /// Serializes this LegalDocumentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegalDocumentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,lastUpdated,version,const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'LegalDocumentModel(id: $id, title: $title, content: $content, lastUpdated: $lastUpdated, version: $version, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $LegalDocumentModelCopyWith<$Res>  {
  factory $LegalDocumentModelCopyWith(LegalDocumentModel value, $Res Function(LegalDocumentModel) _then) = _$LegalDocumentModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String content, DateTime lastUpdated, String version, List<LegalSectionModel>? sections
});




}
/// @nodoc
class _$LegalDocumentModelCopyWithImpl<$Res>
    implements $LegalDocumentModelCopyWith<$Res> {
  _$LegalDocumentModelCopyWithImpl(this._self, this._then);

  final LegalDocumentModel _self;
  final $Res Function(LegalDocumentModel) _then;

/// Create a copy of LegalDocumentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? lastUpdated = null,Object? version = null,Object? sections = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,sections: freezed == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<LegalSectionModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LegalDocumentModel].
extension LegalDocumentModelPatterns on LegalDocumentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegalDocumentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegalDocumentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegalDocumentModel value)  $default,){
final _that = this;
switch (_that) {
case _LegalDocumentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegalDocumentModel value)?  $default,){
final _that = this;
switch (_that) {
case _LegalDocumentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String content,  DateTime lastUpdated,  String version,  List<LegalSectionModel>? sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LegalDocumentModel() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.lastUpdated,_that.version,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String content,  DateTime lastUpdated,  String version,  List<LegalSectionModel>? sections)  $default,) {final _that = this;
switch (_that) {
case _LegalDocumentModel():
return $default(_that.id,_that.title,_that.content,_that.lastUpdated,_that.version,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String content,  DateTime lastUpdated,  String version,  List<LegalSectionModel>? sections)?  $default,) {final _that = this;
switch (_that) {
case _LegalDocumentModel() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.lastUpdated,_that.version,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LegalDocumentModel extends LegalDocumentModel {
  const _LegalDocumentModel({required this.id, required this.title, required this.content, required this.lastUpdated, required this.version, final  List<LegalSectionModel>? sections}): _sections = sections,super._();
  factory _LegalDocumentModel.fromJson(Map<String, dynamic> json) => _$LegalDocumentModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String content;
@override final  DateTime lastUpdated;
@override final  String version;
 final  List<LegalSectionModel>? _sections;
@override List<LegalSectionModel>? get sections {
  final value = _sections;
  if (value == null) return null;
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LegalDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegalDocumentModelCopyWith<_LegalDocumentModel> get copyWith => __$LegalDocumentModelCopyWithImpl<_LegalDocumentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegalDocumentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegalDocumentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,lastUpdated,version,const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'LegalDocumentModel(id: $id, title: $title, content: $content, lastUpdated: $lastUpdated, version: $version, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$LegalDocumentModelCopyWith<$Res> implements $LegalDocumentModelCopyWith<$Res> {
  factory _$LegalDocumentModelCopyWith(_LegalDocumentModel value, $Res Function(_LegalDocumentModel) _then) = __$LegalDocumentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String content, DateTime lastUpdated, String version, List<LegalSectionModel>? sections
});




}
/// @nodoc
class __$LegalDocumentModelCopyWithImpl<$Res>
    implements _$LegalDocumentModelCopyWith<$Res> {
  __$LegalDocumentModelCopyWithImpl(this._self, this._then);

  final _LegalDocumentModel _self;
  final $Res Function(_LegalDocumentModel) _then;

/// Create a copy of LegalDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? lastUpdated = null,Object? version = null,Object? sections = freezed,}) {
  return _then(_LegalDocumentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,sections: freezed == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<LegalSectionModel>?,
  ));
}


}


/// @nodoc
mixin _$LegalSectionModel {

 String get id; String get title; String get content; List<String>? get bulletPoints;
/// Create a copy of LegalSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegalSectionModelCopyWith<LegalSectionModel> get copyWith => _$LegalSectionModelCopyWithImpl<LegalSectionModel>(this as LegalSectionModel, _$identity);

  /// Serializes this LegalSectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegalSectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.bulletPoints, bulletPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,const DeepCollectionEquality().hash(bulletPoints));

@override
String toString() {
  return 'LegalSectionModel(id: $id, title: $title, content: $content, bulletPoints: $bulletPoints)';
}


}

/// @nodoc
abstract mixin class $LegalSectionModelCopyWith<$Res>  {
  factory $LegalSectionModelCopyWith(LegalSectionModel value, $Res Function(LegalSectionModel) _then) = _$LegalSectionModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String content, List<String>? bulletPoints
});




}
/// @nodoc
class _$LegalSectionModelCopyWithImpl<$Res>
    implements $LegalSectionModelCopyWith<$Res> {
  _$LegalSectionModelCopyWithImpl(this._self, this._then);

  final LegalSectionModel _self;
  final $Res Function(LegalSectionModel) _then;

/// Create a copy of LegalSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? bulletPoints = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,bulletPoints: freezed == bulletPoints ? _self.bulletPoints : bulletPoints // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LegalSectionModel].
extension LegalSectionModelPatterns on LegalSectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegalSectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegalSectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegalSectionModel value)  $default,){
final _that = this;
switch (_that) {
case _LegalSectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegalSectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _LegalSectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String content,  List<String>? bulletPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LegalSectionModel() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.bulletPoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String content,  List<String>? bulletPoints)  $default,) {final _that = this;
switch (_that) {
case _LegalSectionModel():
return $default(_that.id,_that.title,_that.content,_that.bulletPoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String content,  List<String>? bulletPoints)?  $default,) {final _that = this;
switch (_that) {
case _LegalSectionModel() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.bulletPoints);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LegalSectionModel extends LegalSectionModel {
  const _LegalSectionModel({required this.id, required this.title, required this.content, final  List<String>? bulletPoints}): _bulletPoints = bulletPoints,super._();
  factory _LegalSectionModel.fromJson(Map<String, dynamic> json) => _$LegalSectionModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String content;
 final  List<String>? _bulletPoints;
@override List<String>? get bulletPoints {
  final value = _bulletPoints;
  if (value == null) return null;
  if (_bulletPoints is EqualUnmodifiableListView) return _bulletPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LegalSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegalSectionModelCopyWith<_LegalSectionModel> get copyWith => __$LegalSectionModelCopyWithImpl<_LegalSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegalSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegalSectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._bulletPoints, _bulletPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,const DeepCollectionEquality().hash(_bulletPoints));

@override
String toString() {
  return 'LegalSectionModel(id: $id, title: $title, content: $content, bulletPoints: $bulletPoints)';
}


}

/// @nodoc
abstract mixin class _$LegalSectionModelCopyWith<$Res> implements $LegalSectionModelCopyWith<$Res> {
  factory _$LegalSectionModelCopyWith(_LegalSectionModel value, $Res Function(_LegalSectionModel) _then) = __$LegalSectionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String content, List<String>? bulletPoints
});




}
/// @nodoc
class __$LegalSectionModelCopyWithImpl<$Res>
    implements _$LegalSectionModelCopyWith<$Res> {
  __$LegalSectionModelCopyWithImpl(this._self, this._then);

  final _LegalSectionModel _self;
  final $Res Function(_LegalSectionModel) _then;

/// Create a copy of LegalSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? bulletPoints = freezed,}) {
  return _then(_LegalSectionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,bulletPoints: freezed == bulletPoints ? _self._bulletPoints : bulletPoints // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
