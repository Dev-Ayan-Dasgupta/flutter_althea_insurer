import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static final TextTheme _baseTextTheme = GoogleFonts.balooBhaijaan2TextTheme();

  // Display Styles
  static TextStyle displayLarge(BuildContext context) {
    return _baseTextTheme.displayLarge!.copyWith(
      fontSize: 57,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.25,
      height: 1.12,
    );
  }

  static TextStyle displayMedium(BuildContext context) {
    return _baseTextTheme.displayMedium!.copyWith(
      fontSize: 45,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.16,
    );
  }

  static TextStyle displaySmall(BuildContext context) {
    return _baseTextTheme.displaySmall!.copyWith(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.22,
    );
  }

  // Headline Styles
  static TextStyle headlineLarge(BuildContext context) {
    return _baseTextTheme.headlineLarge!.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.25,
    );
  }

  static TextStyle headlineMedium(BuildContext context) {
    return _baseTextTheme.headlineMedium!.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.29,
    );
  }

  static TextStyle headlineSmall(BuildContext context) {
    return _baseTextTheme.headlineSmall!.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.33,
    );
  }

  // Title Styles
  static TextStyle titleLarge(BuildContext context) {
    return _baseTextTheme.titleLarge!.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.27,
    );
  }

  static TextStyle titleMedium(BuildContext context) {
    return _baseTextTheme.titleMedium!.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
      height: 1.50,
    );
  }

  static TextStyle titleSmall(BuildContext context) {
    return _baseTextTheme.titleSmall!.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
      height: 1.43,
    );
  }

  // Body Styles
  static TextStyle bodyLarge(BuildContext context) {
    return _baseTextTheme.bodyLarge!.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1.50,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    return _baseTextTheme.bodyMedium!.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      height: 1.43,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    return _baseTextTheme.bodySmall!.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
    );
  }

  // Label Styles
  static TextStyle labelLarge(BuildContext context) {
    return _baseTextTheme.labelLarge!.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
      height: 1.43,
    );
  }

  static TextStyle labelMedium(BuildContext context) {
    return _baseTextTheme.labelMedium!.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      height: 1.33,
    );
  }

  static TextStyle labelSmall(BuildContext context) {
    return _baseTextTheme.labelSmall!.copyWith(
      fontSize: 11,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      height: 1.45,
    );
  }

  // Custom Styles for Dashboard
  static TextStyle metric(BuildContext context) {
    return _baseTextTheme.displayMedium!.copyWith(
      fontSize: 48,
      fontWeight: FontWeight.w700,
      letterSpacing: -1,
      height: 1.1,
    );
  }

  static TextStyle metricLabel(BuildContext context) {
    return _baseTextTheme.labelMedium!.copyWith(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      height: 1.5,
    );
  }
}
