import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_trend_entity.freezed.dart';

enum TrendDirection { improving, stable, declining }

@freezed
abstract class HealthTrendEntity with _$HealthTrendEntity {
  const factory HealthTrendEntity({
    required String id,
    required String metricName,
    required String category,
    required TrendDirection direction,
    required double currentValue,
    required double changePercentage,
    required List<TrendDataPoint> quarterlyData,
    required String insight,
  }) = _HealthTrendEntity;
}

@freezed
abstract class TrendDataPoint with _$TrendDataPoint {
  const factory TrendDataPoint({
    required String quarter,
    required double value,
    required DateTime date,
  }) = _TrendDataPoint;
}
