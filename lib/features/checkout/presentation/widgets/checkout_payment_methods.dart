import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../l10n/app_localizations.dart';

class CheckoutPaymentMethods extends StatelessWidget {
  final String selectedMethod;
  final Function(String) onMethodSelected;

  const CheckoutPaymentMethods({
    super.key,
    required this.selectedMethod,
    required this.onMethodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.payment, color: AppColors.accent, size: 20),
                const SizedBox(width: 8),
                Text(
                  AppLocalizations.of(context)!.paymentMethod,
                  style: AppTextStyles.titleLarge.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            _buildPaymentOption(
              value: 'cash',
              title: AppLocalizations.of(context)!.cashOnDelivery,
              subtitle: AppLocalizations.of(context)!.payWhenReceive,
              icon: Icons.money,
              isSelected: selectedMethod == 'cash',
            ),
            const SizedBox(height: 12),

            _buildPaymentOption(
              value: 'card',
              title: AppLocalizations.of(context)!.creditCard,
              subtitle: AppLocalizations.of(context)!.paySecurelyWithCard,
              icon: Icons.credit_card,
              isSelected: selectedMethod == 'card',
            ),
            const SizedBox(height: 12),

            _buildPaymentOption(
              value: 'bank',
              title: AppLocalizations.of(context)!.bankTransfer,
              subtitle: AppLocalizations.of(context)!.transferDirectly,
              icon: Icons.account_balance,
              isSelected: selectedMethod == 'bank',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOption({
    required String value,
    required String title,
    required String subtitle,
    required IconData icon,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () => onMethodSelected(value),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.accent.withOpacity(0.1)
              : AppColors.lightGray.withOpacity(0.3),
          border: Border.all(
            color: isSelected ? AppColors.accent : AppColors.lightGray,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.accent : AppColors.lightGray,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(
                icon,
                color: isSelected ? AppColors.whiteText : AppColors.mediumGray,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.subtitleMedium.copyWith(
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isSelected ? AppColors.accent : AppColors.darkGray,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: AppTextStyles.descriptionSmall.copyWith(
                      color: AppColors.mediumGray,
                    ),
                  ),
                ],
              ),
            ),
            Radio<String>(
              value: value,
              groupValue: selectedMethod,
              onChanged: (value) => onMethodSelected(value!),
              activeColor: AppColors.accent,
            ),
          ],
        ),
      ),
    );
  }
}
