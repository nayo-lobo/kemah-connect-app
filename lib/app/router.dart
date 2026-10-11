import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/domain/user_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/forgot_password_screen.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/login_screen.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/dashboard/presentation/dashboard_screen.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/families/presentation/my_family_screen.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/jadwal/presentation/jadwal_screen.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/presentation/liturgi_pdf_screen.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/presentation/liturgi_screen.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/profile/presentation/profile_screen.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/warta/presentation/warta_screen.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/widgets/main_scaffold.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  final notifier = _RouterNotifier(ref);
  return GoRouter(
    refreshListenable: notifier,
    redirect: notifier.redirect,
    initialLocation: '/login',
    routes: [
      // Login — di luar shell, tidak punya bottom nav
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),

      // Keluarga Saya — di luar shell, punya AppBar + tombol back sendiri
      GoRoute(
        path: '/keluarga',
        builder: (context, state) => const MyFamilyScreen(),
      ),

      // Shell — semua tab dibungkus MainScaffold (≈ layout.tsx di Next.js)
      ShellRoute(
        builder: (context, state, child) => MainScaffold(child: child),
        routes: [
          GoRoute(
            path: '/dashboard',
            builder: (context, state) => const DashboardScreen(),
          ),
          GoRoute(
            path: '/jadwal',
            builder: (context, state) => const JadwalScreen(),
          ),
          GoRoute(
            path: '/warta',
            builder: (context, state) => const WartaScreen(),
          ),
          GoRoute(
            path: '/liturgi',
            builder: (context, state) => const LiturgiScreen(),
          ),
          GoRoute(
            path: '/liturgi/pdf',
            builder: (context, state) {
              final extra = state.extra as Map<String, String>;
              return LiturgiPdfScreen(
                fileUrl: extra['url']!,
                fileName: extra['name']!,
              );
            },
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
    ],
  );
}

class _RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  _RouterNotifier(this._ref) {
    _ref.listen<AsyncValue<User?>>(authProvider, (_, _) => notifyListeners());
  }

  String? redirect(BuildContext context, GoRouterState state) {
    final authState = _ref.read(authProvider);
    final location = state.matchedLocation;
    final goingToLogin = location == '/login';
    final goingToPublicRoute = goingToLogin || location == '/forgot-password';

    return authState.when(
      loading: () => null,
      error: (_, _) => '/login',
      data: (user) {
        final loggedIn = user != null;
        if (!loggedIn && !goingToPublicRoute) return '/login';
        if (loggedIn && goingToLogin) return '/dashboard';
        return null;
      },
    );
  }
}
