import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/analytics_datasource.dart';
import '../../domain/entities/user_activity_entity.dart';
import '../../domain/entities/analytics_stats_entity.dart';

part 'analytics_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
AnalyticsDatasource analyticsDatasource(Ref ref) {
  return AnalyticsDatasource();
}

// User Activities Provider
@riverpod
Future<List<UserActivityEntity>> userActivities(Ref ref) async {
  final datasource = ref.watch(analyticsDatasourceProvider);
  final models = await datasource.fetchUserActivities();
  return models.map((model) => model.toEntity()).toList();
}

// Analytics Stats Provider
@riverpod
Future<AnalyticsStatsEntity> analyticsStats(Ref ref) async {
  final datasource = ref.watch(analyticsDatasourceProvider);
  final model = await datasource.fetchAnalyticsStats();
  return model.toEntity();
}

// Recent Activities Provider (Last 10)
@riverpod
Future<List<UserActivityEntity>> recentActivities(Ref ref) async {
  final allActivities = await ref.watch(userActivitiesProvider.future);
  return allActivities.take(10).toList();
}

// Activities by Type Provider
@riverpod
Future<Map<ActivityType, int>> activitiesByType(Ref ref) async {
  final allActivities = await ref.watch(userActivitiesProvider.future);

  final Map<ActivityType, int> counts = {};
  for (var activity in allActivities) {
    counts[activity.activityType] = (counts[activity.activityType] ?? 0) + 1;
  }

  return counts;
}
