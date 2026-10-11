import 'package:flutter/material.dart';

class AppColors {
  static const Color bgStart = Color(0xFF0F0C29);
  static const Color bgMid = Color(0xFF302B63);
  static const Color bgEnd = Color(0xFF24243E);
  static const Color accent = Color(0xFF00D4FF);
  static const Color accentEnd = Color(0xFF0070FF);
  static const Color glassBackground = Color(0x1AFFFFFF);
  static const Color glassBorder = Color(0x33FFFFFF);
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Color(0xB3FFFFFF);
  static const Color errorColor = Color(0xFFFF6B6B);

  // Secondary accents used per-feature so every icon chip isn't the same cyan.
  static const Color purple = Color(0xFFA78BFA);
  static const Color purpleEnd = Color(0xFF7C3AED);
  static const Color orange = Color(0xFFFFB86B);
  static const Color orangeEnd = Color(0xFFFF7A45);
  static const Color green = Color(0xFF6EE7B7);
  static const Color greenEnd = Color(0xFF10B981);
  static const Color pink = Color(0xFFFF8AC2);
  static const Color pinkEnd = Color(0xFFEC4899);

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [bgStart, bgMid, bgEnd],
  );

  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [accent, accentEnd],
  );

  static const LinearGradient purpleGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [purple, purpleEnd],
  );

  static const LinearGradient orangeGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [orange, orangeEnd],
  );

  static const LinearGradient greenGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [green, greenEnd],
  );

  static const LinearGradient pinkGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [pink, pinkEnd],
  );

  // Soft drop shadow for glass cards — gives depth instead of flat borders only.
  static List<BoxShadow> cardShadow = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.25),
      blurRadius: 20,
      offset: const Offset(0, 8),
    ),
  ];

  static List<BoxShadow> glowShadow(Color color) => [
        BoxShadow(
          color: color.withValues(alpha: 0.35),
          blurRadius: 16,
          offset: const Offset(0, 6),
        ),
      ];
}
