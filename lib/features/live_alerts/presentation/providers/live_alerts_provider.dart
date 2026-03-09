import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/live_alerts_datasource.dart';
import '../../domain/entities/live_alert_entity.dart';
import '../../domain/entities/alert_action_entity.dart';
import '../../domain/entities/alert_filter_entity.dart';

part 'live_alerts_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
LiveAlertsDatasource liveAlertsDatasource(Ref ref) {
  return LiveAlertsDatasource();
}

// Live Alerts Provider
@riverpod
Future<List<LiveAlertEntity>> liveAlerts(Ref ref) async {
  final datasource = ref.watch(liveAlertsDatasourceProvider);
  final models = await datasource.fetchLiveAlerts();
  return models.map((model) => model.toEntity()).toList();
}

// Alert Actions Provider
@riverpod
Future<List<AlertActionEntity>> alertActions(Ref ref, String alertId) async {
  final datasource = ref.watch(liveAlertsDatasourceProvider);
  final models = await datasource.fetchAlertActions(alertId);
  return models.map((model) => model.toEntity()).toList();
}

// Filtered Alerts Provider
@riverpod
Future<List<LiveAlertEntity>> filteredAlerts(
  Ref ref,
  AlertFilterEntity filter,
) async {
  final allAlerts = await ref.watch(liveAlertsProvider.future);

  var filtered = allAlerts;

  // Filter by categories
  if (filter.categories != null && filter.categories!.isNotEmpty) {
    filtered = filtered
        .where((alert) => filter.categories!.contains(alert.category))
        .toList();
  }

  // Filter by priorities
  if (filter.priorities != null && filter.priorities!.isNotEmpty) {
    filtered = filtered
        .where((alert) => filter.priorities!.contains(alert.priority))
        .toList();
  }

  // Filter by statuses
  if (filter.statuses != null && filter.statuses!.isNotEmpty) {
    filtered = filtered
        .where((alert) => filter.statuses!.contains(alert.status))
        .toList();
  }

  // Filter by date range
  if (filter.startDate != null) {
    filtered = filtered
        .where((alert) => alert.triggeredAt.isAfter(filter.startDate!))
        .toList();
  }
  if (filter.endDate != null) {
    filtered = filtered
        .where((alert) => alert.triggeredAt.isBefore(filter.endDate!))
        .toList();
  }

  // Filter by search query
  if (filter.searchQuery != null && filter.searchQuery!.isNotEmpty) {
    final query = filter.searchQuery!.toLowerCase();
    filtered = filtered.where((alert) {
      return alert.title.toLowerCase().contains(query) ||
          alert.description.toLowerCase().contains(query) ||
          (alert.patientName?.toLowerCase().contains(query) ?? false) ||
          (alert.providerName?.toLowerCase().contains(query) ?? false);
    }).toList();
  }

  // Filter by immediate action
  if (filter.requiresImmediateAction != null) {
    filtered = filtered
        .where(
          (alert) =>
              alert.requiresImmediateAction == filter.requiresImmediateAction,
        )
        .toList();
  }

  return filtered;
}

// Alert Statistics Provider
@riverpod
Future<AlertStatistics> alertStatistics(Ref ref) async {
  final alerts = await ref.watch(liveAlertsProvider.future);

  final totalAlerts = alerts.length;
  final activeAlerts = alerts
      .where((a) => a.status == AlertStatus.active)
      .length;
  final criticalAlerts = alerts
      .where((a) => a.priority == AlertPriority.critical)
      .length;
  final emergencyAlerts = alerts
      .where((a) => a.priority == AlertPriority.emergency)
      .length;

  final categoryCounts = <AlertCategory, int>{};
  for (var alert in alerts) {
    categoryCounts[alert.category] = (categoryCounts[alert.category] ?? 0) + 1;
  }

  final requiresImmediateAction = alerts
      .where((a) => a.requiresImmediateAction == true)
      .length;

  final avgResponseTime = _calculateAvgResponseTime(alerts);

  return AlertStatistics(
    totalAlerts: totalAlerts,
    activeAlerts: activeAlerts,
    criticalAlerts: criticalAlerts,
    emergencyAlerts: emergencyAlerts,
    categoryCounts: categoryCounts,
    requiresImmediateAction: requiresImmediateAction,
    avgResponseTime: avgResponseTime,
  );
}

double _calculateAvgResponseTime(List<LiveAlertEntity> alerts) {
  final acknowledgedAlerts = alerts.where((a) => a.acknowledgedAt != null);
  if (acknowledgedAlerts.isEmpty) return 0.0;

  final totalMinutes = acknowledgedAlerts.fold<int>(0, (sum, alert) {
    final diff = alert.acknowledgedAt!.difference(alert.triggeredAt).inMinutes;
    return sum + diff;
  });

  return totalMinutes / acknowledgedAlerts.length;
}

class AlertStatistics {
  final int totalAlerts;
  final int activeAlerts;
  final int criticalAlerts;
  final int emergencyAlerts;
  final Map<AlertCategory, int> categoryCounts;
  final int requiresImmediateAction;
  final double avgResponseTime;

  AlertStatistics({
    required this.totalAlerts,
    required this.activeAlerts,
    required this.criticalAlerts,
    required this.emergencyAlerts,
    required this.categoryCounts,
    required this.requiresImmediateAction,
    required this.avgResponseTime,
  });
}
