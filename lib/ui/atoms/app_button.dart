import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

enum AppButtonType { primary, secondary, text }

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final AppButtonType type;
  final bool enabled;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.type = AppButtonType.primary,
    this.enabled = true,
  });

  Color _backgroundColor() {
    switch (type) {
      case AppButtonType.secondary:
        return AppColors.secondary;
      case AppButtonType.text:
        return Colors.transparent;
      default:
        return AppColors.primary;
    }
  }

  Color _textColor() {
    switch (type) {
      case AppButtonType.text:
        return AppColors.primary;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: _backgroundColor(),
        disabledBackgroundColor: Colors.grey[400],
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: type == AppButtonType.text ? 0 : 2,
      ),
      child: Text(label, style: TextStyle(color: _textColor())),
    );
  }
}
