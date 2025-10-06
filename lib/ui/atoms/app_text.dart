import 'package:flutter/material.dart';
import '../../core/app_typography.dart';
import '../../core/app_colors.dart';

enum AppTextType {
  title,
  titleHighlight,
  titleSmall,
  titleSmallHighlight,
  body,
}

class AppText extends StatelessWidget {
  final String text;
  final AppTextType type;
  final Color? color;
  final TextAlign? align;

  const AppText(
    this.text, {
    super.key,
    this.type = AppTextType.body,
    this.color,
    this.align,
  });

  TextStyle _getStyle() {
    switch (type) {
      case AppTextType.title:
        return AppTypography.titleStyle.copyWith(
          color: color ?? AppColors.textPrimary,
        );
      case AppTextType.titleSmall:
        return AppTypography.titleSmallStyle.copyWith(
          color: color ?? AppColors.textSecondary,
        );
      case AppTextType.titleHighlight:
        return AppTypography.titleHighlightStyle.copyWith(
          color: color ?? AppColors.textPrimary,
        );
      case AppTextType.titleSmallHighlight:
        return AppTypography.titleSmallHighlightStyle.copyWith(
          color: color ?? AppColors.textSecondary,
        );
      default:
        return AppTypography.body.copyWith(
          color: color ?? AppColors.textPrimary,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(text, style: _getStyle(), textAlign: align);
  }
}
