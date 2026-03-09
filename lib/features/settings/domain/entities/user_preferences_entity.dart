import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences_entity.freezed.dart';

@freezed
abstract class UserPreferencesEntity with _$UserPreferencesEntity {
  const factory UserPreferencesEntity({
    required String userId,
    required bool darkMode,
    required String accentColor,
    required bool compactView,
    required bool showAvatars,
    required int itemsPerPage,
    required String dateFormat,
    required String timeFormat,
    required String currency,
    required bool autoRefresh,
    required int refreshInterval,
    required bool soundEnabled,
    required bool vibrationEnabled,
  }) = _UserPreferencesEntity;
}
