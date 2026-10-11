import 'package:flutter/material.dart';

class AppColors {
  // --- DARK MODE (Deep Ocean) ---
  static const Color bgDarkStart = Color(0xFF090E17);
  static const Color bgDarkEnd = Color(0xFF152035);
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFB0C4DE);
  static const Color textMutedDark = Color(0xFF6A7F98);
  static Color glassBgDark = const Color(0xFFFFFFFF).withValues(alpha: 0.06);
  static Color glassBgSelectedDark =
      const Color(0xFF0091FF).withValues(alpha: 0.15);
  static Color glassBorderDark =
      const Color(0xFFFFFFFF).withValues(alpha: 0.12);
  static Color glassBorderSelectedDark =
      const Color(0xFF00E5FF).withValues(alpha: 0.4);

  // --- LIGHT MODE (Crystal Blue) ---
  static const Color bgLightStart = Color(0xFFE0F2FE);
  static const Color bgLightEnd = Color(0xFFF8FAFC);
  static const Color textPrimaryLight = Color(0xFF0F172A);
  static const Color textSecondaryLight = Color(0xFF475569);
  static const Color textMutedLight = Color(0xFF94A3B8);
  static Color glassBgLight =
      const Color(0xFFFFFFFF).withValues(alpha: 0.45);
  static Color glassBgSelectedLight =
      const Color(0xFF0091FF).withValues(alpha: 0.12);
  static Color glassBorderLight =
      const Color(0xFFFFFFFF).withValues(alpha: 0.6);
  static Color glassBorderSelectedLight =
      const Color(0xFF0091FF).withValues(alpha: 0.5);

  // --- GLOBAL ACCENTS ---
  static const Color dolphinBlue = Color(0xFF0091FF);
  static const Color neonCyan = Color(0xFF00E5FF);
  static const Color activeEmerald = Color(0xFF00E676);
  static const Color warningOrange = Color(0xFFFF9100);

  static Color getBgStart(bool isDark) => isDark ? bgDarkStart : bgLightStart;
  static Color getBgEnd(bool isDark) => isDark ? bgDarkEnd : bgLightEnd;
  static Color getTextPrimary(bool isDark) =>
      isDark ? textPrimaryDark : textPrimaryLight;
  static Color getTextSecondary(bool isDark) =>
      isDark ? textSecondaryDark : textSecondaryLight;
  static Color getTextMuted(bool isDark) =>
      isDark ? textMutedDark : textMutedLight;

  static Color getGlassBg(bool isDark, bool isSelected) {
    if (isDark) {
      return isSelected ? glassBgSelectedDark : glassBgDark;
    } else {
      return isSelected ? glassBgSelectedLight : glassBgLight;
    }
  }

  static Color getGlassBorder(bool isDark, bool isSelected) {
    if (isDark) {
      return isSelected ? glassBorderSelectedDark : glassBorderDark;
    } else {
      return isSelected ? glassBorderSelectedLight : glassBorderLight;
    }
  }
}
