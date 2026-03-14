import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/insuree_entity.dart';

part 'insuree_model.freezed.dart';
part 'insuree_model.g.dart';

@freezed
abstract class InsureeModel with _$InsureeModel {
  const InsureeModel._();

  const factory InsureeModel({
    required String id,
    required String policyNumber,
    required String fullName,
    required String email,
    String? phoneNumber,
    required DateTime dateOfBirth,
    required int age,
    required String gender,
    required String address,
    required String status,
    required DateTime addedOn,
    required DateTime subscriptionStartDate,
    required DateTime subscriptionEndDate,
    required bool isAutoRenew,
    required double monthlyFee,
    String? medicalHistory,
    String? notes,
    DateTime? lastPaymentDate,
    DateTime? nextPaymentDue,
    int? daysUntilExpiry,
  }) = _InsureeModel;

  factory InsureeModel.fromJson(Map<String, dynamic> json) =>
      _$InsureeModelFromJson(json);

  InsureeEntity toEntity() {
    InsureeStatus statusEnum;
    switch (status.toLowerCase()) {
      case 'active':
        statusEnum = InsureeStatus.active;
        break;
      case 'expiring_soon':
        statusEnum = InsureeStatus.expiringSoon;
        break;
      case 'expired':
        statusEnum = InsureeStatus.expired;
        break;
      case 'pending_payment':
        statusEnum = InsureeStatus.pendingPayment;
        break;
      case 'removed':
        statusEnum = InsureeStatus.removed;
        break;
      case 'deceased':
        statusEnum = InsureeStatus.deceased;
        break;
      default:
        statusEnum = InsureeStatus.active;
    }

    return InsureeEntity(
      id: id,
      policyNumber: policyNumber,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      dateOfBirth: dateOfBirth,
      age: age,
      gender: gender,
      address: address,
      status: statusEnum,
      addedOn: addedOn,
      subscriptionStartDate: subscriptionStartDate,
      subscriptionEndDate: subscriptionEndDate,
      isAutoRenew: isAutoRenew,
      monthlyFee: monthlyFee,
      medicalHistory: medicalHistory,
      notes: notes,
      lastPaymentDate: lastPaymentDate,
      nextPaymentDue: nextPaymentDue,
      daysUntilExpiry: daysUntilExpiry,
    );
  }
}
