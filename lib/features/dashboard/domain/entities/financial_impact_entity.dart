import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_impact_entity.freezed.dart';

@freezed
abstract class FinancialImpactEntity with _$FinancialImpactEntity {
  const factory FinancialImpactEntity({
    required double hospitalizationsAvoided,
    required double averageClaimCost,
    required double totalSavings,
    required double platformRevenue,
    required double roi,
  }) = _FinancialImpactEntity;
}
