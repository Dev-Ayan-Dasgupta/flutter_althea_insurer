import 'package:freezed_annotation/freezed_annotation.dart';

part 'risk_distribution_entity.freezed.dart';

@freezed
abstract class RiskDistributionEntity with _$RiskDistributionEntity {
  const factory RiskDistributionEntity({
    required String riskLevel,
    required int count,
    required double percentage,
  }) = _RiskDistributionEntity;
}
