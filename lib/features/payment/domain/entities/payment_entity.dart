import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_entity.freezed.dart';

enum PaymentStatus { pending, processing, completed, failed, refunded }

enum PaymentMethod { creditCard, debitCard, upi, netBanking, wallet }

@freezed
abstract class PaymentEntity with _$PaymentEntity {
  const factory PaymentEntity({
    required String id,
    required String transactionId,
    required List<String> insureeIds,
    required int numberOfInsurees,
    required double amountPerInsuree,
    required double totalAmount,
    required double taxAmount,
    required double grandTotal,
    required PaymentMethod paymentMethod,
    required PaymentStatus status,
    required DateTime createdAt,
    DateTime? completedAt,
    String? failureReason,
    String? receiptUrl,
    Map<String, dynamic>? paymentDetails,
  }) = _PaymentEntity;
}
