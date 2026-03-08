import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/risk_factor_entity.dart';

part 'risk_factor_model.freezed.dart';
part 'risk_factor_model.g.dart';

@freezed
abstract class RiskFactorModel with _$RiskFactorModel {
  const RiskFactorModel._();

  const factory RiskFactorModel({
    required String id,
    required String name,
    required String category,
    required double impactScore,
    required String description,
    required bool isModifiable,
    String? currentValue,
    String? targetValue,
  }) = _RiskFactorModel;

  factory RiskFactorModel.fromJson(Map<String, dynamic> json) =>
      _$RiskFactorModelFromJson(json);

  RiskFactorEntity toEntity() {
    RiskFactorCategory categoryEnum;
    switch (category.toLowerCase()) {
      case 'clinical':
        categoryEnum = RiskFactorCategory.clinical;
        break;
      case 'lifestyle':
        categoryEnum = RiskFactorCategory.lifestyle;
        break;
      case 'demographic':
        categoryEnum = RiskFactorCategory.demographic;
        break;
      case 'environmental':
        categoryEnum = RiskFactorCategory.environmental;
        break;
      default:
        categoryEnum = RiskFactorCategory.clinical;
    }

    return RiskFactorEntity(
      id: id,
      name: name,
      category: categoryEnum,
      impactScore: impactScore,
      description: description,
      isModifiable: isModifiable,
      currentValue: currentValue,
      targetValue: targetValue,
    );
  }
}
