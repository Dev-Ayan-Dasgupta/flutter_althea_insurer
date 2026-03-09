import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/router/app_router.dart';
import 'core/theme/theme_provider.dart';
import 'core/utils/logger.dart';
import 'features/auth/presentation/providers/auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.info('Initializing app...', tag: 'MAIN');

  // Initialize SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  Logger.info('SharedPreferences initialized', tag: 'MAIN');

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const InsurerPartnerApp(),
    ),
  );
}

class InsurerPartnerApp extends ConsumerWidget {
  const InsurerPartnerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    final themeMode = ref.watch(themeModeProvider);
    final appTheme = ref.watch(appThemeProvider);

    return MaterialApp.router(
      title: 'Insurer Partner App',
      debugShowCheckedModeBanner: false,
      theme: appTheme.lightTheme,
      darkTheme: appTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
