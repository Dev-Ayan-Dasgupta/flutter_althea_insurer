import '../../../../core/utils/logger.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource _remoteDatasource;
  final AuthLocalDatasource _localDatasource;

  AuthRepositoryImpl({
    required AuthRemoteDatasource remoteDatasource,
    required AuthLocalDatasource localDatasource,
  }) : _remoteDatasource = remoteDatasource,
       _localDatasource = localDatasource;

  @override
  Future<UserEntity> login({
    required String email,
    required String password,
  }) async {
    try {
      Logger.info('Repository: Logging in user', tag: 'AuthRepository');

      // Call remote datasource
      final response = await _remoteDatasource.login(
        email: email,
        password: password,
      );

      // Parse user
      final userModel = UserModel.fromJson(response['user']);

      // Save tokens
      await _localDatasource.saveTokens(
        accessToken: response['accessToken'],
        refreshToken: response['refreshToken'],
      );

      // Save user
      await _localDatasource.saveUser(userModel);

      Logger.info('Repository: Login successful', tag: 'AuthRepository');

      return userModel.toEntity();
    } catch (e) {
      Logger.error('Repository: Login failed', tag: 'AuthRepository', error: e);
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      Logger.info('Repository: Logging out', tag: 'AuthRepository');

      // Call remote logout
      await _remoteDatasource.logout();

      // Clear local data
      await _localDatasource.clearTokens();

      Logger.info('Repository: Logout successful', tag: 'AuthRepository');
    } catch (e) {
      Logger.error(
        'Repository: Logout failed',
        tag: 'AuthRepository',
        error: e,
      );
      rethrow;
    }
  }

  @override
  Future<UserEntity?> getCurrentUser() async {
    try {
      final userModel = await _localDatasource.getUser();
      return userModel?.toEntity();
    } catch (e) {
      Logger.error(
        'Repository: Error getting current user',
        tag: 'AuthRepository',
        error: e,
      );
      return null;
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    try {
      final token = await _localDatasource.getAccessToken();
      final hasUser = await _localDatasource.hasUser();
      return token != null && hasUser;
    } catch (e) {
      Logger.error(
        'Repository: Error checking authentication',
        tag: 'AuthRepository',
        error: e,
      );
      return false;
    }
  }

  @override
  Future<void> saveToken(String accessToken, String refreshToken) async {
    await _localDatasource.saveTokens(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  @override
  Future<String?> getAccessToken() async {
    return await _localDatasource.getAccessToken();
  }

  @override
  Future<void> clearTokens() async {
    await _localDatasource.clearTokens();
  }
}
