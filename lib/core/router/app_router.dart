import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'route_names.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/providers/auth_provider.dart';
import '../../features/auth/presentation/providers/auth_state.dart';
import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';

// Router Provider
final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);
  final onboardingComplete = ref.watch(onboardingProvider);

  return GoRouter(
    initialLocation: _getInitialLocation(authState, onboardingComplete),
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final isAuthenticated = authState.maybeWhen(
        authenticated: (_) => true,
        orElse: () => false,
      );

      final isOnboardingDone = onboardingComplete.maybeWhen(
        data: (value) => value,
        orElse: () => false,
      );

      final isOnOnboarding = state.uri.path == RouteNames.onboarding;
      final isOnLogin = state.uri.path == RouteNames.login;

      // If not onboarded, redirect to onboarding
      if (!isOnboardingDone && !isOnOnboarding) {
        return RouteNames.onboarding;
      }

      // If authenticated and on login/onboarding, go to dashboard
      if (isAuthenticated && (isOnLogin || isOnOnboarding)) {
        return RouteNames.dashboard;
      }

      // If not authenticated and trying to access protected routes
      if (!isAuthenticated && !isOnLogin && !isOnOnboarding) {
        return RouteNames.login;
      }

      return null; // No redirect
    },
    routes: [
      // Onboarding Route
      GoRoute(
        path: RouteNames.onboarding,
        name: 'onboarding',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const OnboardingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),

      // Auth Routes
      GoRoute(
        path: RouteNames.login,
        name: 'login',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),

      // Dashboard Route
      GoRoute(
        path: RouteNames.dashboard,
        name: 'dashboard',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const DashboardScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red),
            SizedBox(height: 16),
            Text(
              'Page not found',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8),
            Text(
              state.uri.toString(),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    ),
  );
});

String _getInitialLocation(
  AuthState authState,
  AsyncValue<bool> onboardingComplete,
) {
  final isAuthenticated = authState.maybeWhen(
    authenticated: (_) => true,
    orElse: () => false,
  );

  if (isAuthenticated) {
    return RouteNames.dashboard;
  }

  final isOnboardingDone = onboardingComplete.maybeWhen(
    data: (value) => value,
    orElse: () => false,
  );

  if (!isOnboardingDone) {
    return RouteNames.onboarding;
  }

  return RouteNames.login;
}
