import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: const Color(0xFFF5F7FB),

    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF4A6CF7),
      brightness: Brightness.light,
      surface: const Color(0xFFEEF2F9),
      error: const Color(0xFFEF4444),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFEEF2F9),
      elevation: 2,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Color(0xFF1F2937),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: IconThemeData(color: Color(0xFF1F2937)),
    ),

    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 1,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xFF1F2937),
      ),
      bodyMedium: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
    ),
  );
}
