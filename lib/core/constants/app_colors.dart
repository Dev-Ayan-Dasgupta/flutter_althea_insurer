import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Colors - Steel Blue
  static const Color primarySteelBlue = Color(0xFF4682B4);
  static const Color primaryLight = Color(0xFF6BA3D0);
  static const Color primaryDark = Color(0xFF2E5F85);

  // Secondary Colors - Steel Grey
  static const Color secondarySteelGrey = Color(0xFF708090);
  static const Color secondaryLight = Color(0xFF8FA3B3);
  static const Color secondaryDark = Color(0xFF4F5D6B);

  // Neutral Colors - Light Mode
  static const Color lightBackground = Color(0xFFF8F9FA);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFF1F3F5);
  static const Color lightBorder = Color(0xFFE1E4E8);

  // Neutral Colors - Dark Mode
  static const Color darkBackground = Color(0xFF0D1117);
  static const Color darkSurface = Color(0xFF161B22);
  static const Color darkSurfaceVariant = Color(0xFF21262D);
  static const Color darkBorder = Color(0xFF30363D);

  // Text Colors - Light Mode
  static const Color lightTextPrimary = Color(0xFF24292F);
  static const Color lightTextSecondary = Color(0xFF57606A);
  static const Color lightTextTertiary = Color(0xFF6E7781);

  // Text Colors - Dark Mode
  static const Color darkTextPrimary = Color(0xFFF0F6FC);
  static const Color darkTextSecondary = Color(0xFFADBBC8);
  static const Color darkTextTertiary = Color(0xFF8B949E);

  // Status Colors
  static const Color success = Color(0xFF28A745);
  static const Color successLight = Color(0xFF34D058);
  static const Color warning = Color(0xFFFFC107);
  static const Color warningLight = Color(0xFFFFD54F);
  static const Color error = Color(0xFFDC3545);
  static const Color errorLight = Color(0xFFFF6B6B);
  static const Color info = Color(0xFF17A2B8);
  static const Color infoLight = Color(0xFF3BB4C5);

  // Risk Level Colors
  static const Color riskLow = Color(0xFF28A745);
  static const Color riskModerate = Color(0xFFFFC107);
  static const Color riskHigh = Color(0xFFFF9800);
  static const Color riskCritical = Color(0xFFDC3545);

  // Verification Colors
  static const Color verified = Color(0xFF28A745);
  static const Color partial = Color(0xFFFFC107);
  static const Color flagged = Color(0xFFDC3545);
  static const Color pending = Color(0xFF6C757D);

  // Emergency Colors
  static const Color emergencyAmber = Color(0xFFFFBF00);
  static const Color emergencyRed = Color(0xFFFF3B30);

  // Overlay Colors
  static Color overlayLight(double opacity) =>
      Colors.black.withValues(alpha: opacity);
  static Color overlayDark(double opacity) =>
      Colors.black.withValues(alpha: opacity);

  // Shimmer Colors - Light Mode
  static const Color shimmerBaseLight = Color(0xFFE1E4E8);
  static const Color shimmerHighlightLight = Color(0xFFF6F8FA);

  // Shimmer Colors - Dark Mode
  static const Color shimmerBaseDark = Color(0xFF21262D);
  static const Color shimmerHighlightDark = Color(0xFF30363D);
}
