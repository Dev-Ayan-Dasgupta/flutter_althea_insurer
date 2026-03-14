// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvoiceEntity {

 String get id; String get invoiceNumber; String get paymentId; DateTime get invoiceDate; DateTime get dueDate; String get billedTo; String get billedToAddress; List<InvoiceItemEntity> get items; double get subtotal; double get taxAmount; double get taxPercentage; double get total; bool get isPaid; DateTime? get paidOn;
/// Create a copy of InvoiceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceEntityCopyWith<InvoiceEntity> get copyWith => _$InvoiceEntityCopyWithImpl<InvoiceEntity>(this as InvoiceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.invoiceDate, invoiceDate) || other.invoiceDate == invoiceDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.billedTo, billedTo) || other.billedTo == billedTo)&&(identical(other.billedToAddress, billedToAddress) || other.billedToAddress == billedToAddress)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.total, total) || other.total == total)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn));
}


@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,paymentId,invoiceDate,dueDate,billedTo,billedToAddress,const DeepCollectionEquality().hash(items),subtotal,taxAmount,taxPercentage,total,isPaid,paidOn);

@override
String toString() {
  return 'InvoiceEntity(id: $id, invoiceNumber: $invoiceNumber, paymentId: $paymentId, invoiceDate: $invoiceDate, dueDate: $dueDate, billedTo: $billedTo, billedToAddress: $billedToAddress, items: $items, subtotal: $subtotal, taxAmount: $taxAmount, taxPercentage: $taxPercentage, total: $total, isPaid: $isPaid, paidOn: $paidOn)';
}


}

/// @nodoc
abstract mixin class $InvoiceEntityCopyWith<$Res>  {
  factory $InvoiceEntityCopyWith(InvoiceEntity value, $Res Function(InvoiceEntity) _then) = _$InvoiceEntityCopyWithImpl;
@useResult
$Res call({
 String id, String invoiceNumber, String paymentId, DateTime invoiceDate, DateTime dueDate, String billedTo, String billedToAddress, List<InvoiceItemEntity> items, double subtotal, double taxAmount, double taxPercentage, double total, bool isPaid, DateTime? paidOn
});




}
/// @nodoc
class _$InvoiceEntityCopyWithImpl<$Res>
    implements $InvoiceEntityCopyWith<$Res> {
  _$InvoiceEntityCopyWithImpl(this._self, this._then);

  final InvoiceEntity _self;
  final $Res Function(InvoiceEntity) _then;

/// Create a copy of InvoiceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? invoiceNumber = null,Object? paymentId = null,Object? invoiceDate = null,Object? dueDate = null,Object? billedTo = null,Object? billedToAddress = null,Object? items = null,Object? subtotal = null,Object? taxAmount = null,Object? taxPercentage = null,Object? total = null,Object? isPaid = null,Object? paidOn = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,invoiceNumber: null == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,invoiceDate: null == invoiceDate ? _self.invoiceDate : invoiceDate // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,billedTo: null == billedTo ? _self.billedTo : billedTo // ignore: cast_nullable_to_non_nullable
as String,billedToAddress: null == billedToAddress ? _self.billedToAddress : billedToAddress // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<InvoiceItemEntity>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,taxPercentage: null == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceEntity].
extension InvoiceEntityPatterns on InvoiceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceEntity value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String invoiceNumber,  String paymentId,  DateTime invoiceDate,  DateTime dueDate,  String billedTo,  String billedToAddress,  List<InvoiceItemEntity> items,  double subtotal,  double taxAmount,  double taxPercentage,  double total,  bool isPaid,  DateTime? paidOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceEntity() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.paymentId,_that.invoiceDate,_that.dueDate,_that.billedTo,_that.billedToAddress,_that.items,_that.subtotal,_that.taxAmount,_that.taxPercentage,_that.total,_that.isPaid,_that.paidOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String invoiceNumber,  String paymentId,  DateTime invoiceDate,  DateTime dueDate,  String billedTo,  String billedToAddress,  List<InvoiceItemEntity> items,  double subtotal,  double taxAmount,  double taxPercentage,  double total,  bool isPaid,  DateTime? paidOn)  $default,) {final _that = this;
switch (_that) {
case _InvoiceEntity():
return $default(_that.id,_that.invoiceNumber,_that.paymentId,_that.invoiceDate,_that.dueDate,_that.billedTo,_that.billedToAddress,_that.items,_that.subtotal,_that.taxAmount,_that.taxPercentage,_that.total,_that.isPaid,_that.paidOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String invoiceNumber,  String paymentId,  DateTime invoiceDate,  DateTime dueDate,  String billedTo,  String billedToAddress,  List<InvoiceItemEntity> items,  double subtotal,  double taxAmount,  double taxPercentage,  double total,  bool isPaid,  DateTime? paidOn)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceEntity() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.paymentId,_that.invoiceDate,_that.dueDate,_that.billedTo,_that.billedToAddress,_that.items,_that.subtotal,_that.taxAmount,_that.taxPercentage,_that.total,_that.isPaid,_that.paidOn);case _:
  return null;

}
}

}

/// @nodoc


class _InvoiceEntity implements InvoiceEntity {
  const _InvoiceEntity({required this.id, required this.invoiceNumber, required this.paymentId, required this.invoiceDate, required this.dueDate, required this.billedTo, required this.billedToAddress, required final  List<InvoiceItemEntity> items, required this.subtotal, required this.taxAmount, required this.taxPercentage, required this.total, required this.isPaid, this.paidOn}): _items = items;
  

@override final  String id;
@override final  String invoiceNumber;
@override final  String paymentId;
@override final  DateTime invoiceDate;
@override final  DateTime dueDate;
@override final  String billedTo;
@override final  String billedToAddress;
 final  List<InvoiceItemEntity> _items;
@override List<InvoiceItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  double subtotal;
@override final  double taxAmount;
@override final  double taxPercentage;
@override final  double total;
@override final  bool isPaid;
@override final  DateTime? paidOn;

/// Create a copy of InvoiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceEntityCopyWith<_InvoiceEntity> get copyWith => __$InvoiceEntityCopyWithImpl<_InvoiceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.invoiceDate, invoiceDate) || other.invoiceDate == invoiceDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.billedTo, billedTo) || other.billedTo == billedTo)&&(identical(other.billedToAddress, billedToAddress) || other.billedToAddress == billedToAddress)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.total, total) || other.total == total)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn));
}


@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,paymentId,invoiceDate,dueDate,billedTo,billedToAddress,const DeepCollectionEquality().hash(_items),subtotal,taxAmount,taxPercentage,total,isPaid,paidOn);

@override
String toString() {
  return 'InvoiceEntity(id: $id, invoiceNumber: $invoiceNumber, paymentId: $paymentId, invoiceDate: $invoiceDate, dueDate: $dueDate, billedTo: $billedTo, billedToAddress: $billedToAddress, items: $items, subtotal: $subtotal, taxAmount: $taxAmount, taxPercentage: $taxPercentage, total: $total, isPaid: $isPaid, paidOn: $paidOn)';
}


}

/// @nodoc
abstract mixin class _$InvoiceEntityCopyWith<$Res> implements $InvoiceEntityCopyWith<$Res> {
  factory _$InvoiceEntityCopyWith(_InvoiceEntity value, $Res Function(_InvoiceEntity) _then) = __$InvoiceEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String invoiceNumber, String paymentId, DateTime invoiceDate, DateTime dueDate, String billedTo, String billedToAddress, List<InvoiceItemEntity> items, double subtotal, double taxAmount, double taxPercentage, double total, bool isPaid, DateTime? paidOn
});




}
/// @nodoc
class __$InvoiceEntityCopyWithImpl<$Res>
    implements _$InvoiceEntityCopyWith<$Res> {
  __$InvoiceEntityCopyWithImpl(this._self, this._then);

  final _InvoiceEntity _self;
  final $Res Function(_InvoiceEntity) _then;

/// Create a copy of InvoiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? invoiceNumber = null,Object? paymentId = null,Object? invoiceDate = null,Object? dueDate = null,Object? billedTo = null,Object? billedToAddress = null,Object? items = null,Object? subtotal = null,Object? taxAmount = null,Object? taxPercentage = null,Object? total = null,Object? isPaid = null,Object? paidOn = freezed,}) {
  return _then(_InvoiceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,invoiceNumber: null == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,invoiceDate: null == invoiceDate ? _self.invoiceDate : invoiceDate // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,billedTo: null == billedTo ? _self.billedTo : billedTo // ignore: cast_nullable_to_non_nullable
as String,billedToAddress: null == billedToAddress ? _self.billedToAddress : billedToAddress // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<InvoiceItemEntity>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,taxPercentage: null == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$InvoiceItemEntity {

 String get description; int get quantity; double get unitPrice; double get amount;
/// Create a copy of InvoiceItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceItemEntityCopyWith<InvoiceItemEntity> get copyWith => _$InvoiceItemEntityCopyWithImpl<InvoiceItemEntity>(this as InvoiceItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceItemEntity&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,description,quantity,unitPrice,amount);

@override
String toString() {
  return 'InvoiceItemEntity(description: $description, quantity: $quantity, unitPrice: $unitPrice, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $InvoiceItemEntityCopyWith<$Res>  {
  factory $InvoiceItemEntityCopyWith(InvoiceItemEntity value, $Res Function(InvoiceItemEntity) _then) = _$InvoiceItemEntityCopyWithImpl;
@useResult
$Res call({
 String description, int quantity, double unitPrice, double amount
});




}
/// @nodoc
class _$InvoiceItemEntityCopyWithImpl<$Res>
    implements $InvoiceItemEntityCopyWith<$Res> {
  _$InvoiceItemEntityCopyWithImpl(this._self, this._then);

  final InvoiceItemEntity _self;
  final $Res Function(InvoiceItemEntity) _then;

/// Create a copy of InvoiceItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? quantity = null,Object? unitPrice = null,Object? amount = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceItemEntity].
extension InvoiceItemEntityPatterns on InvoiceItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  int quantity,  double unitPrice,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceItemEntity() when $default != null:
return $default(_that.description,_that.quantity,_that.unitPrice,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  int quantity,  double unitPrice,  double amount)  $default,) {final _that = this;
switch (_that) {
case _InvoiceItemEntity():
return $default(_that.description,_that.quantity,_that.unitPrice,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  int quantity,  double unitPrice,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceItemEntity() when $default != null:
return $default(_that.description,_that.quantity,_that.unitPrice,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _InvoiceItemEntity implements InvoiceItemEntity {
  const _InvoiceItemEntity({required this.description, required this.quantity, required this.unitPrice, required this.amount});
  

@override final  String description;
@override final  int quantity;
@override final  double unitPrice;
@override final  double amount;

/// Create a copy of InvoiceItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceItemEntityCopyWith<_InvoiceItemEntity> get copyWith => __$InvoiceItemEntityCopyWithImpl<_InvoiceItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceItemEntity&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,description,quantity,unitPrice,amount);

@override
String toString() {
  return 'InvoiceItemEntity(description: $description, quantity: $quantity, unitPrice: $unitPrice, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$InvoiceItemEntityCopyWith<$Res> implements $InvoiceItemEntityCopyWith<$Res> {
  factory _$InvoiceItemEntityCopyWith(_InvoiceItemEntity value, $Res Function(_InvoiceItemEntity) _then) = __$InvoiceItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String description, int quantity, double unitPrice, double amount
});




}
/// @nodoc
class __$InvoiceItemEntityCopyWithImpl<$Res>
    implements _$InvoiceItemEntityCopyWith<$Res> {
  __$InvoiceItemEntityCopyWithImpl(this._self, this._then);

  final _InvoiceItemEntity _self;
  final $Res Function(_InvoiceItemEntity) _then;

/// Create a copy of InvoiceItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? quantity = null,Object? unitPrice = null,Object? amount = null,}) {
  return _then(_InvoiceItemEntity(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
