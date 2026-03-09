// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_filter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlertFilterEntity {

 List<AlertCategory>? get categories; List<AlertPriority>? get priorities; List<AlertStatus>? get statuses; DateTime? get startDate; DateTime? get endDate; String? get searchQuery; bool? get requiresImmediateAction;
/// Create a copy of AlertFilterEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertFilterEntityCopyWith<AlertFilterEntity> get copyWith => _$AlertFilterEntityCopyWithImpl<AlertFilterEntity>(this as AlertFilterEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlertFilterEntity&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.priorities, priorities)&&const DeepCollectionEquality().equals(other.statuses, statuses)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.requiresImmediateAction, requiresImmediateAction) || other.requiresImmediateAction == requiresImmediateAction));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(priorities),const DeepCollectionEquality().hash(statuses),startDate,endDate,searchQuery,requiresImmediateAction);

@override
String toString() {
  return 'AlertFilterEntity(categories: $categories, priorities: $priorities, statuses: $statuses, startDate: $startDate, endDate: $endDate, searchQuery: $searchQuery, requiresImmediateAction: $requiresImmediateAction)';
}


}

/// @nodoc
abstract mixin class $AlertFilterEntityCopyWith<$Res>  {
  factory $AlertFilterEntityCopyWith(AlertFilterEntity value, $Res Function(AlertFilterEntity) _then) = _$AlertFilterEntityCopyWithImpl;
@useResult
$Res call({
 List<AlertCategory>? categories, List<AlertPriority>? priorities, List<AlertStatus>? statuses, DateTime? startDate, DateTime? endDate, String? searchQuery, bool? requiresImmediateAction
});




}
/// @nodoc
class _$AlertFilterEntityCopyWithImpl<$Res>
    implements $AlertFilterEntityCopyWith<$Res> {
  _$AlertFilterEntityCopyWithImpl(this._self, this._then);

  final AlertFilterEntity _self;
  final $Res Function(AlertFilterEntity) _then;

/// Create a copy of AlertFilterEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,Object? priorities = freezed,Object? statuses = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? searchQuery = freezed,Object? requiresImmediateAction = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<AlertCategory>?,priorities: freezed == priorities ? _self.priorities : priorities // ignore: cast_nullable_to_non_nullable
as List<AlertPriority>?,statuses: freezed == statuses ? _self.statuses : statuses // ignore: cast_nullable_to_non_nullable
as List<AlertStatus>?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,requiresImmediateAction: freezed == requiresImmediateAction ? _self.requiresImmediateAction : requiresImmediateAction // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AlertFilterEntity].
extension AlertFilterEntityPatterns on AlertFilterEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlertFilterEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlertFilterEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlertFilterEntity value)  $default,){
final _that = this;
switch (_that) {
case _AlertFilterEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlertFilterEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AlertFilterEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AlertCategory>? categories,  List<AlertPriority>? priorities,  List<AlertStatus>? statuses,  DateTime? startDate,  DateTime? endDate,  String? searchQuery,  bool? requiresImmediateAction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlertFilterEntity() when $default != null:
return $default(_that.categories,_that.priorities,_that.statuses,_that.startDate,_that.endDate,_that.searchQuery,_that.requiresImmediateAction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AlertCategory>? categories,  List<AlertPriority>? priorities,  List<AlertStatus>? statuses,  DateTime? startDate,  DateTime? endDate,  String? searchQuery,  bool? requiresImmediateAction)  $default,) {final _that = this;
switch (_that) {
case _AlertFilterEntity():
return $default(_that.categories,_that.priorities,_that.statuses,_that.startDate,_that.endDate,_that.searchQuery,_that.requiresImmediateAction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AlertCategory>? categories,  List<AlertPriority>? priorities,  List<AlertStatus>? statuses,  DateTime? startDate,  DateTime? endDate,  String? searchQuery,  bool? requiresImmediateAction)?  $default,) {final _that = this;
switch (_that) {
case _AlertFilterEntity() when $default != null:
return $default(_that.categories,_that.priorities,_that.statuses,_that.startDate,_that.endDate,_that.searchQuery,_that.requiresImmediateAction);case _:
  return null;

}
}

}

/// @nodoc


class _AlertFilterEntity implements AlertFilterEntity {
  const _AlertFilterEntity({final  List<AlertCategory>? categories, final  List<AlertPriority>? priorities, final  List<AlertStatus>? statuses, this.startDate, this.endDate, this.searchQuery, this.requiresImmediateAction}): _categories = categories,_priorities = priorities,_statuses = statuses;
  

 final  List<AlertCategory>? _categories;
@override List<AlertCategory>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AlertPriority>? _priorities;
@override List<AlertPriority>? get priorities {
  final value = _priorities;
  if (value == null) return null;
  if (_priorities is EqualUnmodifiableListView) return _priorities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AlertStatus>? _statuses;
@override List<AlertStatus>? get statuses {
  final value = _statuses;
  if (value == null) return null;
  if (_statuses is EqualUnmodifiableListView) return _statuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override final  String? searchQuery;
@override final  bool? requiresImmediateAction;

/// Create a copy of AlertFilterEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertFilterEntityCopyWith<_AlertFilterEntity> get copyWith => __$AlertFilterEntityCopyWithImpl<_AlertFilterEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlertFilterEntity&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._priorities, _priorities)&&const DeepCollectionEquality().equals(other._statuses, _statuses)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.requiresImmediateAction, requiresImmediateAction) || other.requiresImmediateAction == requiresImmediateAction));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_priorities),const DeepCollectionEquality().hash(_statuses),startDate,endDate,searchQuery,requiresImmediateAction);

@override
String toString() {
  return 'AlertFilterEntity(categories: $categories, priorities: $priorities, statuses: $statuses, startDate: $startDate, endDate: $endDate, searchQuery: $searchQuery, requiresImmediateAction: $requiresImmediateAction)';
}


}

/// @nodoc
abstract mixin class _$AlertFilterEntityCopyWith<$Res> implements $AlertFilterEntityCopyWith<$Res> {
  factory _$AlertFilterEntityCopyWith(_AlertFilterEntity value, $Res Function(_AlertFilterEntity) _then) = __$AlertFilterEntityCopyWithImpl;
@override @useResult
$Res call({
 List<AlertCategory>? categories, List<AlertPriority>? priorities, List<AlertStatus>? statuses, DateTime? startDate, DateTime? endDate, String? searchQuery, bool? requiresImmediateAction
});




}
/// @nodoc
class __$AlertFilterEntityCopyWithImpl<$Res>
    implements _$AlertFilterEntityCopyWith<$Res> {
  __$AlertFilterEntityCopyWithImpl(this._self, this._then);

  final _AlertFilterEntity _self;
  final $Res Function(_AlertFilterEntity) _then;

/// Create a copy of AlertFilterEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,Object? priorities = freezed,Object? statuses = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? searchQuery = freezed,Object? requiresImmediateAction = freezed,}) {
  return _then(_AlertFilterEntity(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<AlertCategory>?,priorities: freezed == priorities ? _self._priorities : priorities // ignore: cast_nullable_to_non_nullable
as List<AlertPriority>?,statuses: freezed == statuses ? _self._statuses : statuses // ignore: cast_nullable_to_non_nullable
as List<AlertStatus>?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,requiresImmediateAction: freezed == requiresImmediateAction ? _self.requiresImmediateAction : requiresImmediateAction // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
