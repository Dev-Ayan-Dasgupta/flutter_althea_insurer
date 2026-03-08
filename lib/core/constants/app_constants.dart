class AppConstants {
  AppConstants._();

  // App Info
  static const String appName = 'Insurer Partner';
  static const String appVersion = '1.0.0';
  static const String companyName = 'AltheaCare';

  // API (Mock for now)
  static const String baseUrl = 'https://api.altheacare.com';
  static const String graphqlEndpoint = '/graphql';

  // Storage Keys
  static const String keyAccessToken = 'access_token';
  static const String keyRefreshToken = 'refresh_token';
  static const String keyUserId = 'user_id';
  static const String keyUserProfile = 'user_profile';
  static const String keyThemeMode = 'theme_mode';
  static const String keyLanguage = 'language';

  // Cluster Info
  static const String clusterLocation = 'Kasba, South Kolkata';
  static const double clusterRadius = 3.0; // km
  static const int totalInsuredLives = 10000;

  // Business Logic
  static const double monthlyFeePerInsuree = 49.0;
  static const double averageClaimCost = 150000.0;

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Timeouts
  static const int connectionTimeout = 30; // seconds
  static const int receiveTimeout = 30; // seconds

  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);
}
