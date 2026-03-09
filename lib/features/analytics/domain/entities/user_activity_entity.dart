import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_activity_entity.freezed.dart';

enum ActivityType {
  login,
  pageView,
  alertAcknowledged,
  claimReviewed,
  fraudInvestigated,
  reportGenerated,
  settingsChanged,
  searchPerformed,
}

@freezed
abstract class UserActivityEntity with _$UserActivityEntity {
  const factory UserActivityEntity({
    required String id,
    required String userId,
    required ActivityType activityType,
    required String description,
    required DateTime timestamp,
    String? targetId,
    String? targetType,
    Map<String, dynamic>? metadata,
  }) = _UserActivityEntity;
}
