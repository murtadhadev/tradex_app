import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const String _primaryFontFamily = 'NotoSansArabic';
  static const String _condensedFontFamily = 'NotoSansArabicCondensed';
  static const String _semiCondensedFontFamily = 'NotoSansArabicSemiCondensed';
  static const String _extraCondensedFontFamily =
      'NotoSansArabicExtraCondensed';

  static const TextStyle titleLarge = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.titleText,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.titleText,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.titleText,
  );

  static const TextStyle subtitleLarge = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.subtitleText,
  );

  static const TextStyle subtitleMedium = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.subtitleText,
  );

  static const TextStyle subtitleSmall = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.subtitleText,
  );

  static const TextStyle descriptionLarge = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.descriptionText,
  );

  static const TextStyle descriptionMedium = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.descriptionText,
  );

  static const TextStyle descriptionSmall = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.descriptionText,
  );

  // Special Styles
  static const TextStyle priceText = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.titleText,
  );

  static const TextStyle badgeText = TextStyle(
    fontFamily: _condensedFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteText,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: _primaryFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteText,
  );

  static const TextStyle condensedTitle = TextStyle(
    fontFamily: _condensedFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.titleText,
  );

  static const TextStyle condensedSubtitle = TextStyle(
    fontFamily: _condensedFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.subtitleText,
  );

  static const TextStyle condensedDescription = TextStyle(
    fontFamily: _condensedFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.descriptionText,
  );

  static const TextStyle extraCondensedTitle = TextStyle(
    fontFamily: _extraCondensedFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.titleText,
  );

  static const TextStyle extraCondensedSubtitle = TextStyle(
    fontFamily: _extraCondensedFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.subtitleText,
  );

  static const TextStyle extraCondensedDescription = TextStyle(
    fontFamily: _extraCondensedFontFamily,
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: AppColors.descriptionText,
  );
}
