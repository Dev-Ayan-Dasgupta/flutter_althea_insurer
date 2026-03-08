import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/utils/extensions.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/navigation_drawer_widget.dart';
import '../widgets/navigation_rail_widget.dart';

class ShellScreen extends ConsumerWidget {
  final Widget child;
  final String title;

  const ShellScreen({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDesktop = context.isDesktop;

    return Scaffold(
      key: Key('shell_scaffold'),
      appBar: AppBarWidget(title: title, showMenuButton: !isDesktop),
      drawer: !isDesktop ? NavigationDrawerWidget() : null,
      body: Row(
        children: [
          // Desktop Navigation Rail
          if (isDesktop) NavigationRailWidget(),

          // Main Content
          Expanded(child: child),
        ],
      ),
    );
  }
}
