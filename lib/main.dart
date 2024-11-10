import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/data/github_api_data.dart';
import 'package:github_repo_app/providers/gist_provider.dart';
import 'package:github_repo_app/screens/splash_screen.dart';

final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x2f3640)));

void main() {
  runApp(ProviderScope(
    overrides: [
      gistServiceProvider.overrideWith((ref) => GistService()),
    ],
    child: App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false, 
    );
  }
}
