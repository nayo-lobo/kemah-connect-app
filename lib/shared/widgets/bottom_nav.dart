import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/theme/app_colors.dart';



// Definisi tiap tab — label, icon, dan route-nya
// Ini kayak array menu di navbar React kamu
const _tabs = [
  (label: 'Beranda', icon: Icons.home_outlined, activeIcon: Icons.home_rounded, route: '/dashboard'),
  (label: 'Jadwal', icon: Icons.calendar_month_outlined, activeIcon: Icons.calendar_month_rounded, route: '/jadwal'),
  (label: 'Warta', icon: Icons.newspaper_outlined, activeIcon: Icons.newspaper_rounded, route: '/warta'),
  (label: 'Liturgi', icon: Icons.menu_book_outlined, activeIcon: Icons.menu_book_rounded, route: '/liturgi'),
  (label: 'Profil', icon: Icons.person_outline_rounded, activeIcon: Icons.person_rounded, route: '/profile'),
];



class BottomNav extends StatelessWidget {
  const BottomNav({super.key});


  // Detect tab mana yang aktif berdasarkan current route
  // Sama kayak usePathname() di Next.js
  int _currentIndex(String location) {
    for (int i = 0; i < _tabs.length; i++) {
      if (location.startsWith(_tabs[i].route)) return i;
    }
    return 0;
  }
  @override
  Widget build(BuildContext context) {
    // GoRouterState.of(context).uri.toString() = kayak usePathname()
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _currentIndex(location);

    // ClipRRect + BackdropFilter = glassmorphism effect
    // Sama kayak div dengan backdrop-filter: blur() di CSS
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.glassBackground,
            border: Border(
              top: BorderSide(color: AppColors.glassBorder, width: 0.5),
            ),
          ),
          child: SafeArea(
            top: false,
            child: SizedBox(
              height: 64,
              child: Row(
                children: List.generate(_tabs.length, (i) {
                  final tab = _tabs[i];
                  final isActive = i == currentIndex;

                  // Tiap tab item
                  return Expanded(
                    child: InkWell(
                      onTap: () => context.go(tab.route),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Pill highlight tumbuh di belakang icon saat aktif
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 220),
                            curve: Curves.easeOut,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              gradient: isActive ? AppColors.accentGradient : null,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(
                              isActive ? tab.activeIcon : tab.icon,
                              color: isActive
                                  ? Colors.white
                                  : AppColors.textSecondary,
                              size: 22,
                            ),
                          ),
                          const SizedBox(height: 4),
                          // Label
                          Text(
                            tab.label,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: isActive
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                              color: isActive
                                  ? AppColors.accent
                                  : AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
