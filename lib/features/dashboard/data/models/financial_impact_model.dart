import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/financial_impact_entity.dart';

part 'financial_impact_model.freezed.dart';
part 'financial_impact_model.g.dart';

@freezed
abstract class FinancialImpactModel with _$FinancialImpactModel {
  const FinancialImpactModel._();

  const factory FinancialImpactModel({
    required double hospitalizationsAvoided,
    required double averageClaimCost,
    required double totalSavings,
    required double platformRevenue,
    required double roi,
  }) = _FinancialImpactModel;

  factory FinancialImpactModel.fromJson(Map<String, dynamic> json) =>
      _$FinancialImpactModelFromJson(json);

  FinancialImpactEntity toEntity() => FinancialImpactEntity(
    hospitalizationsAvoided: hospitalizationsAvoided,
    averageClaimCost: averageClaimCost,
    totalSavings: totalSavings,
    platformRevenue: platformRevenue,
    roi: roi,
  );
}
