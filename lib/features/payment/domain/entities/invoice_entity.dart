import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_entity.freezed.dart';

@freezed
abstract class InvoiceEntity with _$InvoiceEntity {
  const factory InvoiceEntity({
    required String id,
    required String invoiceNumber,
    required String paymentId,
    required DateTime invoiceDate,
    required DateTime dueDate,
    required String billedTo,
    required String billedToAddress,
    required List<InvoiceItemEntity> items,
    required double subtotal,
    required double taxAmount,
    required double taxPercentage,
    required double total,
    required bool isPaid,
    DateTime? paidOn,
  }) = _InvoiceEntity;
}

@freezed
abstract class InvoiceItemEntity with _$InvoiceItemEntity {
  const factory InvoiceItemEntity({
    required String description,
    required int quantity,
    required double unitPrice,
    required double amount,
  }) = _InvoiceItemEntity;
}
