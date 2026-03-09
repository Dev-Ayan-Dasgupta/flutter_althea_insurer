import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/care_events/presentation/screens/care_event_details_screen.dart';
import '../../features/care_events/presentation/screens/care_events_screen.dart';
import '../../features/claims_prevention/presentation/screens/claims_prevention_screen.dart';
import '../../features/emergency_triage/presentation/screens/emergency_case_details_screen.dart';
import '../../features/emergency_triage/presentation/screens/emergency_triage_screen.dart';
import '../../features/network_readiness/presentation/screens/network_readiness_screen.dart';
import '../../features/risk_engine/presentation/screens/patient_risk_details_screen.dart';
import '../../features/risk_engine/presentation/screens/risk_engine_screen.dart';
import 'route_names.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/providers/auth_provider.dart';
import '../../features/auth/presentation/providers/auth_state.dart';
import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/shell/presentation/screens/shell_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';

// Router Provider
final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);
  final onboardingComplete = ref.watch(onboardingProvider);

  return GoRouter(
    initialLocation: _getInitialLocation(authState, onboardingComplete),
    // debugLogDiagnostics: true,
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

      // Main Shell Routes
      ShellRoute(
        builder: (context, state, child) {
          return ShellScreen(
            title: _getPageTitle(state.uri.path),
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: RouteNames.dashboard,
            name: 'dashboard',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const DashboardScreen(),
            ),
          ),
          GoRoute(
            path: RouteNames.profile,
            name: 'profile',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ProfileScreen(),
            ),
          ),
          GoRoute(
            path: RouteNames.careEvents,
            name: 'care_events',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const CareEventsScreen(),
            ),
          ),
          GoRoute(
            path: '/care-events/:id',
            name: 'care_event_details',
            pageBuilder: (context, state) {
              final id = state.pathParameters['id']!;
              return NoTransitionPage(
                key: state.pageKey,
                child: CareEventDetailsScreen(eventId: id),
              );
            },
          ),
          GoRoute(
            path: RouteNames.emergencyTriage,
            name: 'emergency_triage',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const EmergencyTriageScreen(),
            ),
          ),
          GoRoute(
            path: '/emergency-triage/:id',
            name: 'emergency_case_details',
            pageBuilder: (context, state) {
              final id = state.pathParameters['id']!;
              return NoTransitionPage(
                key: state.pageKey,
                child: EmergencyCaseDetailsScreen(caseId: id),
              );
            },
          ),
          GoRoute(
            path: RouteNames.riskEngine,
            name: 'risk_engine',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const RiskEngineScreen(),
            ),
          ),
          GoRoute(
            path: '/risk-engine/:id',
            name: 'patient_risk_details',
            pageBuilder: (context, state) {
              final id = state.pathParameters['id']!;
              return NoTransitionPage(
                key: state.pageKey,
                child: PatientRiskDetailsScreen(profileId: id),
              );
            },
          ),
          GoRoute(
            path: RouteNames.claimsPrevention,
            name: 'claims_prevention',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ClaimsPreventionScreen(),
            ),
          ),
          GoRoute(
            path: RouteNames.networkReadiness,
            name: 'network_readiness',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const NetworkReadinessScreen(),
            ),
          ),
          GoRoute(
            path: RouteNames.populationHealth,
            name: 'population_health',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: _PlaceholderScreen(title: 'Population Health'),
            ),
          ),
          GoRoute(
            path: RouteNames.settings,
            name: 'settings',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: _PlaceholderScreen(title: 'Settings'),
            ),
          ),
          GoRoute(
            path: RouteNames.help,
            name: 'help',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: _PlaceholderScreen(title: 'Help & Support'),
            ),
          ),
          GoRoute(
            path: RouteNames.notifications,
            name: 'notifications',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: _PlaceholderScreen(title: 'Notifications'),
            ),
          ),
        ],
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

String _getPageTitle(String path) {
  switch (path) {
    case '/dashboard':
      return 'Dashboard';
    case '/care-events':
      return 'Care Events';
    case '/emergency-triage':
      return 'Emergency Triage';
    case '/risk-engine':
      return 'Risk Engine';
    case '/analytics/claims-prevention':
      return 'Claims Prevention';
    case '/analytics/network-readiness':
      return 'Network Readiness';
    case '/population-health':
      return 'Population Health';
    case '/profile':
      return 'Profile';
    case '/settings':
      return 'Settings';
    case '/help':
      return 'Help & Support';
    case '/notifications':
      return 'Notifications';
    default:
      return 'Insurer Partner';
  }
}

// Placeholder screen for unimplemented routes
class _PlaceholderScreen extends StatelessWidget {
  final String title;

  const _PlaceholderScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.construction, size: 64, color: Colors.grey),
          SizedBox(height: 16),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: 8),
          Text('Coming soon...', style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
