import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/families/domain/family_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/families/presentation/family_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/theme/app_colors.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/widgets/ambient_background.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/widgets/scrollable_center.dart';

const _monthNames = [
  '', 'Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun',
  'Jul', 'Agt', 'Sep', 'Okt', 'Nov', 'Des',
];

String _formatDate(String date) {
  final parts = date.split('-');
  if (parts.length != 3) return date;
  final m = int.tryParse(parts[1]) ?? 0;
  return '${int.parse(parts[2])} ${_monthNames[m]} ${parts[0]}';
}

class MyFamilyScreen extends ConsumerWidget {
  const MyFamilyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(myFamilyProvider);

    return Scaffold(
      body: AmbientBackground(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.arrow_back_rounded, color: AppColors.textPrimary),
                      tooltip: 'Kembali',
                    ),
                    const Text(
                      'Keluarga Saya',
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => ref.invalidate(myFamilyProvider),
                      icon: const Icon(Icons.refresh_rounded, color: AppColors.accent),
                      tooltip: 'Refresh',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  color: AppColors.accent,
                  backgroundColor: AppColors.bgMid,
                  onRefresh: () => ref.refresh(myFamilyProvider.future),
                  child: asyncData.when(
                    loading: () => const Center(
                      child: CircularProgressIndicator(color: AppColors.accent),
                    ),
                    error: (err, _) => _ErrorView(
                      message: err.toString().replaceFirst(RegExp(r'^.*?\): '), ''),
                      onRetry: () => ref.invalidate(myFamilyProvider),
                    ),
                    data: (data) => _FamilyContent(data: data),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FamilyContent extends StatelessWidget {
  final FamilyResponse data;

  const _FamilyContent({required this.data});

  @override
  Widget build(BuildContext context) {
    final family = data.family;

    if (family == null) {
      return const ScrollableCenter(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Text(
            'Data keluarga belum tertaut dengan akun ini.',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
          ),
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.glassBackground,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.glassBorder),
                boxShadow: AppColors.cardShadow,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          gradient: AppColors.pinkGradient,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.home_rounded, color: Colors.white),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          family.street,
                          style: const TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _FamilyField(label: 'No. KK', value: family.familyCardNumber ?? '-'),
                  _FamilyField(label: 'Kelurahan', value: family.subDistrict),
                  _FamilyField(
                    label: 'RT / RW',
                    value: '${family.neighborhoodWard} / ${family.hamletWard}',
                  ),
                  _FamilyField(label: 'No. Bangunan', value: '${family.buildingNumber}'),
                  if (family.familyStatus != null)
                    _FamilyField(label: 'Status Keluarga', value: family.familyStatus!),
                  if (family.houseOwnershipStatus != null)
                    _FamilyField(label: 'Status Rumah', value: family.houseOwnershipStatus!),
                  if (family.houseCondition != null)
                    _FamilyField(label: 'Kondisi Rumah', value: family.houseCondition!),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Anggota Keluarga',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        ...data.members.map(
          (m) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _MemberCard(member: m),
          ),
        ),
      ],
    );
  }
}

class _FamilyField extends StatelessWidget {
  final String label;
  final String value;

  const _FamilyField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              label,
              style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MemberCard extends StatelessWidget {
  final FamilyMember member;

  const _MemberCard({required this.member});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: member.isCurrentUser
                ? AppColors.accent.withValues(alpha: 0.12)
                : AppColors.glassBackground,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: member.isCurrentUser ? AppColors.accent : AppColors.glassBorder,
            ),
            boxShadow: AppColors.cardShadow,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.accent.withValues(alpha: 0.2),
                child: Text(
                  member.name.isNotEmpty ? member.name[0].toUpperCase() : '?',
                  style: const TextStyle(color: AppColors.accent, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            member.name,
                            style: const TextStyle(
                              color: AppColors.textPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (member.isCurrentUser)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              gradient: AppColors.accentGradient,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'Anda',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${member.familyStatus} · ${_formatDate(member.birthDate)}',
                      style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return ScrollableCenter(
      child: Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.wifi_off_rounded, color: AppColors.textSecondary, size: 56),
          const SizedBox(height: 16),
          Text(
            message,
            style: const TextStyle(color: AppColors.textSecondary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('Coba lagi'),
          ),
        ],
      ),
      ),
    );
  }
}
