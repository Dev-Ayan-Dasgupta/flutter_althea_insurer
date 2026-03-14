// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) =>
    _SubscriptionModel(
      id: json['id'] as String,
      insureeId: json['insureeId'] as String,
      insureeName: json['insureeName'] as String,
      status: json['status'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      monthlyFee: (json['monthlyFee'] as num).toDouble(),
      autoRenew: json['autoRenew'] as bool,
      totalMonthsPaid: (json['totalMonthsPaid'] as num).toInt(),
      totalAmountPaid: (json['totalAmountPaid'] as num).toDouble(),
      lastRenewalDate: json['lastRenewalDate'] == null
          ? null
          : DateTime.parse(json['lastRenewalDate'] as String),
      nextRenewalDate: json['nextRenewalDate'] == null
          ? null
          : DateTime.parse(json['nextRenewalDate'] as String),
      cancellationReason: json['cancellationReason'] as String?,
      cancelledOn: json['cancelledOn'] == null
          ? null
          : DateTime.parse(json['cancelledOn'] as String),
    );

Map<String, dynamic> _$SubscriptionModelToJson(_SubscriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'insureeId': instance.insureeId,
      'insureeName': instance.insureeName,
      'status': instance.status,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'monthlyFee': instance.monthlyFee,
      'autoRenew': instance.autoRenew,
      'totalMonthsPaid': instance.totalMonthsPaid,
      'totalAmountPaid': instance.totalAmountPaid,
      'lastRenewalDate': instance.lastRenewalDate?.toIso8601String(),
      'nextRenewalDate': instance.nextRenewalDate?.toIso8601String(),
      'cancellationReason': instance.cancellationReason,
      'cancelledOn': instance.cancelledOn?.toIso8601String(),
    };
