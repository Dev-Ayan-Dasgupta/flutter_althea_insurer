// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      id: json['id'] as String,
      transactionId: json['transactionId'] as String,
      insureeIds: (json['insureeIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      numberOfInsurees: (json['numberOfInsurees'] as num).toInt(),
      amountPerInsuree: (json['amountPerInsuree'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      taxAmount: (json['taxAmount'] as num).toDouble(),
      grandTotal: (json['grandTotal'] as num).toDouble(),
      paymentMethod: json['paymentMethod'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      failureReason: json['failureReason'] as String?,
      receiptUrl: json['receiptUrl'] as String?,
      paymentDetails: json['paymentDetails'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionId': instance.transactionId,
      'insureeIds': instance.insureeIds,
      'numberOfInsurees': instance.numberOfInsurees,
      'amountPerInsuree': instance.amountPerInsuree,
      'totalAmount': instance.totalAmount,
      'taxAmount': instance.taxAmount,
      'grandTotal': instance.grandTotal,
      'paymentMethod': instance.paymentMethod,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'failureReason': instance.failureReason,
      'receiptUrl': instance.receiptUrl,
      'paymentDetails': instance.paymentDetails,
    };
