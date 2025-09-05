import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../services/language_service.dart';
import '../providers/locale_provider.dart';
import '../navigation/app_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showLogo;
  final List<Widget>? actions;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final double? elevation;
  final double? titleSpacing;
  final bool showLanguageSwitcher;

  const CustomAppBar({
    super.key,
    this.title,
    this.showLogo = false,
    this.actions,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.backgroundColor,
    this.elevation = 0,
    this.titleSpacing,
    this.showLanguageSwitcher = false,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> finalActions = [];

    if (showLanguageSwitcher) {
      finalActions.add(_buildLanguageSwitcher(context));
    }

    if (actions != null) {
      finalActions.addAll(actions!);
    }

    return AppBar(
      title: showLogo
          ? _buildLogoTitle()
          : title != null
          ? Text(
              title!,
              style: AppTextStyles.titleMedium.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            )
          : null,
      centerTitle: !showLogo,
      actions: finalActions.isNotEmpty ? finalActions : null,
      leading:
          leading ??
          (automaticallyImplyLeading
              ? _buildAnimatedBackButton(context)
              : null),
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor ?? AppColors.secondary,
      elevation: elevation,
      titleSpacing: titleSpacing,
      iconTheme: const IconThemeData(color: AppColors.primary, size: 24),
      actionsIconTheme: const IconThemeData(color: AppColors.primary, size: 24),
    );
  }

  Widget _buildAnimatedBackButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: AppColors.primary),
      onPressed: () {
        NavigationService.navigateBack();
      },
    );
  }

  Widget _buildLanguageSwitcher(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);
    final currentLanguageCode = localeProvider.locale.languageCode;

    return PopupMenuButton<String>(
      icon: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.lightGray.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.lightGray),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LanguageService.getLanguageFlag(currentLanguageCode),
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(width: 4),
            Text(
              LanguageService.getLanguageName(currentLanguageCode),
              style: AppTextStyles.descriptionSmall.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.primary,
              size: 16,
            ),
          ],
        ),
      ),
      onSelected: (String languageCode) {
        final locale = Locale(languageCode);
        Provider.of<LocaleProvider>(context, listen: false).setLocale(locale);
      },
      itemBuilder: (BuildContext context) {
        return LanguageService.supportedLocales.map((Locale locale) {
          final isSelected = locale.languageCode == currentLanguageCode;
          return PopupMenuItem<String>(
            value: locale.languageCode,
            child: Row(
              children: [
                Text(
                  LanguageService.getLanguageFlag(locale.languageCode),
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 8),
                Text(
                  LanguageService.getLanguageName(locale.languageCode),
                  style: AppTextStyles.descriptionMedium.copyWith(
                    color: isSelected ? AppColors.accent : AppColors.primary,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                if (isSelected) ...[
                  const Spacer(),
                  const Icon(Icons.check, color: AppColors.accent, size: 16),
                ],
              ],
            ),
          );
        }).toList();
      },
    );
  }

  Widget _buildLogoTitle() {
    return Container(
      height: 40,
      child: SvgPicture.asset(
        'assets/svg/tradex-new-logo.svg',
        height: 40,
        colorFilter: const ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppBarFactory {
  static CustomAppBar home({bool showLanguageSwitcher = true}) {
    return CustomAppBar(
      showLogo: true,
      automaticallyImplyLeading: false,
      showLanguageSwitcher: showLanguageSwitcher,
    );
  }

  static CustomAppBar withTitle(
    String title, {
    bool showLanguageSwitcher = false,
    bool automaticallyImplyLeading = true,
  }) {
    return CustomAppBar(
      title: title,
      showLanguageSwitcher: showLanguageSwitcher,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }

  static CustomAppBar withTitleAndActions(
    String title,
    List<Widget> actions, {
    bool showLanguageSwitcher = false,
  }) {
    return CustomAppBar(
      title: title,
      actions: actions,
      showLanguageSwitcher: showLanguageSwitcher,
    );
  }

  static CustomAppBar transparent({bool showLanguageSwitcher = false}) {
    return CustomAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      showLanguageSwitcher: showLanguageSwitcher,
    );
  }
}
