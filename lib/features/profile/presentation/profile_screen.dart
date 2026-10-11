import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/auth/presentation/auth_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/core/notifications/fcm_service.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/profile/domain/profile_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/profile/presentation/profile_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/theme/app_colors.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/widgets/custom_button.dart';

const _monthNames = [
  '', 'Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun',
  'Jul', 'Agt', 'Sep', 'Okt', 'Nov', 'Des',
];

String _formatDate(String? date) {
  if (date == null) return '-';
  final parts = date.split('-');
  if (parts.length != 3) return date;
  final m = int.tryParse(parts[1]) ?? 0;
  return '${int.parse(parts[2])} ${_monthNames[m]} ${parts[0]}';
}

String _genderLabel(String? gender) {
  switch (gender) {
    case 'MALE':
      return 'Laki-laki';
    case 'FEMALE':
      return 'Perempuan';
    default:
      return '-';
  }
}

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).asData?.value;
    final profileAsync = ref.watch(myProfileProvider);

    return SafeArea(
      child: RefreshIndicator(
        color: AppColors.accent,
        backgroundColor: AppColors.bgMid,
        onRefresh: () => ref.refresh(myProfileProvider.future),
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const SizedBox(height: 8),
            const Text(
              'Profil',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: AppColors.accentGradient,
                    ),
                    child: Center(
                      child: Text(
                        user?.name.isNotEmpty == true
                            ? user!.name[0].toUpperCase()
                            : '?',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    user?.name ?? '-',
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  if (user?.role != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        gradient: AppColors.accentGradient,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        (user!.roleLabel ?? user.role).toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            _GlassCard(
              children: [
                _InfoTile(
                  icon: Icons.person_outline_rounded,
                  label: 'Nama',
                  value: user?.name ?? '-',
                ),
                _divider(),
                _InfoTile(
                  icon: Icons.email_outlined,
                  label: 'Email',
                  value: user?.email ?? '-',
                ),
                _divider(),
                _InfoTile(
                  icon: Icons.badge_outlined,
                  label: 'Role',
                  value: profileAsync.whenOrNull(data: (p) => p.account.roleLabel) ??
                      user?.roleLabel ??
                      user?.role ??
                      '-',
                ),
                profileAsync.whenOrNull(
                      data: (p) => p.account.whatsappNumber,
                    ) !=
                    null
                    ? Column(
                        children: [
                          _divider(),
                          _InfoTile(
                            icon: Icons.phone_outlined,
                            label: 'WhatsApp',
                            value: profileAsync.value!.account.whatsappNumber!,
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
              ],
            ),
            const SizedBox(height: 16),
            profileAsync.when(
              loading: () => const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator(color: AppColors.accent)),
              ),
              error: (_, _) => const SizedBox.shrink(),
              data: (p) {
                final member = p.member;
                if (member == null) return const SizedBox.shrink();
                return _MemberIdentityCard(member: member);
              },
            ),
            const SizedBox(height: 16),
            _NavTile(
              icon: Icons.family_restroom_rounded,
              label: 'Keluarga Saya',
              onTap: () => context.push('/keluarga'),
            ),
            const SizedBox(height: 28),
            CustomButton(
              label: 'Keluar',
              onPressed: () async {
                await ref.read(fcmTokenSyncProvider.notifier).unregister();
                await ref.read(authProvider.notifier).logout();
                if (context.mounted) context.go('/login');
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _divider() => Divider(
        height: 1,
        color: AppColors.glassBorder,
        indent: 56,
      );
}

class _MemberIdentityCard extends StatelessWidget {
  final ProfileMember member;

  const _MemberIdentityCard({required this.member});

  @override
  Widget build(BuildContext context) {
    return _GlassCard(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 14, 20, 0),
          child: Text(
            'Identitas Jemaat',
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 11,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.6,
            ),
          ),
        ),
        _InfoTile(icon: Icons.wc_rounded, label: 'Jenis Kelamin', value: _genderLabel(member.gender)),
        Divider(height: 1, color: AppColors.glassBorder, indent: 56),
        _InfoTile(
          icon: Icons.cake_outlined,
          label: 'Tanggal Lahir',
          value:
              '${_formatDate(member.birthDate)}${member.birthPlace != null ? ', ${member.birthPlace}' : ''}',
        ),
        if (member.education != null) ...[
          Divider(height: 1, color: AppColors.glassBorder, indent: 56),
          _InfoTile(icon: Icons.school_outlined, label: 'Pendidikan', value: member.education!),
        ],
        if (member.occupationName != null) ...[
          Divider(height: 1, color: AppColors.glassBorder, indent: 56),
          _InfoTile(icon: Icons.work_outline_rounded, label: 'Pekerjaan', value: member.occupationName!),
        ],
        if (member.currentAddress != null) ...[
          Divider(height: 1, color: AppColors.glassBorder, indent: 56),
          _InfoTile(icon: Icons.location_on_outlined, label: 'Alamat', value: member.currentAddress!),
        ],
        const SizedBox(height: 4),
      ],
    );
  }
}

class _GlassCard extends StatelessWidget {
  final List<Widget> children;

  const _GlassCard({required this.children});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.glassBackground,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.glassBorder),
            boxShadow: AppColors.cardShadow,
          ),
          child: Column(children: children),
        ),
      ),
    );
  }
}

class _NavTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _NavTile({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: AppColors.glassBackground,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.glassBorder),
                boxShadow: AppColors.cardShadow,
              ),
              child: Row(
                children: [
                  Icon(icon, color: AppColors.accent, size: 22),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      label,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Icon(Icons.chevron_right_rounded, color: AppColors.textSecondary),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Row(
        children: [
          Icon(icon, color: AppColors.accent, size: 22),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
