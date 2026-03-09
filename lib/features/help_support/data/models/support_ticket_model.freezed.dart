// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicketModel {

 String get id; String get ticketNumber; String get category; String get priority; String get status; String get subject; String get description; String get userEmail; DateTime get createdAt; DateTime? get resolvedAt; String? get assignedTo; List<String>? get attachments;
/// Create a copy of SupportTicketModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketModelCopyWith<SupportTicketModel> get copyWith => _$SupportTicketModelCopyWithImpl<SupportTicketModel>(this as SupportTicketModel, _$identity);

  /// Serializes this SupportTicketModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&const DeepCollectionEquality().equals(other.attachments, attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,category,priority,status,subject,description,userEmail,createdAt,resolvedAt,assignedTo,const DeepCollectionEquality().hash(attachments));

@override
String toString() {
  return 'SupportTicketModel(id: $id, ticketNumber: $ticketNumber, category: $category, priority: $priority, status: $status, subject: $subject, description: $description, userEmail: $userEmail, createdAt: $createdAt, resolvedAt: $resolvedAt, assignedTo: $assignedTo, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $SupportTicketModelCopyWith<$Res>  {
  factory $SupportTicketModelCopyWith(SupportTicketModel value, $Res Function(SupportTicketModel) _then) = _$SupportTicketModelCopyWithImpl;
@useResult
$Res call({
 String id, String ticketNumber, String category, String priority, String status, String subject, String description, String userEmail, DateTime createdAt, DateTime? resolvedAt, String? assignedTo, List<String>? attachments
});




}
/// @nodoc
class _$SupportTicketModelCopyWithImpl<$Res>
    implements $SupportTicketModelCopyWith<$Res> {
  _$SupportTicketModelCopyWithImpl(this._self, this._then);

  final SupportTicketModel _self;
  final $Res Function(SupportTicketModel) _then;

/// Create a copy of SupportTicketModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketNumber = null,Object? category = null,Object? priority = null,Object? status = null,Object? subject = null,Object? description = null,Object? userEmail = null,Object? createdAt = null,Object? resolvedAt = freezed,Object? assignedTo = freezed,Object? attachments = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,userEmail: null == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportTicketModel].
extension SupportTicketModelPatterns on SupportTicketModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketModel value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketModel value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ticketNumber,  String category,  String priority,  String status,  String subject,  String description,  String userEmail,  DateTime createdAt,  DateTime? resolvedAt,  String? assignedTo,  List<String>? attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketModel() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.category,_that.priority,_that.status,_that.subject,_that.description,_that.userEmail,_that.createdAt,_that.resolvedAt,_that.assignedTo,_that.attachments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ticketNumber,  String category,  String priority,  String status,  String subject,  String description,  String userEmail,  DateTime createdAt,  DateTime? resolvedAt,  String? assignedTo,  List<String>? attachments)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketModel():
return $default(_that.id,_that.ticketNumber,_that.category,_that.priority,_that.status,_that.subject,_that.description,_that.userEmail,_that.createdAt,_that.resolvedAt,_that.assignedTo,_that.attachments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ticketNumber,  String category,  String priority,  String status,  String subject,  String description,  String userEmail,  DateTime createdAt,  DateTime? resolvedAt,  String? assignedTo,  List<String>? attachments)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketModel() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.category,_that.priority,_that.status,_that.subject,_that.description,_that.userEmail,_that.createdAt,_that.resolvedAt,_that.assignedTo,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicketModel extends SupportTicketModel {
  const _SupportTicketModel({required this.id, required this.ticketNumber, required this.category, required this.priority, required this.status, required this.subject, required this.description, required this.userEmail, required this.createdAt, this.resolvedAt, this.assignedTo, final  List<String>? attachments}): _attachments = attachments,super._();
  factory _SupportTicketModel.fromJson(Map<String, dynamic> json) => _$SupportTicketModelFromJson(json);

@override final  String id;
@override final  String ticketNumber;
@override final  String category;
@override final  String priority;
@override final  String status;
@override final  String subject;
@override final  String description;
@override final  String userEmail;
@override final  DateTime createdAt;
@override final  DateTime? resolvedAt;
@override final  String? assignedTo;
 final  List<String>? _attachments;
@override List<String>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SupportTicketModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketModelCopyWith<_SupportTicketModel> get copyWith => __$SupportTicketModelCopyWithImpl<_SupportTicketModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&const DeepCollectionEquality().equals(other._attachments, _attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,category,priority,status,subject,description,userEmail,createdAt,resolvedAt,assignedTo,const DeepCollectionEquality().hash(_attachments));

@override
String toString() {
  return 'SupportTicketModel(id: $id, ticketNumber: $ticketNumber, category: $category, priority: $priority, status: $status, subject: $subject, description: $description, userEmail: $userEmail, createdAt: $createdAt, resolvedAt: $resolvedAt, assignedTo: $assignedTo, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketModelCopyWith<$Res> implements $SupportTicketModelCopyWith<$Res> {
  factory _$SupportTicketModelCopyWith(_SupportTicketModel value, $Res Function(_SupportTicketModel) _then) = __$SupportTicketModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String ticketNumber, String category, String priority, String status, String subject, String description, String userEmail, DateTime createdAt, DateTime? resolvedAt, String? assignedTo, List<String>? attachments
});




}
/// @nodoc
class __$SupportTicketModelCopyWithImpl<$Res>
    implements _$SupportTicketModelCopyWith<$Res> {
  __$SupportTicketModelCopyWithImpl(this._self, this._then);

  final _SupportTicketModel _self;
  final $Res Function(_SupportTicketModel) _then;

/// Create a copy of SupportTicketModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketNumber = null,Object? category = null,Object? priority = null,Object? status = null,Object? subject = null,Object? description = null,Object? userEmail = null,Object? createdAt = null,Object? resolvedAt = freezed,Object? assignedTo = freezed,Object? attachments = freezed,}) {
  return _then(_SupportTicketModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,userEmail: null == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
