import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/utils/logger.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../../data/datasources/auth_remote_datasource.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import 'auth_state.dart';

part 'auth_provider.g.dart';

// SharedPreferences Provider
@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(Ref ref) {
  throw UnimplementedError('SharedPreferences not initialized');
}

// Datasources Providers
@Riverpod(keepAlive: true)
AuthLocalDatasource authLocalDatasource(Ref ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return AuthLocalDatasource(prefs);
}

@Riverpod(keepAlive: true)
AuthRemoteDatasource authRemoteDatasource(Ref ref) {
  return AuthRemoteDatasource();
}

// Repository Provider
@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  final localDatasource = ref.watch(authLocalDatasourceProvider);
  final remoteDatasource = ref.watch(authRemoteDatasourceProvider);

  return AuthRepositoryImpl(
    localDatasource: localDatasource,
    remoteDatasource: remoteDatasource,
  );
}

// Auth State Notifier using Riverpod annotation
@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  AuthState build() {
    _checkAuthStatus();
    return const AuthState.initial();
  }

  Future<void> _checkAuthStatus() async {
    try {
      Logger.info('Checking authentication status', tag: 'Auth');

      final authRepository = ref.read(authRepositoryProvider);
      final isAuthenticated = await authRepository.isAuthenticated();

      if (isAuthenticated) {
        final user = await authRepository.getCurrentUser();
        if (user != null) {
          state = AuthState.authenticated(user);
          Logger.info('User is authenticated', tag: 'Auth');
        } else {
          state = const AuthState.unauthenticated();
          Logger.info(
            'User not found, marking as unauthenticated',
            tag: 'Auth',
          );
        }
      } else {
        state = const AuthState.unauthenticated();
        Logger.info('User is not authenticated', tag: 'Auth');
      }
    } catch (e) {
      Logger.error('Error checking auth status', tag: 'Auth', error: e);
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> login({required String email, required String password}) async {
    try {
      Logger.info('Starting login process', tag: 'Auth');
      state = const AuthState.loading();

      final authRepository = ref.read(authRepositoryProvider);
      final user = await authRepository.login(email: email, password: password);

      state = AuthState.authenticated(user);
      Logger.info('Login successful', tag: 'Auth');
    } catch (e) {
      Logger.error('Login failed', tag: 'Auth', error: e);
      state = AuthState.error(e.toString());

      // Reset to unauthenticated after showing error
      await Future.delayed(Duration(seconds: 3));
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> logout() async {
    try {
      Logger.info('Starting logout process', tag: 'Auth');
      state = const AuthState.loading();

      final authRepository = ref.read(authRepositoryProvider);
      await authRepository.logout();

      state = const AuthState.unauthenticated();
      Logger.info('Logout successful', tag: 'Auth');
    } catch (e) {
      Logger.error('Logout failed', tag: 'Auth', error: e);
      state = AuthState.error(e.toString());
    }
  }
}

// Convenience providers
@riverpod
bool isAuthenticated(Ref ref) {
  final authState = ref.watch(authProvider);
  return authState.maybeWhen(authenticated: (_) => true, orElse: () => false);
}

@riverpod
UserEntity? currentUser(Ref ref) {
  final authState = ref.watch(authProvider);
  return authState.maybeWhen(authenticated: (user) => user, orElse: () => null);
}

// Onboarding Providers
@riverpod
Future<bool> onboarding(Ref ref) async {
  final localDatasource = ref.watch(authLocalDatasourceProvider);
  return await localDatasource.isOnboardingComplete();
}

@riverpod
class OnboardingNotifier extends _$OnboardingNotifier {
  @override
  FutureOr<void> build() {
    // Initialize if needed
  }

  Future<void> completeOnboarding() async {
    final localDatasource = ref.read(authLocalDatasourceProvider);
    await localDatasource.setOnboardingComplete();
    ref.invalidate(onboardingProvider);
  }

  Future<bool> isOnboardingComplete() async {
    final localDatasource = ref.read(authLocalDatasourceProvider);
    return await localDatasource.isOnboardingComplete();
  }
}
