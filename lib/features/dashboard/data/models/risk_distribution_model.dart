import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/risk_distribution_entity.dart';

part 'risk_distribution_model.freezed.dart';
part 'risk_distribution_model.g.dart';

@freezed
abstract class RiskDistributionModel with _$RiskDistributionModel {
  const RiskDistributionModel._();

  const factory RiskDistributionModel({
    required String riskLevel,
    required int count,
    required double percentage,
  }) = _RiskDistributionModel;

  factory RiskDistributionModel.fromJson(Map<String, dynamic> json) =>
      _$RiskDistributionModelFromJson(json);

  RiskDistributionEntity toEntity() => RiskDistributionEntity(
    riskLevel: riskLevel,
    count: count,
    percentage: percentage,
  );
}
