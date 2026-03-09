import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/fraud_pattern_entity.dart';

part 'fraud_pattern_model.freezed.dart';
part 'fraud_pattern_model.g.dart';

@freezed
abstract class FraudPatternModel with _$FraudPatternModel {
  const FraudPatternModel._();

  const factory FraudPatternModel({
    required String id,
    required String patternType,
    required String patternName,
    required String description,
    required int occurrences,
    required double detectionRate,
    required double falsePositiveRate,
    required double estimatedLoss,
    required double preventedLoss,
    required List<String> affectedProviders,
    required List<String> commonIndicators,
    required DateTime firstDetected,
    required DateTime lastDetected,
    required bool isActive,
  }) = _FraudPatternModel;

  factory FraudPatternModel.fromJson(Map<String, dynamic> json) =>
      _$FraudPatternModelFromJson(json);

  FraudPatternEntity toEntity() {
    PatternType typeEnum;
    switch (patternType.toLowerCase()) {
      case 'billing':
        typeEnum = PatternType.billing;
        break;
      case 'timing':
        typeEnum = PatternType.timing;
        break;
      case 'geographic':
        typeEnum = PatternType.geographic;
        break;
      case 'provider':
        typeEnum = PatternType.provider;
        break;
      case 'patient':
        typeEnum = PatternType.patient;
        break;
      default:
        typeEnum = PatternType.billing;
    }

    return FraudPatternEntity(
      id: id,
      patternType: typeEnum,
      patternName: patternName,
      description: description,
      occurrences: occurrences,
      detectionRate: detectionRate,
      falsePositiveRate: falsePositiveRate,
      estimatedLoss: estimatedLoss,
      preventedLoss: preventedLoss,
      affectedProviders: affectedProviders,
      commonIndicators: commonIndicators,
      firstDetected: firstDetected,
      lastDetected: lastDetected,
      isActive: isActive,
    );
  }
}
