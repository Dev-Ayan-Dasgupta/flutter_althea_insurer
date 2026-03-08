import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_item.freezed.dart';

@freezed
abstract class NavigationItem with _$NavigationItem {
  const factory NavigationItem({
    required String id,
    required String label,
    required IconData icon,
    required IconData selectedIcon,
    required String route,
    @Default(false) bool isHeader,
    @Default([]) List<NavigationItem> children,
  }) = _NavigationItem;
}
