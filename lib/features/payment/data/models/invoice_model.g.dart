// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoiceModel _$InvoiceModelFromJson(Map<String, dynamic> json) =>
    _InvoiceModel(
      id: json['id'] as String,
      invoiceNumber: json['invoiceNumber'] as String,
      paymentId: json['paymentId'] as String,
      invoiceDate: DateTime.parse(json['invoiceDate'] as String),
      dueDate: DateTime.parse(json['dueDate'] as String),
      billedTo: json['billedTo'] as String,
      billedToAddress: json['billedToAddress'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => InvoiceItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: (json['subtotal'] as num).toDouble(),
      taxAmount: (json['taxAmount'] as num).toDouble(),
      taxPercentage: (json['taxPercentage'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      isPaid: json['isPaid'] as bool,
      paidOn: json['paidOn'] == null
          ? null
          : DateTime.parse(json['paidOn'] as String),
    );

Map<String, dynamic> _$InvoiceModelToJson(_InvoiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiceNumber': instance.invoiceNumber,
      'paymentId': instance.paymentId,
      'invoiceDate': instance.invoiceDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'billedTo': instance.billedTo,
      'billedToAddress': instance.billedToAddress,
      'items': instance.items,
      'subtotal': instance.subtotal,
      'taxAmount': instance.taxAmount,
      'taxPercentage': instance.taxPercentage,
      'total': instance.total,
      'isPaid': instance.isPaid,
      'paidOn': instance.paidOn?.toIso8601String(),
    };

_InvoiceItemModel _$InvoiceItemModelFromJson(Map<String, dynamic> json) =>
    _InvoiceItemModel(
      description: json['description'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$InvoiceItemModelToJson(_InvoiceItemModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'amount': instance.amount,
    };
