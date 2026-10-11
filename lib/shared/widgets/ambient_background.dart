import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/theme/app_colors.dart';

// Full-bleed gradient + a couple of soft blurred color blobs behind the
// content, so screens read as atmospheric instead of a flat two-tone fill.
class AmbientBackground extends StatelessWidget {
  final Widget child;

  const AmbientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Stack(
        children: [
          Positioned(
            top: -80,
            right: -60,
            child: _blob(220, AppColors.accentEnd.withValues(alpha: 0.35)),
          ),
          Positioned(
            bottom: -60,
            left: -80,
            child: _blob(260, AppColors.purpleEnd.withValues(alpha: 0.28)),
          ),
          child,
        ],
      ),
    );
  }

  Widget _blob(double size, Color color) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
