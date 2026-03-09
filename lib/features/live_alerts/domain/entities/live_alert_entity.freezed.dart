// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_alert_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LiveAlertEntity {

 String get id; AlertCategory get category; AlertPriority get priority; AlertStatus get status; String get title; String get description; String get source; DateTime get triggeredAt; DateTime? get acknowledgedAt; DateTime? get resolvedAt; String? get patientId; String? get patientName; String? get providerId; String? get providerName; String? get location; List<String> get tags; Map<String, dynamic> get metadata; String? get assignedTo; String? get actionTaken; int? get escalationLevel; bool? get requiresImmediateAction;
/// Create a copy of LiveAlertEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveAlertEntityCopyWith<LiveAlertEntity> get copyWith => _$LiveAlertEntityCopyWithImpl<LiveAlertEntity>(this as LiveAlertEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveAlertEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.source, source) || other.source == source)&&(identical(other.triggeredAt, triggeredAt) || other.triggeredAt == triggeredAt)&&(identical(other.acknowledgedAt, acknowledgedAt) || other.acknowledgedAt == acknowledgedAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken)&&(identical(other.escalationLevel, escalationLevel) || other.escalationLevel == escalationLevel)&&(identical(other.requiresImmediateAction, requiresImmediateAction) || other.requiresImmediateAction == requiresImmediateAction));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,category,priority,status,title,description,source,triggeredAt,acknowledgedAt,resolvedAt,patientId,patientName,providerId,providerName,location,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(metadata),assignedTo,actionTaken,escalationLevel,requiresImmediateAction]);

@override
String toString() {
  return 'LiveAlertEntity(id: $id, category: $category, priority: $priority, status: $status, title: $title, description: $description, source: $source, triggeredAt: $triggeredAt, acknowledgedAt: $acknowledgedAt, resolvedAt: $resolvedAt, patientId: $patientId, patientName: $patientName, providerId: $providerId, providerName: $providerName, location: $location, tags: $tags, metadata: $metadata, assignedTo: $assignedTo, actionTaken: $actionTaken, escalationLevel: $escalationLevel, requiresImmediateAction: $requiresImmediateAction)';
}


}

/// @nodoc
abstract mixin class $LiveAlertEntityCopyWith<$Res>  {
  factory $LiveAlertEntityCopyWith(LiveAlertEntity value, $Res Function(LiveAlertEntity) _then) = _$LiveAlertEntityCopyWithImpl;
@useResult
$Res call({
 String id, AlertCategory category, AlertPriority priority, AlertStatus status, String title, String description, String source, DateTime triggeredAt, DateTime? acknowledgedAt, DateTime? resolvedAt, String? patientId, String? patientName, String? providerId, String? providerName, String? location, List<String> tags, Map<String, dynamic> metadata, String? assignedTo, String? actionTaken, int? escalationLevel, bool? requiresImmediateAction
});




}
/// @nodoc
class _$LiveAlertEntityCopyWithImpl<$Res>
    implements $LiveAlertEntityCopyWith<$Res> {
  _$LiveAlertEntityCopyWithImpl(this._self, this._then);

  final LiveAlertEntity _self;
  final $Res Function(LiveAlertEntity) _then;

/// Create a copy of LiveAlertEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? priority = null,Object? status = null,Object? title = null,Object? description = null,Object? source = null,Object? triggeredAt = null,Object? acknowledgedAt = freezed,Object? resolvedAt = freezed,Object? patientId = freezed,Object? patientName = freezed,Object? providerId = freezed,Object? providerName = freezed,Object? location = freezed,Object? tags = null,Object? metadata = null,Object? assignedTo = freezed,Object? actionTaken = freezed,Object? escalationLevel = freezed,Object? requiresImmediateAction = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as AlertCategory,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as AlertPriority,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AlertStatus,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,triggeredAt: null == triggeredAt ? _self.triggeredAt : triggeredAt // ignore: cast_nullable_to_non_nullable
as DateTime,acknowledgedAt: freezed == acknowledgedAt ? _self.acknowledgedAt : acknowledgedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String?,providerName: freezed == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,escalationLevel: freezed == escalationLevel ? _self.escalationLevel : escalationLevel // ignore: cast_nullable_to_non_nullable
as int?,requiresImmediateAction: freezed == requiresImmediateAction ? _self.requiresImmediateAction : requiresImmediateAction // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveAlertEntity].
extension LiveAlertEntityPatterns on LiveAlertEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveAlertEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveAlertEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveAlertEntity value)  $default,){
final _that = this;
switch (_that) {
case _LiveAlertEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveAlertEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LiveAlertEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  AlertCategory category,  AlertPriority priority,  AlertStatus status,  String title,  String description,  String source,  DateTime triggeredAt,  DateTime? acknowledgedAt,  DateTime? resolvedAt,  String? patientId,  String? patientName,  String? providerId,  String? providerName,  String? location,  List<String> tags,  Map<String, dynamic> metadata,  String? assignedTo,  String? actionTaken,  int? escalationLevel,  bool? requiresImmediateAction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveAlertEntity() when $default != null:
return $default(_that.id,_that.category,_that.priority,_that.status,_that.title,_that.description,_that.source,_that.triggeredAt,_that.acknowledgedAt,_that.resolvedAt,_that.patientId,_that.patientName,_that.providerId,_that.providerName,_that.location,_that.tags,_that.metadata,_that.assignedTo,_that.actionTaken,_that.escalationLevel,_that.requiresImmediateAction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  AlertCategory category,  AlertPriority priority,  AlertStatus status,  String title,  String description,  String source,  DateTime triggeredAt,  DateTime? acknowledgedAt,  DateTime? resolvedAt,  String? patientId,  String? patientName,  String? providerId,  String? providerName,  String? location,  List<String> tags,  Map<String, dynamic> metadata,  String? assignedTo,  String? actionTaken,  int? escalationLevel,  bool? requiresImmediateAction)  $default,) {final _that = this;
switch (_that) {
case _LiveAlertEntity():
return $default(_that.id,_that.category,_that.priority,_that.status,_that.title,_that.description,_that.source,_that.triggeredAt,_that.acknowledgedAt,_that.resolvedAt,_that.patientId,_that.patientName,_that.providerId,_that.providerName,_that.location,_that.tags,_that.metadata,_that.assignedTo,_that.actionTaken,_that.escalationLevel,_that.requiresImmediateAction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  AlertCategory category,  AlertPriority priority,  AlertStatus status,  String title,  String description,  String source,  DateTime triggeredAt,  DateTime? acknowledgedAt,  DateTime? resolvedAt,  String? patientId,  String? patientName,  String? providerId,  String? providerName,  String? location,  List<String> tags,  Map<String, dynamic> metadata,  String? assignedTo,  String? actionTaken,  int? escalationLevel,  bool? requiresImmediateAction)?  $default,) {final _that = this;
switch (_that) {
case _LiveAlertEntity() when $default != null:
return $default(_that.id,_that.category,_that.priority,_that.status,_that.title,_that.description,_that.source,_that.triggeredAt,_that.acknowledgedAt,_that.resolvedAt,_that.patientId,_that.patientName,_that.providerId,_that.providerName,_that.location,_that.tags,_that.metadata,_that.assignedTo,_that.actionTaken,_that.escalationLevel,_that.requiresImmediateAction);case _:
  return null;

}
}

}

/// @nodoc


class _LiveAlertEntity implements LiveAlertEntity {
  const _LiveAlertEntity({required this.id, required this.category, required this.priority, required this.status, required this.title, required this.description, required this.source, required this.triggeredAt, this.acknowledgedAt, this.resolvedAt, this.patientId, this.patientName, this.providerId, this.providerName, this.location, required final  List<String> tags, required final  Map<String, dynamic> metadata, this.assignedTo, this.actionTaken, this.escalationLevel, this.requiresImmediateAction}): _tags = tags,_metadata = metadata;
  

@override final  String id;
@override final  AlertCategory category;
@override final  AlertPriority priority;
@override final  AlertStatus status;
@override final  String title;
@override final  String description;
@override final  String source;
@override final  DateTime triggeredAt;
@override final  DateTime? acknowledgedAt;
@override final  DateTime? resolvedAt;
@override final  String? patientId;
@override final  String? patientName;
@override final  String? providerId;
@override final  String? providerName;
@override final  String? location;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  Map<String, dynamic> _metadata;
@override Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  String? assignedTo;
@override final  String? actionTaken;
@override final  int? escalationLevel;
@override final  bool? requiresImmediateAction;

/// Create a copy of LiveAlertEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveAlertEntityCopyWith<_LiveAlertEntity> get copyWith => __$LiveAlertEntityCopyWithImpl<_LiveAlertEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveAlertEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.source, source) || other.source == source)&&(identical(other.triggeredAt, triggeredAt) || other.triggeredAt == triggeredAt)&&(identical(other.acknowledgedAt, acknowledgedAt) || other.acknowledgedAt == acknowledgedAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken)&&(identical(other.escalationLevel, escalationLevel) || other.escalationLevel == escalationLevel)&&(identical(other.requiresImmediateAction, requiresImmediateAction) || other.requiresImmediateAction == requiresImmediateAction));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,category,priority,status,title,description,source,triggeredAt,acknowledgedAt,resolvedAt,patientId,patientName,providerId,providerName,location,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_metadata),assignedTo,actionTaken,escalationLevel,requiresImmediateAction]);

@override
String toString() {
  return 'LiveAlertEntity(id: $id, category: $category, priority: $priority, status: $status, title: $title, description: $description, source: $source, triggeredAt: $triggeredAt, acknowledgedAt: $acknowledgedAt, resolvedAt: $resolvedAt, patientId: $patientId, patientName: $patientName, providerId: $providerId, providerName: $providerName, location: $location, tags: $tags, metadata: $metadata, assignedTo: $assignedTo, actionTaken: $actionTaken, escalationLevel: $escalationLevel, requiresImmediateAction: $requiresImmediateAction)';
}


}

/// @nodoc
abstract mixin class _$LiveAlertEntityCopyWith<$Res> implements $LiveAlertEntityCopyWith<$Res> {
  factory _$LiveAlertEntityCopyWith(_LiveAlertEntity value, $Res Function(_LiveAlertEntity) _then) = __$LiveAlertEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, AlertCategory category, AlertPriority priority, AlertStatus status, String title, String description, String source, DateTime triggeredAt, DateTime? acknowledgedAt, DateTime? resolvedAt, String? patientId, String? patientName, String? providerId, String? providerName, String? location, List<String> tags, Map<String, dynamic> metadata, String? assignedTo, String? actionTaken, int? escalationLevel, bool? requiresImmediateAction
});




}
/// @nodoc
class __$LiveAlertEntityCopyWithImpl<$Res>
    implements _$LiveAlertEntityCopyWith<$Res> {
  __$LiveAlertEntityCopyWithImpl(this._self, this._then);

  final _LiveAlertEntity _self;
  final $Res Function(_LiveAlertEntity) _then;

/// Create a copy of LiveAlertEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? priority = null,Object? status = null,Object? title = null,Object? description = null,Object? source = null,Object? triggeredAt = null,Object? acknowledgedAt = freezed,Object? resolvedAt = freezed,Object? patientId = freezed,Object? patientName = freezed,Object? providerId = freezed,Object? providerName = freezed,Object? location = freezed,Object? tags = null,Object? metadata = null,Object? assignedTo = freezed,Object? actionTaken = freezed,Object? escalationLevel = freezed,Object? requiresImmediateAction = freezed,}) {
  return _then(_LiveAlertEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as AlertCategory,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as AlertPriority,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AlertStatus,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,triggeredAt: null == triggeredAt ? _self.triggeredAt : triggeredAt // ignore: cast_nullable_to_non_nullable
as DateTime,acknowledgedAt: freezed == acknowledgedAt ? _self.acknowledgedAt : acknowledgedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String?,providerName: freezed == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,escalationLevel: freezed == escalationLevel ? _self.escalationLevel : escalationLevel // ignore: cast_nullable_to_non_nullable
as int?,requiresImmediateAction: freezed == requiresImmediateAction ? _self.requiresImmediateAction : requiresImmediateAction // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
