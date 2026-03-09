import 'package:freezed_annotation/freezed_annotation.dart';

part 'fraud_pattern_entity.freezed.dart';

enum PatternType { billing, timing, geographic, provider, patient }

@freezed
abstract class FraudPatternEntity with _$FraudPatternEntity {
  const factory FraudPatternEntity({
    required String id,
    required PatternType patternType,
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
  }) = _FraudPatternEntity;
}
