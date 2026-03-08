// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigationItem {

 String get id; String get label; IconData get icon; IconData get selectedIcon; String get route; bool get isHeader; List<NavigationItem> get children;
/// Create a copy of NavigationItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationItemCopyWith<NavigationItem> get copyWith => _$NavigationItemCopyWithImpl<NavigationItem>(this as NavigationItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.selectedIcon, selectedIcon) || other.selectedIcon == selectedIcon)&&(identical(other.route, route) || other.route == route)&&(identical(other.isHeader, isHeader) || other.isHeader == isHeader)&&const DeepCollectionEquality().equals(other.children, children));
}


@override
int get hashCode => Object.hash(runtimeType,id,label,icon,selectedIcon,route,isHeader,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'NavigationItem(id: $id, label: $label, icon: $icon, selectedIcon: $selectedIcon, route: $route, isHeader: $isHeader, children: $children)';
}


}

/// @nodoc
abstract mixin class $NavigationItemCopyWith<$Res>  {
  factory $NavigationItemCopyWith(NavigationItem value, $Res Function(NavigationItem) _then) = _$NavigationItemCopyWithImpl;
@useResult
$Res call({
 String id, String label, IconData icon, IconData selectedIcon, String route, bool isHeader, List<NavigationItem> children
});




}
/// @nodoc
class _$NavigationItemCopyWithImpl<$Res>
    implements $NavigationItemCopyWith<$Res> {
  _$NavigationItemCopyWithImpl(this._self, this._then);

  final NavigationItem _self;
  final $Res Function(NavigationItem) _then;

/// Create a copy of NavigationItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? icon = null,Object? selectedIcon = null,Object? route = null,Object? isHeader = null,Object? children = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,selectedIcon: null == selectedIcon ? _self.selectedIcon : selectedIcon // ignore: cast_nullable_to_non_nullable
as IconData,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,isHeader: null == isHeader ? _self.isHeader : isHeader // ignore: cast_nullable_to_non_nullable
as bool,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<NavigationItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [NavigationItem].
extension NavigationItemPatterns on NavigationItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NavigationItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NavigationItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NavigationItem value)  $default,){
final _that = this;
switch (_that) {
case _NavigationItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NavigationItem value)?  $default,){
final _that = this;
switch (_that) {
case _NavigationItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  IconData icon,  IconData selectedIcon,  String route,  bool isHeader,  List<NavigationItem> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NavigationItem() when $default != null:
return $default(_that.id,_that.label,_that.icon,_that.selectedIcon,_that.route,_that.isHeader,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  IconData icon,  IconData selectedIcon,  String route,  bool isHeader,  List<NavigationItem> children)  $default,) {final _that = this;
switch (_that) {
case _NavigationItem():
return $default(_that.id,_that.label,_that.icon,_that.selectedIcon,_that.route,_that.isHeader,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  IconData icon,  IconData selectedIcon,  String route,  bool isHeader,  List<NavigationItem> children)?  $default,) {final _that = this;
switch (_that) {
case _NavigationItem() when $default != null:
return $default(_that.id,_that.label,_that.icon,_that.selectedIcon,_that.route,_that.isHeader,_that.children);case _:
  return null;

}
}

}

/// @nodoc


class _NavigationItem implements NavigationItem {
  const _NavigationItem({required this.id, required this.label, required this.icon, required this.selectedIcon, required this.route, this.isHeader = false, final  List<NavigationItem> children = const []}): _children = children;
  

@override final  String id;
@override final  String label;
@override final  IconData icon;
@override final  IconData selectedIcon;
@override final  String route;
@override@JsonKey() final  bool isHeader;
 final  List<NavigationItem> _children;
@override@JsonKey() List<NavigationItem> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of NavigationItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigationItemCopyWith<_NavigationItem> get copyWith => __$NavigationItemCopyWithImpl<_NavigationItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.selectedIcon, selectedIcon) || other.selectedIcon == selectedIcon)&&(identical(other.route, route) || other.route == route)&&(identical(other.isHeader, isHeader) || other.isHeader == isHeader)&&const DeepCollectionEquality().equals(other._children, _children));
}


@override
int get hashCode => Object.hash(runtimeType,id,label,icon,selectedIcon,route,isHeader,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'NavigationItem(id: $id, label: $label, icon: $icon, selectedIcon: $selectedIcon, route: $route, isHeader: $isHeader, children: $children)';
}


}

/// @nodoc
abstract mixin class _$NavigationItemCopyWith<$Res> implements $NavigationItemCopyWith<$Res> {
  factory _$NavigationItemCopyWith(_NavigationItem value, $Res Function(_NavigationItem) _then) = __$NavigationItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, IconData icon, IconData selectedIcon, String route, bool isHeader, List<NavigationItem> children
});




}
/// @nodoc
class __$NavigationItemCopyWithImpl<$Res>
    implements _$NavigationItemCopyWith<$Res> {
  __$NavigationItemCopyWithImpl(this._self, this._then);

  final _NavigationItem _self;
  final $Res Function(_NavigationItem) _then;

/// Create a copy of NavigationItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? icon = null,Object? selectedIcon = null,Object? route = null,Object? isHeader = null,Object? children = null,}) {
  return _then(_NavigationItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,selectedIcon: null == selectedIcon ? _self.selectedIcon : selectedIcon // ignore: cast_nullable_to_non_nullable
as IconData,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,isHeader: null == isHeader ? _self.isHeader : isHeader // ignore: cast_nullable_to_non_nullable
as bool,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<NavigationItem>,
  ));
}


}

// dart format on
