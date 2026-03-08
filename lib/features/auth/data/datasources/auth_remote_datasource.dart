import '../../../../core/utils/logger.dart';
import '../models/user_model.dart';

class AuthRemoteDatasource {
  // Mock API calls - will be replaced with actual GraphQL later

  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      Logger.info('Attempting login for: $email', tag: 'AuthRemoteDatasource');

      // Simulate network delay
      await Future.delayed(Duration(seconds: 2));

      // Mock validation
      if (email.isEmpty || password.isEmpty) {
        throw Exception('Email and password are required');
      }

      if (!email.contains('@')) {
        throw Exception('Invalid email format');
      }

      if (password.length < 6) {
        throw Exception('Password must be at least 6 characters');
      }

      // Mock successful response
      final mockUser = UserModel(
        id: 'user_${DateTime.now().millisecondsSinceEpoch}',
        email: email,
        name: _extractNameFromEmail(email),
        role: 'Insurance Partner Admin',
        organizationId: 'org_star_health',
        organizationName: 'Star Health Insurance',
        phone: '+91 98765 43210',
        avatarUrl: null,
        lastLoginAt: DateTime.now(),
        createdAt: DateTime.now().subtract(Duration(days: 90)),
      );

      Logger.info('Login successful for: $email', tag: 'AuthRemoteDatasource');

      return {
        'user': mockUser.toJson(),
        'accessToken':
            'mock_access_token_${DateTime.now().millisecondsSinceEpoch}',
        'refreshToken':
            'mock_refresh_token_${DateTime.now().millisecondsSinceEpoch}',
      };
    } catch (e) {
      Logger.error('Login failed', tag: 'AuthRemoteDatasource', error: e);
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      Logger.info('Logging out', tag: 'AuthRemoteDatasource');

      // Simulate network delay
      await Future.delayed(Duration(milliseconds: 500));

      Logger.info('Logout successful', tag: 'AuthRemoteDatasource');
    } catch (e) {
      Logger.error('Logout failed', tag: 'AuthRemoteDatasource', error: e);
      rethrow;
    }
  }

  String _extractNameFromEmail(String email) {
    final name = email.split('@')[0];
    return name
        .split('.')
        .map((part) => part[0].toUpperCase() + part.substring(1))
        .join(' ');
  }
}
