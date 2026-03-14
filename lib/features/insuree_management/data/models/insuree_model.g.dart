// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insuree_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InsureeModel _$InsureeModelFromJson(Map<String, dynamic> json) =>
    _InsureeModel(
      id: json['id'] as String,
      policyNumber: json['policyNumber'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      address: json['address'] as String,
      status: json['status'] as String,
      addedOn: DateTime.parse(json['addedOn'] as String),
      subscriptionStartDate: DateTime.parse(
        json['subscriptionStartDate'] as String,
      ),
      subscriptionEndDate: DateTime.parse(
        json['subscriptionEndDate'] as String,
      ),
      isAutoRenew: json['isAutoRenew'] as bool,
      monthlyFee: (json['monthlyFee'] as num).toDouble(),
      medicalHistory: json['medicalHistory'] as String?,
      notes: json['notes'] as String?,
      lastPaymentDate: json['lastPaymentDate'] == null
          ? null
          : DateTime.parse(json['lastPaymentDate'] as String),
      nextPaymentDue: json['nextPaymentDue'] == null
          ? null
          : DateTime.parse(json['nextPaymentDue'] as String),
      daysUntilExpiry: (json['daysUntilExpiry'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InsureeModelToJson(_InsureeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'policyNumber': instance.policyNumber,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'age': instance.age,
      'gender': instance.gender,
      'address': instance.address,
      'status': instance.status,
      'addedOn': instance.addedOn.toIso8601String(),
      'subscriptionStartDate': instance.subscriptionStartDate.toIso8601String(),
      'subscriptionEndDate': instance.subscriptionEndDate.toIso8601String(),
      'isAutoRenew': instance.isAutoRenew,
      'monthlyFee': instance.monthlyFee,
      'medicalHistory': instance.medicalHistory,
      'notes': instance.notes,
      'lastPaymentDate': instance.lastPaymentDate?.toIso8601String(),
      'nextPaymentDue': instance.nextPaymentDue?.toIso8601String(),
      'daysUntilExpiry': instance.daysUntilExpiry,
    };
