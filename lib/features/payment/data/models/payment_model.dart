import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/payment_entity.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
abstract class PaymentModel with _$PaymentModel {
  const PaymentModel._();

  const factory PaymentModel({
    required String id,
    required String transactionId,
    required List<String> insureeIds,
    required int numberOfInsurees,
    required double amountPerInsuree,
    required double totalAmount,
    required double taxAmount,
    required double grandTotal,
    required String paymentMethod,
    required String status,
    required DateTime createdAt,
    DateTime? completedAt,
    String? failureReason,
    String? receiptUrl,
    Map<String, dynamic>? paymentDetails,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  PaymentEntity toEntity() {
    PaymentMethod methodEnum;
    switch (paymentMethod.toLowerCase()) {
      case 'credit_card':
        methodEnum = PaymentMethod.creditCard;
        break;
      case 'debit_card':
        methodEnum = PaymentMethod.debitCard;
        break;
      case 'upi':
        methodEnum = PaymentMethod.upi;
        break;
      case 'net_banking':
        methodEnum = PaymentMethod.netBanking;
        break;
      case 'wallet':
        methodEnum = PaymentMethod.wallet;
        break;
      default:
        methodEnum = PaymentMethod.upi;
    }

    PaymentStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'pending':
        statusEnum = PaymentStatus.pending;
        break;
      case 'processing':
        statusEnum = PaymentStatus.processing;
        break;
      case 'completed':
        statusEnum = PaymentStatus.completed;
        break;
      case 'failed':
        statusEnum = PaymentStatus.failed;
        break;
      case 'refunded':
        statusEnum = PaymentStatus.refunded;
        break;
      default:
        statusEnum = PaymentStatus.pending;
    }

    return PaymentEntity(
      id: id,
      transactionId: transactionId,
      insureeIds: insureeIds,
      numberOfInsurees: numberOfInsurees,
      amountPerInsuree: amountPerInsuree,
      totalAmount: totalAmount,
      taxAmount: taxAmount,
      grandTotal: grandTotal,
      paymentMethod: methodEnum,
      status: statusEnum,
      createdAt: createdAt,
      completedAt: completedAt,
      failureReason: failureReason,
      receiptUrl: receiptUrl,
      paymentDetails: paymentDetails,
    );
  }
}
