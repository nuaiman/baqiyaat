import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../theme/app_theme.dart';

class AppThemeNotifier extends StateNotifier<ThemeData> {
  AppThemeNotifier() : super(AppTheme.darkThemeMode);

  static const String _themeKey = 'isDarkMode';

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool(_themeKey) ?? false;
    state = isDarkMode ? AppTheme.darkThemeMode : AppTheme.lightThemeMode;
  }

  Future<void> toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = state == AppTheme.darkThemeMode;
    state = isDarkMode ? AppTheme.lightThemeMode : AppTheme.darkThemeMode;
    await prefs.setBool(_themeKey, !isDarkMode);
  }
}

// -----------------------------------------------------------------------------
final appThemeNotifierProvider =
    StateNotifierProvider<AppThemeNotifier, ThemeData>(
      (ref) => AppThemeNotifier(),
    );
