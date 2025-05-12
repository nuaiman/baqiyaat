import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeNotifier extends StateNotifier<ThemeMode> {
  AppThemeNotifier() : super(ThemeMode.system);

  static const String _themeKey = 'isDarkMode';

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool(_themeKey);
    if (isDarkMode == null) {
      state = ThemeMode.system;
    } else {
      state = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    }
  }

  Future<void> toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = state == ThemeMode.dark;
    final newMode = isDark ? ThemeMode.light : ThemeMode.dark;
    state = newMode;
    await prefs.setBool(_themeKey, newMode == ThemeMode.dark);
  }
}

// -----------------------------------------------------------------------------
final appThemeNotifierProvider =
    StateNotifierProvider<AppThemeNotifier, ThemeMode>(
      (ref) => AppThemeNotifier(),
    );
