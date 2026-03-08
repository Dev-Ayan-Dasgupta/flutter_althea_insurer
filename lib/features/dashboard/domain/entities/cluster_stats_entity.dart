import 'package:freezed_annotation/freezed_annotation.dart';

part 'cluster_stats_entity.freezed.dart';

@freezed
abstract class ClusterStatsEntity with _$ClusterStatsEntity {
  const factory ClusterStatsEntity({
    required int totalLives,
    required int activeLives,
    required int highRiskPatients,
    required int ambulancesAvailable,
    required int nursesOnDuty,
    required int pharmaciesActive,
    required double averageResponseTime,
  }) = _ClusterStatsEntity;
}
