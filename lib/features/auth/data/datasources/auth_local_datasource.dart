import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/logger.dart';
import '../models/user_model.dart';

class AuthLocalDatasource {
  final SharedPreferences _prefs;

  AuthLocalDatasource(this._prefs);

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    try {
      await _prefs.setString(AppConstants.keyAccessToken, accessToken);
      await _prefs.setString(AppConstants.keyRefreshToken, refreshToken);
      Logger.info('Tokens saved successfully', tag: 'AuthLocalDatasource');
    } catch (e) {
      Logger.error('Error saving tokens', tag: 'AuthLocalDatasource', error: e);
      rethrow;
    }
  }

  Future<String?> getAccessToken() async {
    try {
      return _prefs.getString(AppConstants.keyAccessToken);
    } catch (e) {
      Logger.error(
        'Error getting access token',
        tag: 'AuthLocalDatasource',
        error: e,
      );
      return null;
    }
  }

  Future<String?> getRefreshToken() async {
    try {
      return _prefs.getString(AppConstants.keyRefreshToken);
    } catch (e) {
      Logger.error(
        'Error getting refresh token',
        tag: 'AuthLocalDatasource',
        error: e,
      );
      return null;
    }
  }

  Future<void> clearTokens() async {
    try {
      await _prefs.remove(AppConstants.keyAccessToken);
      await _prefs.remove(AppConstants.keyRefreshToken);
      await _prefs.remove(AppConstants.keyUserId);
      await _prefs.remove(AppConstants.keyUserProfile);
      Logger.info('Tokens cleared successfully', tag: 'AuthLocalDatasource');
    } catch (e) {
      Logger.error(
        'Error clearing tokens',
        tag: 'AuthLocalDatasource',
        error: e,
      );
      rethrow;
    }
  }

  Future<void> saveUser(UserModel user) async {
    try {
      final userJson = jsonEncode(user.toJson());
      await _prefs.setString(AppConstants.keyUserProfile, userJson);
      await _prefs.setString(AppConstants.keyUserId, user.id);
      Logger.info('User saved successfully', tag: 'AuthLocalDatasource');
    } catch (e) {
      Logger.error('Error saving user', tag: 'AuthLocalDatasource', error: e);
      rethrow;
    }
  }

  Future<UserModel?> getUser() async {
    try {
      final userJson = _prefs.getString(AppConstants.keyUserProfile);
      if (userJson == null) return null;

      final Map<String, dynamic> json = jsonDecode(userJson);
      return UserModel.fromJson(json);
    } catch (e) {
      Logger.error('Error getting user', tag: 'AuthLocalDatasource', error: e);
      return null;
    }
  }

  Future<bool> hasUser() async {
    try {
      final userId = _prefs.getString(AppConstants.keyUserId);
      return userId != null;
    } catch (e) {
      Logger.error('Error checking user', tag: 'AuthLocalDatasource', error: e);
      return false;
    }
  }

  Future<void> setOnboardingComplete() async {
    try {
      await _prefs.setBool('onboarding_complete', true);
      Logger.info('Onboarding marked complete', tag: 'AuthLocalDatasource');
    } catch (e) {
      Logger.error(
        'Error setting onboarding complete',
        tag: 'AuthLocalDatasource',
        error: e,
      );
    }
  }

  Future<bool> isOnboardingComplete() async {
    try {
      return _prefs.getBool('onboarding_complete') ?? false;
    } catch (e) {
      Logger.error(
        'Error checking onboarding status',
        tag: 'AuthLocalDatasource',
        error: e,
      );
      return false;
    }
  }
}
