// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentModel {

 String get id; String get transactionId; List<String> get insureeIds; int get numberOfInsurees; double get amountPerInsuree; double get totalAmount; double get taxAmount; double get grandTotal; String get paymentMethod; String get status; DateTime get createdAt; DateTime? get completedAt; String? get failureReason; String? get receiptUrl; Map<String, dynamic>? get paymentDetails;
/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentModelCopyWith<PaymentModel> get copyWith => _$PaymentModelCopyWithImpl<PaymentModel>(this as PaymentModel, _$identity);

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&const DeepCollectionEquality().equals(other.insureeIds, insureeIds)&&(identical(other.numberOfInsurees, numberOfInsurees) || other.numberOfInsurees == numberOfInsurees)&&(identical(other.amountPerInsuree, amountPerInsuree) || other.amountPerInsuree == amountPerInsuree)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.grandTotal, grandTotal) || other.grandTotal == grandTotal)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&const DeepCollectionEquality().equals(other.paymentDetails, paymentDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,const DeepCollectionEquality().hash(insureeIds),numberOfInsurees,amountPerInsuree,totalAmount,taxAmount,grandTotal,paymentMethod,status,createdAt,completedAt,failureReason,receiptUrl,const DeepCollectionEquality().hash(paymentDetails));

@override
String toString() {
  return 'PaymentModel(id: $id, transactionId: $transactionId, insureeIds: $insureeIds, numberOfInsurees: $numberOfInsurees, amountPerInsuree: $amountPerInsuree, totalAmount: $totalAmount, taxAmount: $taxAmount, grandTotal: $grandTotal, paymentMethod: $paymentMethod, status: $status, createdAt: $createdAt, completedAt: $completedAt, failureReason: $failureReason, receiptUrl: $receiptUrl, paymentDetails: $paymentDetails)';
}


}

/// @nodoc
abstract mixin class $PaymentModelCopyWith<$Res>  {
  factory $PaymentModelCopyWith(PaymentModel value, $Res Function(PaymentModel) _then) = _$PaymentModelCopyWithImpl;
@useResult
$Res call({
 String id, String transactionId, List<String> insureeIds, int numberOfInsurees, double amountPerInsuree, double totalAmount, double taxAmount, double grandTotal, String paymentMethod, String status, DateTime createdAt, DateTime? completedAt, String? failureReason, String? receiptUrl, Map<String, dynamic>? paymentDetails
});




}
/// @nodoc
class _$PaymentModelCopyWithImpl<$Res>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._self, this._then);

  final PaymentModel _self;
  final $Res Function(PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? insureeIds = null,Object? numberOfInsurees = null,Object? amountPerInsuree = null,Object? totalAmount = null,Object? taxAmount = null,Object? grandTotal = null,Object? paymentMethod = null,Object? status = null,Object? createdAt = null,Object? completedAt = freezed,Object? failureReason = freezed,Object? receiptUrl = freezed,Object? paymentDetails = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,insureeIds: null == insureeIds ? _self.insureeIds : insureeIds // ignore: cast_nullable_to_non_nullable
as List<String>,numberOfInsurees: null == numberOfInsurees ? _self.numberOfInsurees : numberOfInsurees // ignore: cast_nullable_to_non_nullable
as int,amountPerInsuree: null == amountPerInsuree ? _self.amountPerInsuree : amountPerInsuree // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,grandTotal: null == grandTotal ? _self.grandTotal : grandTotal // ignore: cast_nullable_to_non_nullable
as double,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,paymentDetails: freezed == paymentDetails ? _self.paymentDetails : paymentDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentModel].
extension PaymentModelPatterns on PaymentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String transactionId,  List<String> insureeIds,  int numberOfInsurees,  double amountPerInsuree,  double totalAmount,  double taxAmount,  double grandTotal,  String paymentMethod,  String status,  DateTime createdAt,  DateTime? completedAt,  String? failureReason,  String? receiptUrl,  Map<String, dynamic>? paymentDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.id,_that.transactionId,_that.insureeIds,_that.numberOfInsurees,_that.amountPerInsuree,_that.totalAmount,_that.taxAmount,_that.grandTotal,_that.paymentMethod,_that.status,_that.createdAt,_that.completedAt,_that.failureReason,_that.receiptUrl,_that.paymentDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String transactionId,  List<String> insureeIds,  int numberOfInsurees,  double amountPerInsuree,  double totalAmount,  double taxAmount,  double grandTotal,  String paymentMethod,  String status,  DateTime createdAt,  DateTime? completedAt,  String? failureReason,  String? receiptUrl,  Map<String, dynamic>? paymentDetails)  $default,) {final _that = this;
switch (_that) {
case _PaymentModel():
return $default(_that.id,_that.transactionId,_that.insureeIds,_that.numberOfInsurees,_that.amountPerInsuree,_that.totalAmount,_that.taxAmount,_that.grandTotal,_that.paymentMethod,_that.status,_that.createdAt,_that.completedAt,_that.failureReason,_that.receiptUrl,_that.paymentDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String transactionId,  List<String> insureeIds,  int numberOfInsurees,  double amountPerInsuree,  double totalAmount,  double taxAmount,  double grandTotal,  String paymentMethod,  String status,  DateTime createdAt,  DateTime? completedAt,  String? failureReason,  String? receiptUrl,  Map<String, dynamic>? paymentDetails)?  $default,) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.id,_that.transactionId,_that.insureeIds,_that.numberOfInsurees,_that.amountPerInsuree,_that.totalAmount,_that.taxAmount,_that.grandTotal,_that.paymentMethod,_that.status,_that.createdAt,_that.completedAt,_that.failureReason,_that.receiptUrl,_that.paymentDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentModel extends PaymentModel {
  const _PaymentModel({required this.id, required this.transactionId, required final  List<String> insureeIds, required this.numberOfInsurees, required this.amountPerInsuree, required this.totalAmount, required this.taxAmount, required this.grandTotal, required this.paymentMethod, required this.status, required this.createdAt, this.completedAt, this.failureReason, this.receiptUrl, final  Map<String, dynamic>? paymentDetails}): _insureeIds = insureeIds,_paymentDetails = paymentDetails,super._();
  factory _PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);

@override final  String id;
@override final  String transactionId;
 final  List<String> _insureeIds;
@override List<String> get insureeIds {
  if (_insureeIds is EqualUnmodifiableListView) return _insureeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_insureeIds);
}

@override final  int numberOfInsurees;
@override final  double amountPerInsuree;
@override final  double totalAmount;
@override final  double taxAmount;
@override final  double grandTotal;
@override final  String paymentMethod;
@override final  String status;
@override final  DateTime createdAt;
@override final  DateTime? completedAt;
@override final  String? failureReason;
@override final  String? receiptUrl;
 final  Map<String, dynamic>? _paymentDetails;
@override Map<String, dynamic>? get paymentDetails {
  final value = _paymentDetails;
  if (value == null) return null;
  if (_paymentDetails is EqualUnmodifiableMapView) return _paymentDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentModelCopyWith<_PaymentModel> get copyWith => __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&const DeepCollectionEquality().equals(other._insureeIds, _insureeIds)&&(identical(other.numberOfInsurees, numberOfInsurees) || other.numberOfInsurees == numberOfInsurees)&&(identical(other.amountPerInsuree, amountPerInsuree) || other.amountPerInsuree == amountPerInsuree)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.grandTotal, grandTotal) || other.grandTotal == grandTotal)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&const DeepCollectionEquality().equals(other._paymentDetails, _paymentDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,const DeepCollectionEquality().hash(_insureeIds),numberOfInsurees,amountPerInsuree,totalAmount,taxAmount,grandTotal,paymentMethod,status,createdAt,completedAt,failureReason,receiptUrl,const DeepCollectionEquality().hash(_paymentDetails));

@override
String toString() {
  return 'PaymentModel(id: $id, transactionId: $transactionId, insureeIds: $insureeIds, numberOfInsurees: $numberOfInsurees, amountPerInsuree: $amountPerInsuree, totalAmount: $totalAmount, taxAmount: $taxAmount, grandTotal: $grandTotal, paymentMethod: $paymentMethod, status: $status, createdAt: $createdAt, completedAt: $completedAt, failureReason: $failureReason, receiptUrl: $receiptUrl, paymentDetails: $paymentDetails)';
}


}

/// @nodoc
abstract mixin class _$PaymentModelCopyWith<$Res> implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(_PaymentModel value, $Res Function(_PaymentModel) _then) = __$PaymentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String transactionId, List<String> insureeIds, int numberOfInsurees, double amountPerInsuree, double totalAmount, double taxAmount, double grandTotal, String paymentMethod, String status, DateTime createdAt, DateTime? completedAt, String? failureReason, String? receiptUrl, Map<String, dynamic>? paymentDetails
});




}
/// @nodoc
class __$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(this._self, this._then);

  final _PaymentModel _self;
  final $Res Function(_PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? insureeIds = null,Object? numberOfInsurees = null,Object? amountPerInsuree = null,Object? totalAmount = null,Object? taxAmount = null,Object? grandTotal = null,Object? paymentMethod = null,Object? status = null,Object? createdAt = null,Object? completedAt = freezed,Object? failureReason = freezed,Object? receiptUrl = freezed,Object? paymentDetails = freezed,}) {
  return _then(_PaymentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,insureeIds: null == insureeIds ? _self._insureeIds : insureeIds // ignore: cast_nullable_to_non_nullable
as List<String>,numberOfInsurees: null == numberOfInsurees ? _self.numberOfInsurees : numberOfInsurees // ignore: cast_nullable_to_non_nullable
as int,amountPerInsuree: null == amountPerInsuree ? _self.amountPerInsuree : amountPerInsuree // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,grandTotal: null == grandTotal ? _self.grandTotal : grandTotal // ignore: cast_nullable_to_non_nullable
as double,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,paymentDetails: freezed == paymentDetails ? _self._paymentDetails : paymentDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
