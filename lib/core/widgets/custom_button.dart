import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isEnabled;
  final CustomButtonStyle style;
  final double? width;
  final double? height;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isEnabled = true,
    this.style = CustomButtonStyle.primary,
    this.width,
    this.height,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final isButtonEnabled = isEnabled && !isLoading && onPressed != null;

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isButtonEnabled ? onPressed : null,
        style: _getButtonStyle(),
        child: _buildButtonContent(),
      ),
    );
  }

  ButtonStyle _getButtonStyle() {
    final bgColor = backgroundColor ?? _getBackgroundColor();
    final txtColor = textColor ?? _getTextColor();
    final radius = borderRadius ?? 12.0;
    final btnPadding = padding ?? const EdgeInsets.symmetric(vertical: 8);

    return ElevatedButton.styleFrom(
      backgroundColor: bgColor,
      foregroundColor: txtColor,
      padding: btnPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      elevation: 2,
      disabledBackgroundColor: AppColors.lightGray,
      disabledForegroundColor: AppColors.mediumGray,
    );
  }

  Color _getBackgroundColor() {
    switch (style) {
      case CustomButtonStyle.primary:
        return AppColors.primary;
      case CustomButtonStyle.secondary:
        return AppColors.secondary;
      case CustomButtonStyle.accent:
        return AppColors.accent;
      case CustomButtonStyle.success:
        return AppColors.success;
      case CustomButtonStyle.error:
        return AppColors.error;
      case CustomButtonStyle.outline:
        return Colors.transparent;
    }
  }

  Color _getTextColor() {
    switch (style) {
      case CustomButtonStyle.primary:
        return AppColors.whiteText;
      case CustomButtonStyle.secondary:
        return AppColors.primary;
      case CustomButtonStyle.accent:
        return AppColors.whiteText;
      case CustomButtonStyle.success:
        return AppColors.whiteText;
      case CustomButtonStyle.error:
        return AppColors.whiteText;
      case CustomButtonStyle.outline:
        return AppColors.primary;
    }
  }

  Widget _buildButtonContent() {
    if (isLoading) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.whiteText),
            ),
          ),
          SizedBox(width: 12),
          Text('Loading...', style: AppTextStyles.buttonText),
        ],
      );
    }

    if (icon != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Text(text, style: AppTextStyles.buttonText),
        ],
      );
    }

    return Text(text, style: AppTextStyles.buttonText);
  }
}

enum CustomButtonStyle { primary, secondary, accent, success, error, outline }
