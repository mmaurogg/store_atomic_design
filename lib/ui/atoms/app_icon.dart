import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;

  const AppIcon(this.icon, {super.key, this.size = 24, this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, size: size, color: color ?? AppColors.textPrimary);
  }
}
