import 'package:flutter/material.dart';
import 'package:github_repo_app/screens/splash_screen.dart';
import 'package:github_repo_app/screens/tabs_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart'; // Add this for better typography

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color(0xFFE65100), // Deep Orange
    primary: const Color(0xFFE65100),
    secondary: const Color(0xFF26A69A), // Teal accent
    background: const Color(0xFF121212), // Dark background
    surface: const Color(0xFF1E1E1E), // Slightly lighter surface
    error: const Color(0xFFCF6679), // Error color
  ).copyWith(
    // Custom color definitions
    tertiary: const Color(0xFFFFB74D), // Orange accent
    onBackground: Colors.white,
    onSurface: Colors.white,
  ),
  // Enhanced Typography
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    titleLarge: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleMedium: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16,
      color: Colors.white70,
    ),
  ),
  // Card Theme
  cardTheme: CardTheme(
    color: const Color(0xFF1E1E1E),
    elevation: 4,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  // AppBar Theme
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1E1E1E),
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),
  // Bottom Navigation Bar Theme
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF1E1E1E),
    selectedItemColor: Color(0xFFE65100),
    unselectedItemColor: Colors.white54,
    type: BottomNavigationBarType.fixed,
    elevation: 8,
  ),
  // Icon Theme
  iconTheme: const IconThemeData(
    color: Colors.white,
    size: 24,
  ),
  // Elevated Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFE65100),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
);

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
