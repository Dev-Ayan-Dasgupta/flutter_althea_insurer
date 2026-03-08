import 'package:freezed_annotation/freezed_annotation.dart';

part 'risk_factor_entity.freezed.dart';

enum RiskFactorCategory { clinical, lifestyle, demographic, environmental }

@freezed
abstract class RiskFactorEntity with _$RiskFactorEntity {
  const factory RiskFactorEntity({
    required String id,
    required String name,
    required RiskFactorCategory category,
    required double impactScore,
    required String description,
    required bool isModifiable,
    String? currentValue,
    String? targetValue,
  }) = _RiskFactorEntity;
}
