import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarFactory.withTitle(
        AppLocalizations.of(context)!.account,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_outline,
              size: 80,
              color: AppColors.mediumGray,
            ),
            const SizedBox(height: 16),
            Text(
              AppLocalizations.of(context)!.account,
              style: AppTextStyles.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.manageAccountSettings,
              style: AppTextStyles.descriptionMedium,
            ),
          ],
        ),
      ),
    );
  }
}
