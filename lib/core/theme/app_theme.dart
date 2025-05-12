import 'package:flutter/material.dart';

import 'app_palette.dart';

class AppTheme {
  //
  static OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 2),
    borderRadius: BorderRadius.circular(16),
  );
  // ---------------------------------------------------------------------------
  // Dark Theme
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.darkBg,
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppPalette.darkBg,
      surfaceTintColor: AppPalette.darkBg,
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      color: AppPalette.darkCard,
      surfaceTintColor: AppPalette.darkCard,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(24),
      enabledBorder: _border(AppPalette.darkBorder),
      focusedBorder: _border(AppPalette.darkBorder),
      errorBorder: _border(AppPalette.darkBorder),
      focusedErrorBorder: _border(AppPalette.red),
    ),
    //
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppPalette.darkBg,
      selectedItemColor: AppPalette.lightBg,
      unselectedItemColor: AppPalette.inactive,
    ),
    //
    textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Uthmani'),
    //
  );
  // ---------------------------------------------------------------------------
  // ---------------------------------------------------------------------------
  // ---------------------------------------------------------------------------
  // Light Theme
  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPalette.lightBg,
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppPalette.lightBg,
      surfaceTintColor: AppPalette.lightBg,
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      color: AppPalette.lightCard,
      surfaceTintColor: AppPalette.lightCard,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(24),
      enabledBorder: _border(AppPalette.lighBorder),
      focusedBorder: _border(AppPalette.lighBorder),
      errorBorder: _border(AppPalette.lighBorder),
      focusedErrorBorder: _border(AppPalette.red),
    ),
    //
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppPalette.lightBg,
      selectedItemColor: AppPalette.darkBg,
      unselectedItemColor: AppPalette.inactive,
    ),
    //
    textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Uthmani'),
    //
  );
}
