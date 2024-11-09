import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/screens/splash_screen.dart';

final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x2f3640)));

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}
