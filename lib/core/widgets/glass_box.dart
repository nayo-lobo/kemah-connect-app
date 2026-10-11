import 'dart:ui';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class GlassBox extends StatelessWidget {
  final Widget child;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool isSelected;
  final double blur;

  const GlassBox({
    super.key,
    required this.child,
    this.borderRadius,
    this.padding,
    this.isSelected = false,
    this.blur = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    final radius = borderRadius ?? BorderRadius.circular(16.0);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ClipRRect(
      borderRadius: radius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: padding,
          decoration: BoxDecoration(
            color: AppColors.getGlassBg(isDark, isSelected),
            borderRadius: radius,
            border: Border.all(
              color: AppColors.getGlassBorder(isDark, isSelected),
              width: isSelected ? 1.5 : 1.0,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
