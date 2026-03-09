import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_preferences_entity.dart';

part 'user_preferences_model.freezed.dart';
part 'user_preferences_model.g.dart';

@freezed
abstract class UserPreferencesModel with _$UserPreferencesModel {
  const UserPreferencesModel._();

  const factory UserPreferencesModel({
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
  }) = _UserPreferencesModel;

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);

  UserPreferencesEntity toEntity() {
    return UserPreferencesEntity(
      userId: userId,
      darkMode: darkMode,
      accentColor: accentColor,
      compactView: compactView,
      showAvatars: showAvatars,
      itemsPerPage: itemsPerPage,
      dateFormat: dateFormat,
      timeFormat: timeFormat,
      currency: currency,
      autoRefresh: autoRefresh,
      refreshInterval: refreshInterval,
      soundEnabled: soundEnabled,
      vibrationEnabled: vibrationEnabled,
    );
  }
}
