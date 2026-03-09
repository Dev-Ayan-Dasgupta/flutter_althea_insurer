// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legal_document_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LegalDocumentEntity {

 String get id; String get title; String get content; DateTime get lastUpdated; String get version; List<LegalSectionEntity>? get sections;
/// Create a copy of LegalDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegalDocumentEntityCopyWith<LegalDocumentEntity> get copyWith => _$LegalDocumentEntityCopyWithImpl<LegalDocumentEntity>(this as LegalDocumentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegalDocumentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.sections, sections));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,content,lastUpdated,version,const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'LegalDocumentEntity(id: $id, title: $title, content: $content, lastUpdated: $lastUpdated, version: $version, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $LegalDocumentEntityCopyWith<$Res>  {
  factory $LegalDocumentEntityCopyWith(LegalDocumentEntity value, $Res Function(LegalDocumentEntity) _then) = _$LegalDocumentEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String content, DateTime lastUpdated, String version, List<LegalSectionEntity>? sections
});




}
/// @nodoc
class _$LegalDocumentEntityCopyWithImpl<$Res>
    implements $LegalDocumentEntityCopyWith<$Res> {
  _$LegalDocumentEntityCopyWithImpl(this._self, this._then);

  final LegalDocumentEntity _self;
  final $Res Function(LegalDocumentEntity) _then;

/// Create a copy of LegalDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? lastUpdated = null,Object? version = null,Object? sections = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,sections: freezed == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<LegalSectionEntity>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LegalDocumentEntity].
extension LegalDocumentEntityPatterns on LegalDocumentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegalDocumentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegalDocumentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegalDocumentEntity value)  $default,){
final _that = this;
switch (_that) {
case _LegalDocumentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegalDocumentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LegalDocumentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String content,  DateTime lastUpdated,  String version,  List<LegalSectionEntity>? sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LegalDocumentEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String content,  DateTime lastUpdated,  String version,  List<LegalSectionEntity>? sections)  $default,) {final _that = this;
switch (_that) {
case _LegalDocumentEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String content,  DateTime lastUpdated,  String version,  List<LegalSectionEntity>? sections)?  $default,) {final _that = this;
switch (_that) {
case _LegalDocumentEntity() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.lastUpdated,_that.version,_that.sections);case _:
  return null;

}
}

}

/// @nodoc


class _LegalDocumentEntity implements LegalDocumentEntity {
  const _LegalDocumentEntity({required this.id, required this.title, required this.content, required this.lastUpdated, required this.version, final  List<LegalSectionEntity>? sections}): _sections = sections;
  

@override final  String id;
@override final  String title;
@override final  String content;
@override final  DateTime lastUpdated;
@override final  String version;
 final  List<LegalSectionEntity>? _sections;
@override List<LegalSectionEntity>? get sections {
  final value = _sections;
  if (value == null) return null;
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LegalDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegalDocumentEntityCopyWith<_LegalDocumentEntity> get copyWith => __$LegalDocumentEntityCopyWithImpl<_LegalDocumentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegalDocumentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._sections, _sections));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,content,lastUpdated,version,const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'LegalDocumentEntity(id: $id, title: $title, content: $content, lastUpdated: $lastUpdated, version: $version, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$LegalDocumentEntityCopyWith<$Res> implements $LegalDocumentEntityCopyWith<$Res> {
  factory _$LegalDocumentEntityCopyWith(_LegalDocumentEntity value, $Res Function(_LegalDocumentEntity) _then) = __$LegalDocumentEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String content, DateTime lastUpdated, String version, List<LegalSectionEntity>? sections
});




}
/// @nodoc
class __$LegalDocumentEntityCopyWithImpl<$Res>
    implements _$LegalDocumentEntityCopyWith<$Res> {
  __$LegalDocumentEntityCopyWithImpl(this._self, this._then);

  final _LegalDocumentEntity _self;
  final $Res Function(_LegalDocumentEntity) _then;

/// Create a copy of LegalDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? lastUpdated = null,Object? version = null,Object? sections = freezed,}) {
  return _then(_LegalDocumentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,sections: freezed == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<LegalSectionEntity>?,
  ));
}


}

/// @nodoc
mixin _$LegalSectionEntity {

 String get id; String get title; String get content; List<String>? get bulletPoints;
/// Create a copy of LegalSectionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegalSectionEntityCopyWith<LegalSectionEntity> get copyWith => _$LegalSectionEntityCopyWithImpl<LegalSectionEntity>(this as LegalSectionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegalSectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.bulletPoints, bulletPoints));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,content,const DeepCollectionEquality().hash(bulletPoints));

@override
String toString() {
  return 'LegalSectionEntity(id: $id, title: $title, content: $content, bulletPoints: $bulletPoints)';
}


}

/// @nodoc
abstract mixin class $LegalSectionEntityCopyWith<$Res>  {
  factory $LegalSectionEntityCopyWith(LegalSectionEntity value, $Res Function(LegalSectionEntity) _then) = _$LegalSectionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String content, List<String>? bulletPoints
});




}
/// @nodoc
class _$LegalSectionEntityCopyWithImpl<$Res>
    implements $LegalSectionEntityCopyWith<$Res> {
  _$LegalSectionEntityCopyWithImpl(this._self, this._then);

  final LegalSectionEntity _self;
  final $Res Function(LegalSectionEntity) _then;

/// Create a copy of LegalSectionEntity
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


/// Adds pattern-matching-related methods to [LegalSectionEntity].
extension LegalSectionEntityPatterns on LegalSectionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegalSectionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegalSectionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegalSectionEntity value)  $default,){
final _that = this;
switch (_that) {
case _LegalSectionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegalSectionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LegalSectionEntity() when $default != null:
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
case _LegalSectionEntity() when $default != null:
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
case _LegalSectionEntity():
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
case _LegalSectionEntity() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.bulletPoints);case _:
  return null;

}
}

}

/// @nodoc


class _LegalSectionEntity implements LegalSectionEntity {
  const _LegalSectionEntity({required this.id, required this.title, required this.content, final  List<String>? bulletPoints}): _bulletPoints = bulletPoints;
  

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


/// Create a copy of LegalSectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegalSectionEntityCopyWith<_LegalSectionEntity> get copyWith => __$LegalSectionEntityCopyWithImpl<_LegalSectionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegalSectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._bulletPoints, _bulletPoints));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,content,const DeepCollectionEquality().hash(_bulletPoints));

@override
String toString() {
  return 'LegalSectionEntity(id: $id, title: $title, content: $content, bulletPoints: $bulletPoints)';
}


}

/// @nodoc
abstract mixin class _$LegalSectionEntityCopyWith<$Res> implements $LegalSectionEntityCopyWith<$Res> {
  factory _$LegalSectionEntityCopyWith(_LegalSectionEntity value, $Res Function(_LegalSectionEntity) _then) = __$LegalSectionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String content, List<String>? bulletPoints
});




}
/// @nodoc
class __$LegalSectionEntityCopyWithImpl<$Res>
    implements _$LegalSectionEntityCopyWith<$Res> {
  __$LegalSectionEntityCopyWithImpl(this._self, this._then);

  final _LegalSectionEntity _self;
  final $Res Function(_LegalSectionEntity) _then;

/// Create a copy of LegalSectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? bulletPoints = freezed,}) {
  return _then(_LegalSectionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,bulletPoints: freezed == bulletPoints ? _self._bulletPoints : bulletPoints // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
