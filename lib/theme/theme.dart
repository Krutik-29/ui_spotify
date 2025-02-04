import 'package:flutter/material.dart';

class AppTheme {
  // Colors
  static const Color primaryColor = Color(0xFF1DB954); // Spotify green
  static const Color backgroundColor = Color(0xFF121212);
  static const Color surfaceColor = Color(0xFF282828);
  static const Color cardColor = Color(0xFF181818);
  static const Color dividerColor = Color(0xFF404040);

  // Text Colors
  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color secondaryTextColor = Color(0xFFB3B3B3);
  static const Color disabledTextColor = Color(0xFF727272);

  //Font Family
  static const String fontFamily = 'Spotify';

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,

    // Color Scheme
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: primaryColor,
      surface: surfaceColor,
      background: backgroundColor,
      error: Color(0xFFCF6679),
    ),

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: primaryTextColor),
      titleTextStyle: TextStyle(
        color: primaryTextColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,

      ),
    ),

    // Bottom Navigation Bar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: backgroundColor,
      selectedItemColor: primaryTextColor,
      unselectedItemColor: secondaryTextColor,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        fontFamily: fontFamily,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontFamily: fontFamily,
      ),
      selectedIconTheme: IconThemeData(
        size: 30
      ),
      unselectedIconTheme: IconThemeData(
          size: 30
      ),
    ),

    // Card Theme
    cardTheme: CardTheme(
      color: cardColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),

    // Text Theme
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: primaryTextColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
      ),
      displayMedium: TextStyle(
        color: primaryTextColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
      ),
      displaySmall: TextStyle(
        color: primaryTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
      ),
      headlineMedium: TextStyle(
        color: primaryTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
      ),
      bodyLarge: TextStyle(
        color: primaryTextColor,
        fontSize: 16,
        fontFamily: fontFamily,
      ),
      bodyMedium: TextStyle(
        color: secondaryTextColor,
        fontSize: 14,
        fontFamily: fontFamily,
      ),
      bodySmall: TextStyle(
        color: secondaryTextColor,
        fontSize: 12,
        fontFamily: fontFamily,
      ),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: primaryTextColor,
      size: 24,
    ),

    // Divider Theme
    dividerTheme: const DividerThemeData(
      color: dividerColor,
      thickness: 1,
    ),
  );
}