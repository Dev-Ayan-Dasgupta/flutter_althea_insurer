// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insuree_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InsureeModel {

 String get id; String get policyNumber; String get fullName; String get email; String? get phoneNumber; DateTime get dateOfBirth; int get age; String get gender; String get address; String get status; DateTime get addedOn; DateTime get subscriptionStartDate; DateTime get subscriptionEndDate; bool get isAutoRenew; double get monthlyFee; String? get medicalHistory; String? get notes; DateTime? get lastPaymentDate; DateTime? get nextPaymentDue; int? get daysUntilExpiry;
/// Create a copy of InsureeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsureeModelCopyWith<InsureeModel> get copyWith => _$InsureeModelCopyWithImpl<InsureeModel>(this as InsureeModel, _$identity);

  /// Serializes this InsureeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsureeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.policyNumber, policyNumber) || other.policyNumber == policyNumber)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.address, address) || other.address == address)&&(identical(other.status, status) || other.status == status)&&(identical(other.addedOn, addedOn) || other.addedOn == addedOn)&&(identical(other.subscriptionStartDate, subscriptionStartDate) || other.subscriptionStartDate == subscriptionStartDate)&&(identical(other.subscriptionEndDate, subscriptionEndDate) || other.subscriptionEndDate == subscriptionEndDate)&&(identical(other.isAutoRenew, isAutoRenew) || other.isAutoRenew == isAutoRenew)&&(identical(other.monthlyFee, monthlyFee) || other.monthlyFee == monthlyFee)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lastPaymentDate, lastPaymentDate) || other.lastPaymentDate == lastPaymentDate)&&(identical(other.nextPaymentDue, nextPaymentDue) || other.nextPaymentDue == nextPaymentDue)&&(identical(other.daysUntilExpiry, daysUntilExpiry) || other.daysUntilExpiry == daysUntilExpiry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,policyNumber,fullName,email,phoneNumber,dateOfBirth,age,gender,address,status,addedOn,subscriptionStartDate,subscriptionEndDate,isAutoRenew,monthlyFee,medicalHistory,notes,lastPaymentDate,nextPaymentDue,daysUntilExpiry]);

@override
String toString() {
  return 'InsureeModel(id: $id, policyNumber: $policyNumber, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, age: $age, gender: $gender, address: $address, status: $status, addedOn: $addedOn, subscriptionStartDate: $subscriptionStartDate, subscriptionEndDate: $subscriptionEndDate, isAutoRenew: $isAutoRenew, monthlyFee: $monthlyFee, medicalHistory: $medicalHistory, notes: $notes, lastPaymentDate: $lastPaymentDate, nextPaymentDue: $nextPaymentDue, daysUntilExpiry: $daysUntilExpiry)';
}


}

/// @nodoc
abstract mixin class $InsureeModelCopyWith<$Res>  {
  factory $InsureeModelCopyWith(InsureeModel value, $Res Function(InsureeModel) _then) = _$InsureeModelCopyWithImpl;
@useResult
$Res call({
 String id, String policyNumber, String fullName, String email, String? phoneNumber, DateTime dateOfBirth, int age, String gender, String address, String status, DateTime addedOn, DateTime subscriptionStartDate, DateTime subscriptionEndDate, bool isAutoRenew, double monthlyFee, String? medicalHistory, String? notes, DateTime? lastPaymentDate, DateTime? nextPaymentDue, int? daysUntilExpiry
});




}
/// @nodoc
class _$InsureeModelCopyWithImpl<$Res>
    implements $InsureeModelCopyWith<$Res> {
  _$InsureeModelCopyWithImpl(this._self, this._then);

  final InsureeModel _self;
  final $Res Function(InsureeModel) _then;

/// Create a copy of InsureeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? policyNumber = null,Object? fullName = null,Object? email = null,Object? phoneNumber = freezed,Object? dateOfBirth = null,Object? age = null,Object? gender = null,Object? address = null,Object? status = null,Object? addedOn = null,Object? subscriptionStartDate = null,Object? subscriptionEndDate = null,Object? isAutoRenew = null,Object? monthlyFee = null,Object? medicalHistory = freezed,Object? notes = freezed,Object? lastPaymentDate = freezed,Object? nextPaymentDue = freezed,Object? daysUntilExpiry = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,policyNumber: null == policyNumber ? _self.policyNumber : policyNumber // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,addedOn: null == addedOn ? _self.addedOn : addedOn // ignore: cast_nullable_to_non_nullable
as DateTime,subscriptionStartDate: null == subscriptionStartDate ? _self.subscriptionStartDate : subscriptionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime,subscriptionEndDate: null == subscriptionEndDate ? _self.subscriptionEndDate : subscriptionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime,isAutoRenew: null == isAutoRenew ? _self.isAutoRenew : isAutoRenew // ignore: cast_nullable_to_non_nullable
as bool,monthlyFee: null == monthlyFee ? _self.monthlyFee : monthlyFee // ignore: cast_nullable_to_non_nullable
as double,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lastPaymentDate: freezed == lastPaymentDate ? _self.lastPaymentDate : lastPaymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,nextPaymentDue: freezed == nextPaymentDue ? _self.nextPaymentDue : nextPaymentDue // ignore: cast_nullable_to_non_nullable
as DateTime?,daysUntilExpiry: freezed == daysUntilExpiry ? _self.daysUntilExpiry : daysUntilExpiry // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [InsureeModel].
extension InsureeModelPatterns on InsureeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InsureeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InsureeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InsureeModel value)  $default,){
final _that = this;
switch (_that) {
case _InsureeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InsureeModel value)?  $default,){
final _that = this;
switch (_that) {
case _InsureeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String policyNumber,  String fullName,  String email,  String? phoneNumber,  DateTime dateOfBirth,  int age,  String gender,  String address,  String status,  DateTime addedOn,  DateTime subscriptionStartDate,  DateTime subscriptionEndDate,  bool isAutoRenew,  double monthlyFee,  String? medicalHistory,  String? notes,  DateTime? lastPaymentDate,  DateTime? nextPaymentDue,  int? daysUntilExpiry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InsureeModel() when $default != null:
return $default(_that.id,_that.policyNumber,_that.fullName,_that.email,_that.phoneNumber,_that.dateOfBirth,_that.age,_that.gender,_that.address,_that.status,_that.addedOn,_that.subscriptionStartDate,_that.subscriptionEndDate,_that.isAutoRenew,_that.monthlyFee,_that.medicalHistory,_that.notes,_that.lastPaymentDate,_that.nextPaymentDue,_that.daysUntilExpiry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String policyNumber,  String fullName,  String email,  String? phoneNumber,  DateTime dateOfBirth,  int age,  String gender,  String address,  String status,  DateTime addedOn,  DateTime subscriptionStartDate,  DateTime subscriptionEndDate,  bool isAutoRenew,  double monthlyFee,  String? medicalHistory,  String? notes,  DateTime? lastPaymentDate,  DateTime? nextPaymentDue,  int? daysUntilExpiry)  $default,) {final _that = this;
switch (_that) {
case _InsureeModel():
return $default(_that.id,_that.policyNumber,_that.fullName,_that.email,_that.phoneNumber,_that.dateOfBirth,_that.age,_that.gender,_that.address,_that.status,_that.addedOn,_that.subscriptionStartDate,_that.subscriptionEndDate,_that.isAutoRenew,_that.monthlyFee,_that.medicalHistory,_that.notes,_that.lastPaymentDate,_that.nextPaymentDue,_that.daysUntilExpiry);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String policyNumber,  String fullName,  String email,  String? phoneNumber,  DateTime dateOfBirth,  int age,  String gender,  String address,  String status,  DateTime addedOn,  DateTime subscriptionStartDate,  DateTime subscriptionEndDate,  bool isAutoRenew,  double monthlyFee,  String? medicalHistory,  String? notes,  DateTime? lastPaymentDate,  DateTime? nextPaymentDue,  int? daysUntilExpiry)?  $default,) {final _that = this;
switch (_that) {
case _InsureeModel() when $default != null:
return $default(_that.id,_that.policyNumber,_that.fullName,_that.email,_that.phoneNumber,_that.dateOfBirth,_that.age,_that.gender,_that.address,_that.status,_that.addedOn,_that.subscriptionStartDate,_that.subscriptionEndDate,_that.isAutoRenew,_that.monthlyFee,_that.medicalHistory,_that.notes,_that.lastPaymentDate,_that.nextPaymentDue,_that.daysUntilExpiry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InsureeModel extends InsureeModel {
  const _InsureeModel({required this.id, required this.policyNumber, required this.fullName, required this.email, this.phoneNumber, required this.dateOfBirth, required this.age, required this.gender, required this.address, required this.status, required this.addedOn, required this.subscriptionStartDate, required this.subscriptionEndDate, required this.isAutoRenew, required this.monthlyFee, this.medicalHistory, this.notes, this.lastPaymentDate, this.nextPaymentDue, this.daysUntilExpiry}): super._();
  factory _InsureeModel.fromJson(Map<String, dynamic> json) => _$InsureeModelFromJson(json);

@override final  String id;
@override final  String policyNumber;
@override final  String fullName;
@override final  String email;
@override final  String? phoneNumber;
@override final  DateTime dateOfBirth;
@override final  int age;
@override final  String gender;
@override final  String address;
@override final  String status;
@override final  DateTime addedOn;
@override final  DateTime subscriptionStartDate;
@override final  DateTime subscriptionEndDate;
@override final  bool isAutoRenew;
@override final  double monthlyFee;
@override final  String? medicalHistory;
@override final  String? notes;
@override final  DateTime? lastPaymentDate;
@override final  DateTime? nextPaymentDue;
@override final  int? daysUntilExpiry;

/// Create a copy of InsureeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsureeModelCopyWith<_InsureeModel> get copyWith => __$InsureeModelCopyWithImpl<_InsureeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InsureeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InsureeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.policyNumber, policyNumber) || other.policyNumber == policyNumber)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.address, address) || other.address == address)&&(identical(other.status, status) || other.status == status)&&(identical(other.addedOn, addedOn) || other.addedOn == addedOn)&&(identical(other.subscriptionStartDate, subscriptionStartDate) || other.subscriptionStartDate == subscriptionStartDate)&&(identical(other.subscriptionEndDate, subscriptionEndDate) || other.subscriptionEndDate == subscriptionEndDate)&&(identical(other.isAutoRenew, isAutoRenew) || other.isAutoRenew == isAutoRenew)&&(identical(other.monthlyFee, monthlyFee) || other.monthlyFee == monthlyFee)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lastPaymentDate, lastPaymentDate) || other.lastPaymentDate == lastPaymentDate)&&(identical(other.nextPaymentDue, nextPaymentDue) || other.nextPaymentDue == nextPaymentDue)&&(identical(other.daysUntilExpiry, daysUntilExpiry) || other.daysUntilExpiry == daysUntilExpiry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,policyNumber,fullName,email,phoneNumber,dateOfBirth,age,gender,address,status,addedOn,subscriptionStartDate,subscriptionEndDate,isAutoRenew,monthlyFee,medicalHistory,notes,lastPaymentDate,nextPaymentDue,daysUntilExpiry]);

@override
String toString() {
  return 'InsureeModel(id: $id, policyNumber: $policyNumber, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, age: $age, gender: $gender, address: $address, status: $status, addedOn: $addedOn, subscriptionStartDate: $subscriptionStartDate, subscriptionEndDate: $subscriptionEndDate, isAutoRenew: $isAutoRenew, monthlyFee: $monthlyFee, medicalHistory: $medicalHistory, notes: $notes, lastPaymentDate: $lastPaymentDate, nextPaymentDue: $nextPaymentDue, daysUntilExpiry: $daysUntilExpiry)';
}


}

/// @nodoc
abstract mixin class _$InsureeModelCopyWith<$Res> implements $InsureeModelCopyWith<$Res> {
  factory _$InsureeModelCopyWith(_InsureeModel value, $Res Function(_InsureeModel) _then) = __$InsureeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String policyNumber, String fullName, String email, String? phoneNumber, DateTime dateOfBirth, int age, String gender, String address, String status, DateTime addedOn, DateTime subscriptionStartDate, DateTime subscriptionEndDate, bool isAutoRenew, double monthlyFee, String? medicalHistory, String? notes, DateTime? lastPaymentDate, DateTime? nextPaymentDue, int? daysUntilExpiry
});




}
/// @nodoc
class __$InsureeModelCopyWithImpl<$Res>
    implements _$InsureeModelCopyWith<$Res> {
  __$InsureeModelCopyWithImpl(this._self, this._then);

  final _InsureeModel _self;
  final $Res Function(_InsureeModel) _then;

/// Create a copy of InsureeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? policyNumber = null,Object? fullName = null,Object? email = null,Object? phoneNumber = freezed,Object? dateOfBirth = null,Object? age = null,Object? gender = null,Object? address = null,Object? status = null,Object? addedOn = null,Object? subscriptionStartDate = null,Object? subscriptionEndDate = null,Object? isAutoRenew = null,Object? monthlyFee = null,Object? medicalHistory = freezed,Object? notes = freezed,Object? lastPaymentDate = freezed,Object? nextPaymentDue = freezed,Object? daysUntilExpiry = freezed,}) {
  return _then(_InsureeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,policyNumber: null == policyNumber ? _self.policyNumber : policyNumber // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,addedOn: null == addedOn ? _self.addedOn : addedOn // ignore: cast_nullable_to_non_nullable
as DateTime,subscriptionStartDate: null == subscriptionStartDate ? _self.subscriptionStartDate : subscriptionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime,subscriptionEndDate: null == subscriptionEndDate ? _self.subscriptionEndDate : subscriptionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime,isAutoRenew: null == isAutoRenew ? _self.isAutoRenew : isAutoRenew // ignore: cast_nullable_to_non_nullable
as bool,monthlyFee: null == monthlyFee ? _self.monthlyFee : monthlyFee // ignore: cast_nullable_to_non_nullable
as double,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lastPaymentDate: freezed == lastPaymentDate ? _self.lastPaymentDate : lastPaymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,nextPaymentDue: freezed == nextPaymentDue ? _self.nextPaymentDue : nextPaymentDue // ignore: cast_nullable_to_non_nullable
as DateTime?,daysUntilExpiry: freezed == daysUntilExpiry ? _self.daysUntilExpiry : daysUntilExpiry // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
