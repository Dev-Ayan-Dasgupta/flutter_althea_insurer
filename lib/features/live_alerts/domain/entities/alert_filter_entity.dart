import 'package:freezed_annotation/freezed_annotation.dart';

import 'live_alert_entity.dart';

part 'alert_filter_entity.freezed.dart';

@freezed
abstract class AlertFilterEntity with _$AlertFilterEntity {
  const factory AlertFilterEntity({
    List<AlertCategory>? categories,
    List<AlertPriority>? priorities,
    List<AlertStatus>? statuses,
    DateTime? startDate,
    DateTime? endDate,
    String? searchQuery,
    bool? requiresImmediateAction,
  }) = _AlertFilterEntity;
}
