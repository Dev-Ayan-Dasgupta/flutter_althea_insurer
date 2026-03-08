import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/cluster_stats_entity.dart';

part 'cluster_stats_model.freezed.dart';
part 'cluster_stats_model.g.dart';

@freezed
abstract class ClusterStatsModel with _$ClusterStatsModel {
  const ClusterStatsModel._();

  const factory ClusterStatsModel({
    required int totalLives,
    required int activeLives,
    required int highRiskPatients,
    required int ambulancesAvailable,
    required int nursesOnDuty,
    required int pharmaciesActive,
    required double averageResponseTime,
  }) = _ClusterStatsModel;

  factory ClusterStatsModel.fromJson(Map<String, dynamic> json) =>
      _$ClusterStatsModelFromJson(json);

  ClusterStatsEntity toEntity() => ClusterStatsEntity(
    totalLives: totalLives,
    activeLives: activeLives,
    highRiskPatients: highRiskPatients,
    ambulancesAvailable: ambulancesAvailable,
    nursesOnDuty: nursesOnDuty,
    pharmaciesActive: pharmaciesActive,
    averageResponseTime: averageResponseTime,
  );
}
