import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/models/navigation_item.dart';
import '../../../../core/router/route_names.dart';

part 'navigation_provider.g.dart';

@riverpod
class NavigationIndex extends _$NavigationIndex {
  @override
  int build() => 0;

  void setIndex(int index) {
    state = index;
  }
}

@riverpod
List<NavigationItem> navigationItems(Ref ref) {
  return [
    // Dashboard Section
    NavigationItem(
      id: 'dashboard',
      label: 'Dashboard',
      icon: Icons.dashboard_outlined,
      selectedIcon: Icons.dashboard,
      route: RouteNames.dashboard,
    ),

    // Care & Events Section
    NavigationItem(
      id: 'care_events',
      label: 'Care Events',
      icon: Icons.event_note_outlined,
      selectedIcon: Icons.event_note,
      route: RouteNames.careEvents,
    ),
    NavigationItem(
      id: 'emergency',
      label: 'Emergency Triage',
      icon: Icons.emergency_outlined,
      selectedIcon: Icons.emergency,
      route: RouteNames.emergencyTriage,
    ),

    // Analytics Section
    NavigationItem(
      id: 'risk_engine',
      label: 'Risk Engine',
      icon: Icons.analytics_outlined,
      selectedIcon: Icons.analytics,
      route: RouteNames.riskEngine,
    ),
    NavigationItem(
      id: 'claims',
      label: 'Claims Prevention',
      icon: Icons.trending_down_outlined,
      selectedIcon: Icons.trending_down,
      route: RouteNames.claimsPrevention,
    ),
    NavigationItem(
      id: 'network',
      label: 'Network Readiness',
      icon: Icons.hub_outlined,
      selectedIcon: Icons.hub,
      route: RouteNames.networkReadiness,
    ),

    // Population Health Section
    NavigationItem(
      id: 'population',
      label: 'Population Health',
      icon: Icons.people_outline,
      selectedIcon: Icons.people,
      route: RouteNames.populationHealth,
    ),

    // Safety Monitor Section
    NavigationItem(
      id: 'safety-monitor',
      label: 'Safety Monitor',
      icon: Icons.shield_outlined,
      selectedIcon: Icons.shield,
      route: RouteNames.safetyMonitor,
    ),
  ];
}

@riverpod
bool isDrawerOpen(Ref ref) => false;

@riverpod
class DrawerState extends _$DrawerState {
  @override
  bool build() => false;

  void toggle() {
    state = !state;
  }

  void close() {
    state = false;
  }

  void open() {
    state = true;
  }
}
