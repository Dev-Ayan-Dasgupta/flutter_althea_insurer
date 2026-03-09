import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/health_trend_entity.dart';

part 'health_trend_model.freezed.dart';
part 'health_trend_model.g.dart';

@freezed
abstract class HealthTrendModel with _$HealthTrendModel {
  const HealthTrendModel._();

  const factory HealthTrendModel({
    required String id,
    required String metricName,
    required String category,
    required String direction,
    required double currentValue,
    required double changePercentage,
    required List<TrendDataPointModel> quarterlyData,
    required String insight,
  }) = _HealthTrendModel;

  factory HealthTrendModel.fromJson(Map<String, dynamic> json) =>
      _$HealthTrendModelFromJson(json);

  HealthTrendEntity toEntity() {
    TrendDirection directionEnum;
    switch (direction.toLowerCase()) {
      case 'improving':
        directionEnum = TrendDirection.improving;
        break;
      case 'stable':
        directionEnum = TrendDirection.stable;
        break;
      case 'declining':
        directionEnum = TrendDirection.declining;
        break;
      default:
        directionEnum = TrendDirection.stable;
    }

    return HealthTrendEntity(
      id: id,
      metricName: metricName,
      category: category,
      direction: directionEnum,
      currentValue: currentValue,
      changePercentage: changePercentage,
      quarterlyData: quarterlyData.map((t) => t.toEntity()).toList(),
      insight: insight,
    );
  }
}

@freezed
abstract class TrendDataPointModel with _$TrendDataPointModel {
  const TrendDataPointModel._();

  const factory TrendDataPointModel({
    required String quarter,
    required double value,
    required DateTime date,
  }) = _TrendDataPointModel;

  factory TrendDataPointModel.fromJson(Map<String, dynamic> json) =>
      _$TrendDataPointModelFromJson(json);

  TrendDataPoint toEntity() =>
      TrendDataPoint(quarter: quarter, value: value, date: date);
}
