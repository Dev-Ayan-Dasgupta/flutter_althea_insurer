import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/invoice_entity.dart';

part 'invoice_model.freezed.dart';
part 'invoice_model.g.dart';

@freezed
abstract class InvoiceModel with _$InvoiceModel {
  const InvoiceModel._();

  const factory InvoiceModel({
    required String id,
    required String invoiceNumber,
    required String paymentId,
    required DateTime invoiceDate,
    required DateTime dueDate,
    required String billedTo,
    required String billedToAddress,
    required List<InvoiceItemModel> items,
    required double subtotal,
    required double taxAmount,
    required double taxPercentage,
    required double total,
    required bool isPaid,
    DateTime? paidOn,
  }) = _InvoiceModel;

  factory InvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceModelFromJson(json);

  InvoiceEntity toEntity() {
    return InvoiceEntity(
      id: id,
      invoiceNumber: invoiceNumber,
      paymentId: paymentId,
      invoiceDate: invoiceDate,
      dueDate: dueDate,
      billedTo: billedTo,
      billedToAddress: billedToAddress,
      items: items.map((item) => item.toEntity()).toList(),
      subtotal: subtotal,
      taxAmount: taxAmount,
      taxPercentage: taxPercentage,
      total: total,
      isPaid: isPaid,
      paidOn: paidOn,
    );
  }
}

@freezed
abstract class InvoiceItemModel with _$InvoiceItemModel {
  const InvoiceItemModel._();

  const factory InvoiceItemModel({
    required String description,
    required int quantity,
    required double unitPrice,
    required double amount,
  }) = _InvoiceItemModel;

  factory InvoiceItemModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemModelFromJson(json);

  InvoiceItemEntity toEntity() {
    return InvoiceItemEntity(
      description: description,
      quantity: quantity,
      unitPrice: unitPrice,
      amount: amount,
    );
  }
}
