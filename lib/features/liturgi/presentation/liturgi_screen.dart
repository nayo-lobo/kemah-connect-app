import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/domain/liturgi_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/liturgi/presentation/liturgi_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/theme/app_colors.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/widgets/scrollable_center.dart';

class LiturgiScreen extends ConsumerWidget {
  const LiturgiScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(liturgiListProvider);

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tata Ibadah',
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Liturgi & urutan ibadah',
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () => ref.invalidate(liturgiListProvider),
                  icon: const Icon(Icons.refresh_rounded, color: AppColors.accent),
                  tooltip: 'Refresh',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: RefreshIndicator(
              color: AppColors.accent,
              backgroundColor: AppColors.bgMid,
              onRefresh: () => ref.refresh(liturgiListProvider.future),
              child: asyncData.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(color: AppColors.accent),
                ),
                error: (err, _) => _ErrorView(
                  message: err.toString().replaceFirst(RegExp(r'^.*?\): '), ''),
                  onRetry: () => ref.invalidate(liturgiListProvider),
                ),
                data: (items) => items.isEmpty
                    ? const _EmptyView()
                    : _LiturgiList(items: items),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LiturgiList extends StatelessWidget {
  final List<Liturgi> items;

  const _LiturgiList({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      itemCount: items.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, i) => _LiturgiCard(item: items[i]),
    );
  }
}

class _LiturgiCard extends StatelessWidget {
  final Liturgi item;

  const _LiturgiCard({required this.item});

  @override
  Widget build(BuildContext context) {
    final hasSchedule = item.scheduleDate != null;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => context.push(
              '/liturgi/pdf',
              extra: {'url': item.fileUrl, 'name': item.fileName},
            ),
            splashColor: AppColors.accent.withValues(alpha: 0.08),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.glassBackground,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.glassBorder),
                boxShadow: AppColors.cardShadow,
              ),
              child: Row(
                children: [
                  // PDF icon
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      gradient: AppColors.greenGradient,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.picture_as_pdf_rounded,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  const SizedBox(width: 14),
                  // Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Judul jadwal / nama file
                        Text(
                          hasSchedule
                              ? '${item.worshipTypeName ?? 'Ibadah'} – ${item.scheduleTitle ?? ''}'
                              : item.fileName,
                          style: const TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        // Tanggal & waktu
                        if (hasSchedule)
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_today_outlined,
                                size: 12,
                                color: AppColors.accent,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                _formatDate(item.scheduleDate),
                                style: const TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 12,
                                ),
                              ),
                              if (item.startTime != null) ...[
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.access_time_rounded,
                                  size: 12,
                                  color: AppColors.accent,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  item.startTime!.substring(0, 5),
                                  style: const TextStyle(
                                    color: AppColors.textSecondary,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        const SizedBox(height: 4),
                        // Ukuran file
                        Text(
                          _formatSize(item.fileSizeBytes),
                          style: const TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.chevron_right_rounded,
                    color: AppColors.textSecondary,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _formatDate(String? date) {
    if (date == null) return '-';
    final parts = date.split('-');
    if (parts.length != 3) return date;
    const months = [
      '', 'Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun',
      'Jul', 'Agt', 'Sep', 'Okt', 'Nov', 'Des',
    ];
    final m = int.tryParse(parts[1]) ?? 0;
    return '${int.parse(parts[2])} ${months[m]} ${parts[0]}';
  }

  String _formatSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return const ScrollableCenter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.menu_book_outlined, color: AppColors.textSecondary, size: 56),
          SizedBox(height: 16),
          Text(
            'Belum ada liturgi tersedia',
            style: TextStyle(color: AppColors.textSecondary, fontSize: 15),
          ),
          SizedBox(height: 4),
          Text(
            'Tarik ke bawah untuk muat ulang',
            style: TextStyle(color: AppColors.textSecondary, fontSize: 12),
          ),
        ],
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
            const Icon(
              Icons.wifi_off_rounded,
              color: AppColors.textSecondary,
              size: 56,
            ),
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
