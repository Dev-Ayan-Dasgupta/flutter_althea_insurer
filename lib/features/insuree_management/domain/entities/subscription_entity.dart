import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_entity.freezed.dart';

enum SubscriptionStatus { active, expiring, expired, cancelled }

@freezed
abstract class SubscriptionEntity with _$SubscriptionEntity {
  const factory SubscriptionEntity({
    required String id,
    required String insureeId,
    required String insureeName,
    required SubscriptionStatus status,
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
  }) = _SubscriptionEntity;
}
