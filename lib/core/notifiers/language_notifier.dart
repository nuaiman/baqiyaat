import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../enums/language_enum.dart';

class LanguageNotifier extends StateNotifier<LanguageEnum> {
  static const _key = 'language';

  LanguageNotifier() : super(LanguageEnum.english) {
    _loadLanguage();
  }

  Future<void> _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final index = prefs.getInt(_key);
    if (index != null) {
      state = LanguageEnum.values[index];
    }
  }

  Future<void> setLanguage() async {
    final currentLanguage = state;
    if (currentLanguage == LanguageEnum.english) {
      state = LanguageEnum.bangla;
    } else if (currentLanguage == LanguageEnum.bangla) {
      state = LanguageEnum.english;
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_key, state.index);
  }
}

// -----------------------------------------------------------------------------

final languageProvider = StateNotifierProvider<LanguageNotifier, LanguageEnum>(
  (ref) => LanguageNotifier(),
);
