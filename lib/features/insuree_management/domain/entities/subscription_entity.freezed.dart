// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscriptionEntity {

 String get id; String get insureeId; String get insureeName; SubscriptionStatus get status; DateTime get startDate; DateTime get endDate; double get monthlyFee; bool get autoRenew; int get totalMonthsPaid; double get totalAmountPaid; DateTime? get lastRenewalDate; DateTime? get nextRenewalDate; String? get cancellationReason; DateTime? get cancelledOn;
/// Create a copy of SubscriptionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionEntityCopyWith<SubscriptionEntity> get copyWith => _$SubscriptionEntityCopyWithImpl<SubscriptionEntity>(this as SubscriptionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.insureeId, insureeId) || other.insureeId == insureeId)&&(identical(other.insureeName, insureeName) || other.insureeName == insureeName)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.monthlyFee, monthlyFee) || other.monthlyFee == monthlyFee)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew)&&(identical(other.totalMonthsPaid, totalMonthsPaid) || other.totalMonthsPaid == totalMonthsPaid)&&(identical(other.totalAmountPaid, totalAmountPaid) || other.totalAmountPaid == totalAmountPaid)&&(identical(other.lastRenewalDate, lastRenewalDate) || other.lastRenewalDate == lastRenewalDate)&&(identical(other.nextRenewalDate, nextRenewalDate) || other.nextRenewalDate == nextRenewalDate)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason)&&(identical(other.cancelledOn, cancelledOn) || other.cancelledOn == cancelledOn));
}


@override
int get hashCode => Object.hash(runtimeType,id,insureeId,insureeName,status,startDate,endDate,monthlyFee,autoRenew,totalMonthsPaid,totalAmountPaid,lastRenewalDate,nextRenewalDate,cancellationReason,cancelledOn);

@override
String toString() {
  return 'SubscriptionEntity(id: $id, insureeId: $insureeId, insureeName: $insureeName, status: $status, startDate: $startDate, endDate: $endDate, monthlyFee: $monthlyFee, autoRenew: $autoRenew, totalMonthsPaid: $totalMonthsPaid, totalAmountPaid: $totalAmountPaid, lastRenewalDate: $lastRenewalDate, nextRenewalDate: $nextRenewalDate, cancellationReason: $cancellationReason, cancelledOn: $cancelledOn)';
}


}

/// @nodoc
abstract mixin class $SubscriptionEntityCopyWith<$Res>  {
  factory $SubscriptionEntityCopyWith(SubscriptionEntity value, $Res Function(SubscriptionEntity) _then) = _$SubscriptionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String insureeId, String insureeName, SubscriptionStatus status, DateTime startDate, DateTime endDate, double monthlyFee, bool autoRenew, int totalMonthsPaid, double totalAmountPaid, DateTime? lastRenewalDate, DateTime? nextRenewalDate, String? cancellationReason, DateTime? cancelledOn
});




}
/// @nodoc
class _$SubscriptionEntityCopyWithImpl<$Res>
    implements $SubscriptionEntityCopyWith<$Res> {
  _$SubscriptionEntityCopyWithImpl(this._self, this._then);

  final SubscriptionEntity _self;
  final $Res Function(SubscriptionEntity) _then;

/// Create a copy of SubscriptionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? insureeId = null,Object? insureeName = null,Object? status = null,Object? startDate = null,Object? endDate = null,Object? monthlyFee = null,Object? autoRenew = null,Object? totalMonthsPaid = null,Object? totalAmountPaid = null,Object? lastRenewalDate = freezed,Object? nextRenewalDate = freezed,Object? cancellationReason = freezed,Object? cancelledOn = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,insureeId: null == insureeId ? _self.insureeId : insureeId // ignore: cast_nullable_to_non_nullable
as String,insureeName: null == insureeName ? _self.insureeName : insureeName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubscriptionStatus,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,monthlyFee: null == monthlyFee ? _self.monthlyFee : monthlyFee // ignore: cast_nullable_to_non_nullable
as double,autoRenew: null == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool,totalMonthsPaid: null == totalMonthsPaid ? _self.totalMonthsPaid : totalMonthsPaid // ignore: cast_nullable_to_non_nullable
as int,totalAmountPaid: null == totalAmountPaid ? _self.totalAmountPaid : totalAmountPaid // ignore: cast_nullable_to_non_nullable
as double,lastRenewalDate: freezed == lastRenewalDate ? _self.lastRenewalDate : lastRenewalDate // ignore: cast_nullable_to_non_nullable
as DateTime?,nextRenewalDate: freezed == nextRenewalDate ? _self.nextRenewalDate : nextRenewalDate // ignore: cast_nullable_to_non_nullable
as DateTime?,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String?,cancelledOn: freezed == cancelledOn ? _self.cancelledOn : cancelledOn // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionEntity].
extension SubscriptionEntityPatterns on SubscriptionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionEntity value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String insureeId,  String insureeName,  SubscriptionStatus status,  DateTime startDate,  DateTime endDate,  double monthlyFee,  bool autoRenew,  int totalMonthsPaid,  double totalAmountPaid,  DateTime? lastRenewalDate,  DateTime? nextRenewalDate,  String? cancellationReason,  DateTime? cancelledOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionEntity() when $default != null:
return $default(_that.id,_that.insureeId,_that.insureeName,_that.status,_that.startDate,_that.endDate,_that.monthlyFee,_that.autoRenew,_that.totalMonthsPaid,_that.totalAmountPaid,_that.lastRenewalDate,_that.nextRenewalDate,_that.cancellationReason,_that.cancelledOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String insureeId,  String insureeName,  SubscriptionStatus status,  DateTime startDate,  DateTime endDate,  double monthlyFee,  bool autoRenew,  int totalMonthsPaid,  double totalAmountPaid,  DateTime? lastRenewalDate,  DateTime? nextRenewalDate,  String? cancellationReason,  DateTime? cancelledOn)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionEntity():
return $default(_that.id,_that.insureeId,_that.insureeName,_that.status,_that.startDate,_that.endDate,_that.monthlyFee,_that.autoRenew,_that.totalMonthsPaid,_that.totalAmountPaid,_that.lastRenewalDate,_that.nextRenewalDate,_that.cancellationReason,_that.cancelledOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String insureeId,  String insureeName,  SubscriptionStatus status,  DateTime startDate,  DateTime endDate,  double monthlyFee,  bool autoRenew,  int totalMonthsPaid,  double totalAmountPaid,  DateTime? lastRenewalDate,  DateTime? nextRenewalDate,  String? cancellationReason,  DateTime? cancelledOn)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionEntity() when $default != null:
return $default(_that.id,_that.insureeId,_that.insureeName,_that.status,_that.startDate,_that.endDate,_that.monthlyFee,_that.autoRenew,_that.totalMonthsPaid,_that.totalAmountPaid,_that.lastRenewalDate,_that.nextRenewalDate,_that.cancellationReason,_that.cancelledOn);case _:
  return null;

}
}

}

/// @nodoc


class _SubscriptionEntity implements SubscriptionEntity {
  const _SubscriptionEntity({required this.id, required this.insureeId, required this.insureeName, required this.status, required this.startDate, required this.endDate, required this.monthlyFee, required this.autoRenew, required this.totalMonthsPaid, required this.totalAmountPaid, this.lastRenewalDate, this.nextRenewalDate, this.cancellationReason, this.cancelledOn});
  

@override final  String id;
@override final  String insureeId;
@override final  String insureeName;
@override final  SubscriptionStatus status;
@override final  DateTime startDate;
@override final  DateTime endDate;
@override final  double monthlyFee;
@override final  bool autoRenew;
@override final  int totalMonthsPaid;
@override final  double totalAmountPaid;
@override final  DateTime? lastRenewalDate;
@override final  DateTime? nextRenewalDate;
@override final  String? cancellationReason;
@override final  DateTime? cancelledOn;

/// Create a copy of SubscriptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionEntityCopyWith<_SubscriptionEntity> get copyWith => __$SubscriptionEntityCopyWithImpl<_SubscriptionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.insureeId, insureeId) || other.insureeId == insureeId)&&(identical(other.insureeName, insureeName) || other.insureeName == insureeName)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.monthlyFee, monthlyFee) || other.monthlyFee == monthlyFee)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew)&&(identical(other.totalMonthsPaid, totalMonthsPaid) || other.totalMonthsPaid == totalMonthsPaid)&&(identical(other.totalAmountPaid, totalAmountPaid) || other.totalAmountPaid == totalAmountPaid)&&(identical(other.lastRenewalDate, lastRenewalDate) || other.lastRenewalDate == lastRenewalDate)&&(identical(other.nextRenewalDate, nextRenewalDate) || other.nextRenewalDate == nextRenewalDate)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason)&&(identical(other.cancelledOn, cancelledOn) || other.cancelledOn == cancelledOn));
}


@override
int get hashCode => Object.hash(runtimeType,id,insureeId,insureeName,status,startDate,endDate,monthlyFee,autoRenew,totalMonthsPaid,totalAmountPaid,lastRenewalDate,nextRenewalDate,cancellationReason,cancelledOn);

@override
String toString() {
  return 'SubscriptionEntity(id: $id, insureeId: $insureeId, insureeName: $insureeName, status: $status, startDate: $startDate, endDate: $endDate, monthlyFee: $monthlyFee, autoRenew: $autoRenew, totalMonthsPaid: $totalMonthsPaid, totalAmountPaid: $totalAmountPaid, lastRenewalDate: $lastRenewalDate, nextRenewalDate: $nextRenewalDate, cancellationReason: $cancellationReason, cancelledOn: $cancelledOn)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionEntityCopyWith<$Res> implements $SubscriptionEntityCopyWith<$Res> {
  factory _$SubscriptionEntityCopyWith(_SubscriptionEntity value, $Res Function(_SubscriptionEntity) _then) = __$SubscriptionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String insureeId, String insureeName, SubscriptionStatus status, DateTime startDate, DateTime endDate, double monthlyFee, bool autoRenew, int totalMonthsPaid, double totalAmountPaid, DateTime? lastRenewalDate, DateTime? nextRenewalDate, String? cancellationReason, DateTime? cancelledOn
});




}
/// @nodoc
class __$SubscriptionEntityCopyWithImpl<$Res>
    implements _$SubscriptionEntityCopyWith<$Res> {
  __$SubscriptionEntityCopyWithImpl(this._self, this._then);

  final _SubscriptionEntity _self;
  final $Res Function(_SubscriptionEntity) _then;

/// Create a copy of SubscriptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? insureeId = null,Object? insureeName = null,Object? status = null,Object? startDate = null,Object? endDate = null,Object? monthlyFee = null,Object? autoRenew = null,Object? totalMonthsPaid = null,Object? totalAmountPaid = null,Object? lastRenewalDate = freezed,Object? nextRenewalDate = freezed,Object? cancellationReason = freezed,Object? cancelledOn = freezed,}) {
  return _then(_SubscriptionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,insureeId: null == insureeId ? _self.insureeId : insureeId // ignore: cast_nullable_to_non_nullable
as String,insureeName: null == insureeName ? _self.insureeName : insureeName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubscriptionStatus,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,monthlyFee: null == monthlyFee ? _self.monthlyFee : monthlyFee // ignore: cast_nullable_to_non_nullable
as double,autoRenew: null == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool,totalMonthsPaid: null == totalMonthsPaid ? _self.totalMonthsPaid : totalMonthsPaid // ignore: cast_nullable_to_non_nullable
as int,totalAmountPaid: null == totalAmountPaid ? _self.totalAmountPaid : totalAmountPaid // ignore: cast_nullable_to_non_nullable
as double,lastRenewalDate: freezed == lastRenewalDate ? _self.lastRenewalDate : lastRenewalDate // ignore: cast_nullable_to_non_nullable
as DateTime?,nextRenewalDate: freezed == nextRenewalDate ? _self.nextRenewalDate : nextRenewalDate // ignore: cast_nullable_to_non_nullable
as DateTime?,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String?,cancelledOn: freezed == cancelledOn ? _self.cancelledOn : cancelledOn // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
