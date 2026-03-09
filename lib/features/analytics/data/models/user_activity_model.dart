import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_activity_entity.dart';

part 'user_activity_model.freezed.dart';
part 'user_activity_model.g.dart';

@freezed
abstract class UserActivityModel with _$UserActivityModel {
  const UserActivityModel._();

  const factory UserActivityModel({
    required String id,
    required String userId,
    required String activityType,
    required String description,
    required DateTime timestamp,
    String? targetId,
    String? targetType,
    Map<String, dynamic>? metadata,
  }) = _UserActivityModel;

  factory UserActivityModel.fromJson(Map<String, dynamic> json) =>
      _$UserActivityModelFromJson(json);

  UserActivityEntity toEntity() {
    ActivityType typeEnum;
    switch (activityType.toLowerCase()) {
      case 'login':
        typeEnum = ActivityType.login;
        break;
      case 'page_view':
        typeEnum = ActivityType.pageView;
        break;
      case 'alert_acknowledged':
        typeEnum = ActivityType.alertAcknowledged;
        break;
      case 'claim_reviewed':
        typeEnum = ActivityType.claimReviewed;
        break;
      case 'fraud_investigated':
        typeEnum = ActivityType.fraudInvestigated;
        break;
      case 'report_generated':
        typeEnum = ActivityType.reportGenerated;
        break;
      case 'settings_changed':
        typeEnum = ActivityType.settingsChanged;
        break;
      case 'search_performed':
        typeEnum = ActivityType.searchPerformed;
        break;
      default:
        typeEnum = ActivityType.pageView;
    }

    return UserActivityEntity(
      id: id,
      userId: userId,
      activityType: typeEnum,
      description: description,
      timestamp: timestamp,
      targetId: targetId,
      targetType: targetType,
      metadata: metadata,
    );
  }
}
