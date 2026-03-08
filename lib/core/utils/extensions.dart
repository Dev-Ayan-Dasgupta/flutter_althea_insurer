import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// String Extensions
extension StringExtensions on String {
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String capitalizeWords() {
    if (isEmpty) return this;
    return split(' ').map((word) => word.capitalize()).join(' ');
  }

  bool get isValidEmail {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegex = RegExp(r'^\+?[\d\s\-\(\)]+$');
    return phoneRegex.hasMatch(this) && length >= 10;
  }
}

// DateTime Extensions
extension DateTimeExtensions on DateTime {
  String toFormattedString({String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(this);
  }

  String toTimeString() {
    return DateFormat('hh:mm a').format(this);
  }

  String toDateTimeString() {
    return DateFormat('dd MMM yyyy, hh:mm a').format(this);
  }

  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  String toRelativeString() {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inSeconds < 60) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else {
      return toFormattedString();
    }
  }
}

// Number Extensions
extension DoubleExtensions on double {
  String toCurrency({String symbol = '₹', int decimals = 0}) {
    final formatter = NumberFormat.currency(
      symbol: symbol,
      decimalDigits: decimals,
      locale: 'en_IN',
    );
    return formatter.format(this);
  }

  String toCompactCurrency({String symbol = '₹'}) {
    if (this >= 10000000) {
      return '$symbol${(this / 10000000).toStringAsFixed(2)}Cr';
    } else if (this >= 100000) {
      return '$symbol${(this / 100000).toStringAsFixed(2)}L';
    } else if (this >= 1000) {
      return '$symbol${(this / 1000).toStringAsFixed(2)}K';
    } else {
      return toCurrency(symbol: symbol);
    }
  }

  String toPercentage({int decimals = 1}) {
    return '${(this * 100).toStringAsFixed(decimals)}%';
  }
}

extension IntExtensions on int {
  String toCurrency({String symbol = '₹'}) {
    return toDouble().toCurrency(symbol: symbol);
  }

  String toCompactCurrency({String symbol = '₹'}) {
    return toDouble().toCompactCurrency(symbol: symbol);
  }

  String toCompactNumber() {
    if (this >= 10000000) {
      return '${(this / 10000000).toStringAsFixed(2)}Cr';
    } else if (this >= 100000) {
      return '${(this / 100000).toStringAsFixed(2)}L';
    } else if (this >= 1000) {
      return '${(this / 1000).toStringAsFixed(2)}K';
    } else {
      return toString();
    }
  }
}

// BuildContext Extensions
extension BuildContextExtensions on BuildContext {
  // Theme
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;

  // MediaQuery
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  EdgeInsets get padding => MediaQuery.of(this).padding;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  // Responsive
  bool get isMobile => screenWidth < 600;
  bool get isTablet => screenWidth >= 600 && screenWidth < 1024;
  bool get isDesktop => screenWidth >= 1024;

  // Navigation
  void pop<T>([T? result]) => Navigator.of(this).pop(result);
  // Future<T?> push<T>(Widget page) =>
  //     Navigator.of(this).push(MaterialPageRoute(builder: (_) => page));

  // Show SnackBar
  void showSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message), duration: duration, action: action),
    );
  }

  // Hide Keyboard
  void hideKeyboard() {
    FocusScope.of(this).unfocus();
  }
}

// List Extensions
extension ListExtensions<T> on List<T> {
  List<T> separated(T separator) {
    if (isEmpty) return [];
    return [
      for (int i = 0; i < length; i++) ...[
        this[i],
        if (i < length - 1) separator,
      ],
    ];
  }
}
