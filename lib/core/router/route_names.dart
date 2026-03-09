class RouteNames {
  RouteNames._();

  // Root
  static const String root = '/';

  // Auth
  static const String login = '/login';
  static const String onboarding = '/onboarding';

  // Main Shell
  static const String shell = '/shell';

  // Dashboard
  static const String dashboard = '/dashboard';
  static const String clusterRiskOverview = '/dashboard/cluster-risk';

  // Care Events
  static const String careEvents = '/care-events';
  static const String careEventDetails = '/care-events/:id';

  // Emergency
  static const String emergencyTriage = '/emergency-triage';
  static const String emergencyDetails = '/emergency-triage/:id';

  // Risk Engine
  static const String riskEngine = '/risk-engine';
  static const String patientRiskDetails = '/risk-engine/:patientId';

  // Analytics
  static const String claimsPrevention = '/analytics/claims-prevention';
  static const String networkReadiness = '/analytics/network-readiness';

  // Population Health
  static const String populationHealth = '/population-health';
  static const String medicationAdherence = '/population-health/medication';
  static const String elderSafety = '/population-health/elder-safety';

  // Safety Monitor
  static const String safetyMonitor = '/safety-monitor';

  // Settings & Profile
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String notifications = '/notifications';
  static const String help = '/help';

  // Legal
  static const String privacy = '/legal/privacy';
  static const String terms = '/legal/terms';
  static const String about = '/legal/about';
}
