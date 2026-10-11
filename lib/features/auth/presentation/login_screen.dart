import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/theme/app_colors.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/widgets/custom_button.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/widgets/custom_text_field.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen>
    with SingleTickerProviderStateMixin {
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscurePassword = true;
  String? _emailError;
  String? _passwordError;
  late AnimationController _fadeCtrl;
  late Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _fadeCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnim = CurvedAnimation(parent: _fadeCtrl, curve: Curves.easeOut);
    _fadeCtrl.forward();
  }

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    _fadeCtrl.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    final email = _emailCtrl.text.trim();
    final password = _passwordCtrl.text.trim();

    setState(() {
      _emailError = email.isEmpty ? 'Email wajib diisi' : null;
      _passwordError = password.isEmpty ? 'Kata sandi wajib diisi' : null;
    });

    if (_emailError != null || _passwordError != null) return;

    await ref.read(authProvider.notifier).login(email, password);
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    ref.listen(authProvider, (_, next) {
      next.whenOrNull(
        data: (user) {
          if (user != null) context.go('/dashboard');
        },
        error: (err, _) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                err is Exception
                    ? err.toString().replaceFirst(RegExp(r'^.*?\): '), '')
                    : err.toString(),
              ),
              backgroundColor: AppColors.errorColor,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          );
        },
      );
    });

    final isLoading = authState.isLoading;

    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: AppColors.backgroundGradient,
            ),
          ),

          // Decorative blurred circles
          Positioned(
            top: -80,
            right: -60,
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.accent.withValues(alpha: 0.12),
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            left: -80,
            child: Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.accentEnd.withValues(alpha: 0.10),
              ),
            ),
          ),

          // Main content
          SafeArea(
            child: FadeTransition(
              opacity: _fadeAnim,
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 48),

                      // Logo placeholder — ganti dengan Image.asset('assets/images/logo.png')
                      // Container(
                      //   width: 96,
                      //   height: 96,
                      //   decoration: BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     color: AppColors.glassBackground,
                      //     border: Border.all(
                      //       color: AppColors.glassBorder,
                      //       width: 1.5,
                      //     ),
                      //   ),
                      //   child: const Center(
                      //     child: Text(
                      //       'LOGO',
                      //       style: TextStyle(
                      //         color: AppColors.textSecondary,
                      //         fontSize: 13,
                      //         letterSpacing: 1.2,
                      //       ),
                      //     ),
                      //   ),
                      // ),s
                      ClipOval(
                        child: Image.asset(
                          'assets/images/logoKemahAirnona.png',
                          width: 96,
                          height: 96,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        'Jemaat Kemah Airnona',
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4,
                        ),
                      ),

                      const SizedBox(height: 4),

                      const Text(
                        'GMIT',
                        style: TextStyle(
                          color: AppColors.accent,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 3,
                        ),
                      ),

                      const SizedBox(height: 48),

                      // Glass card
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(28, 32, 28, 32),
                            decoration: BoxDecoration(
                              color: AppColors.glassBackground,
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(
                                color: AppColors.glassBorder,
                                width: 1,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                  'Selamat datang',
                                  style: TextStyle(
                                    color: AppColors.textPrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  'Masuk untuk melanjutkan',
                                  style: TextStyle(
                                    color: AppColors.textSecondary,
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(height: 28),
                                CustomTextField(
                                  label: 'Email',
                                  controller: _emailCtrl,
                                  keyboardType: TextInputType.emailAddress,
                                  errorText: _emailError,
                                  onChanged: (_) =>
                                      setState(() => _emailError = null),
                                ),
                                const SizedBox(height: 18),
                                CustomTextField(
                                  label: 'Kata Sandi',
                                  controller: _passwordCtrl,
                                  obscureText: _obscurePassword,
                                  errorText: _passwordError,
                                  onChanged: (_) =>
                                      setState(() => _passwordError = null),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscurePassword
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                      color: AppColors.textSecondary,
                                      size: 20,
                                    ),
                                    onPressed: () => setState(
                                          () =>
                                      _obscurePassword = !_obscurePassword,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: () => context.push('/forgot-password'),
                                    child: const Text(
                                      'Lupa Kata Sandi?',
                                      style: TextStyle(
                                        color: AppColors.accent,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 22),
                                CustomButton(
                                  label: 'Masuk',
                                  onPressed: isLoading ? null : _login,
                                  isLoading: isLoading,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 48),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}