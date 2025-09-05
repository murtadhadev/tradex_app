import 'package:flutter/material.dart';

class LanguageService {
  static const List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('ar', 'AR'),
  ];

  static Locale getCurrentLocale(BuildContext context) {
    return Localizations.localeOf(context);
  }

  static bool isArabic(BuildContext context) {
    return Localizations.localeOf(context).languageCode == 'ar';
  }

  static bool isEnglish(BuildContext context) {
    return Localizations.localeOf(context).languageCode == 'en';
  }

  static String getLanguageName(String languageCode) {
    switch (languageCode) {
      case 'ar':
        return 'العربية';
      case 'en':
        return 'English';
      default:
        return 'English';
    }
  }

  static String getLanguageFlag(String languageCode) {
    switch (languageCode) {
      case 'ar':
        return '🇦🇪';
      case 'en':
        return '🇺🇸';
      default:
        return '🇺🇸';
    }
  }

  static Future<void> changeLanguage(
    BuildContext context,
    String languageCode,
  ) async {
    final locale = Locale(languageCode);
  }

  static Future<void> toggleLanguage(BuildContext context) async {
    final currentLocale = getCurrentLocale(context);
    final newLanguageCode = currentLocale.languageCode == 'ar' ? 'en' : 'ar';
    await changeLanguage(context, newLanguageCode);
  }
}
