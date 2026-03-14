import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/subscription_entity.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

@freezed
abstract class SubscriptionModel with _$SubscriptionModel {
  const SubscriptionModel._();

  const factory SubscriptionModel({
    required String id,
    required String insureeId,
    required String insureeName,
    required String status,
    required DateTime startDate,
    required DateTime endDate,
    required double monthlyFee,
    required bool autoRenew,
    required int totalMonthsPaid,
    required double totalAmountPaid,
    DateTime? lastRenewalDate,
    DateTime? nextRenewalDate,
    String? cancellationReason,
    DateTime? cancelledOn,
  }) = _SubscriptionModel;

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);

  SubscriptionEntity toEntity() {
    SubscriptionStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'active':
        statusEnum = SubscriptionStatus.active;
        break;
      case 'expiring':
        statusEnum = SubscriptionStatus.expiring;
        break;
      case 'expired':
        statusEnum = SubscriptionStatus.expired;
        break;
      case 'cancelled':
        statusEnum = SubscriptionStatus.cancelled;
        break;
      default:
        statusEnum = SubscriptionStatus.active;
    }

    return SubscriptionEntity(
      id: id,
      insureeId: insureeId,
      insureeName: insureeName,
      status: statusEnum,
      startDate: startDate,
      endDate: endDate,
      monthlyFee: monthlyFee,
      autoRenew: autoRenew,
      totalMonthsPaid: totalMonthsPaid,
      totalAmountPaid: totalAmountPaid,
      lastRenewalDate: lastRenewalDate,
      nextRenewalDate: nextRenewalDate,
      cancellationReason: cancellationReason,
      cancelledOn: cancelledOn,
    );
  }
}
