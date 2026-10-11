import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/jadwal/domain/jadwal_model.dart';
import 'package:gmit_jemaat_kemah_airnona_app/features/jadwal/presentation/jadwal_provider.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/theme/app_colors.dart';

const _dayNames = [
  'Minggu',
  'Senin',
  'Selasa',
  'Rabu',
  'Kamis',
  'Jumat',
  'Sabtu',
];

const _monthNames = [
  '',
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'Mei',
  'Jun',
  'Jul',
  'Agt',
  'Sep',
  'Okt',
  'Nov',
  'Des',
];

String _formatDate(String date) {
  final parts = date.split('-');
  if (parts.length != 3) return date;
  final m = int.tryParse(parts[1]) ?? 0;
  return '${int.parse(parts[2])} ${_monthNames[m]} ${parts[0]}';
}

String _formatTimeRange(String? start, String? end) {
  if (start == null) return '-';
  final s = start.substring(0, 5);
  if (end == null) return s;
  return '$s - ${end.substring(0, 5)}';
}

Future<void> _launchUrl(String url) async {
  final uri = Uri.tryParse(url);
  if (uri == null) return;
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}

void _openUpcomingDetail(BuildContext context, UpcomingSchedule item) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) =>
        _ScheduleDetailSheet(child: _UpcomingDetailBody(item: item)),
  );
}

void _openWeeklyDetail(BuildContext context, WeeklySchedule item) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) =>
        _ScheduleDetailSheet(child: _WeeklyDetailBody(item: item)),
  );
}

class JadwalScreen extends ConsumerWidget {
  const JadwalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weekly = ref.watch(weeklySchedulesProvider);
    final upcoming = ref.watch(upcomingSchedulesProvider);

    return SafeArea(
      child: RefreshIndicator(
        color: AppColors.accent,
        backgroundColor: AppColors.bgMid,
        onRefresh: () async {
          ref.invalidate(weeklySchedulesProvider);
          ref.invalidate(upcomingSchedulesProvider);
          await Future.wait([
            ref.read(weeklySchedulesProvider.future),
            ref.read(upcomingSchedulesProvider.future),
          ]);
        },
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const Text(
              'Jadwal Ibadah',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Jadwal rutin & ibadah mendatang',
              style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
            ),
            const SizedBox(height: 24),
            const _SectionTitle(title: 'Jadwal Mendatang'),
            const SizedBox(height: 12),
            upcoming.when(
              loading: () => const _LoadingBox(),
              error: (err, _) => _ErrorBox(
                message: err.toString().replaceFirst(RegExp(r'^.*?\): '), ''),
                onRetry: () => ref.invalidate(upcomingSchedulesProvider),
              ),
              data: (items) => items.isEmpty
                  ? const _EmptyBox(
                      message: 'Belum ada jadwal ibadah mendatang',
                    )
                  : Column(
                      children: items
                          .map(
                            (item) => Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: _UpcomingCard(item: item),
                            ),
                          )
                          .toList(),
                    ),
            ),
            const SizedBox(height: 28),
            const _SectionTitle(title: 'Jadwal Rutin Mingguan'),
            const SizedBox(height: 12),
            weekly.when(
              loading: () => const _LoadingBox(),
              error: (err, _) => _ErrorBox(
                message: err.toString().replaceFirst(RegExp(r'^.*?\): '), ''),
                onRetry: () => ref.invalidate(weeklySchedulesProvider),
              ),
              data: (items) => items.isEmpty
                  ? const _EmptyBox(message: 'Belum ada jadwal rutin mingguan')
                  : Column(
                      children: items
                          .map(
                            (item) => Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: _WeeklyCard(item: item),
                            ),
                          )
                          .toList(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.textPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _UpcomingCard extends StatelessWidget {
  final UpcomingSchedule item;

  const _UpcomingCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => _openUpcomingDetail(context, item),
            splashColor: AppColors.accent.withValues(alpha: 0.08),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.glassBackground,
                borderRadius: BorderRadius.circular(16),
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
                          gradient: AppColors.purpleGradient,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.calendar_month_rounded,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: const TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 2),
                            if (item.worshipTypeName != null)
                              Text(
                                item.worshipTypeName!,
                                style: const TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 12,
                                ),
                              ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right_rounded,
                        color: AppColors.textSecondary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 14,
                    runSpacing: 6,
                    children: [
                      _InfoChip(
                        icon: Icons.calendar_today_outlined,
                        label: _formatDate(item.date),
                      ),
                      if (item.startTime != null)
                        _InfoChip(
                          icon: Icons.access_time_rounded,
                          label: item.startTime!.substring(0, 5),
                        ),
                      if (item.location != null)
                        _InfoChip(
                          icon: Icons.location_on_outlined,
                          label: item.location!,
                        ),
                      if (item.sectorName != null)
                        _InfoChip(
                          icon: Icons.groups_outlined,
                          label: item.sectorName!,
                        ),
                    ],
                  ),
                  if (item.theme != null) ...[
                    const SizedBox(height: 10),
                    Text(
                      'Tema: ${item.theme}',
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                  if (item.pastors.isNotEmpty) ...[
                    const SizedBox(height: 6),
                    Text(
                      'Pelayan: ${item.pastors.join(', ')}',
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _WeeklyCard extends StatelessWidget {
  final WeeklySchedule item;

  const _WeeklyCard({required this.item});

  @override
  Widget build(BuildContext context) {
    final dayLabel = (item.dayOfWeek >= 0 && item.dayOfWeek <= 6)
        ? _dayNames[item.dayOfWeek]
        : '-';

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => _openWeeklyDetail(context, item),
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
                  Container(
                    width: 48,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: AppColors.purpleGradient,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      dayLabel.substring(0, 3),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Wrap(
                          spacing: 12,
                          runSpacing: 4,
                          children: [
                            _InfoChip(
                              icon: Icons.event_repeat_rounded,
                              label: 'Setiap $dayLabel',
                            ),
                            if (item.startTime != null)
                              _InfoChip(
                                icon: Icons.access_time_rounded,
                                label: item.startTime!.substring(0, 5),
                              ),
                            if (item.location != null)
                              _InfoChip(
                                icon: Icons.location_on_outlined,
                                label: item.location!,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 12, color: AppColors.accent),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
        ),
      ],
    );
  }
}

class _LoadingBox extends StatelessWidget {
  const _LoadingBox();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Center(child: CircularProgressIndicator(color: AppColors.accent)),
    );
  }
}

class _EmptyBox extends StatelessWidget {
  final String message;

  const _EmptyBox({required this.message});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.glassBackground,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.glassBorder),
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}

class _ScheduleDetailSheet extends StatelessWidget {
  final Widget child;

  const _ScheduleDetailSheet({required this.child});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      minChildSize: 0.3,
      maxChildSize: 0.92,
      expand: false,
      builder: (context, scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: Container(
              decoration: const BoxDecoration(
                gradient: AppColors.backgroundGradient,
                border: Border(top: BorderSide(color: AppColors.glassBorder)),
              ),
              child: SafeArea(
                top: false,
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          height: 4,
                          margin: const EdgeInsets.only(bottom: 18),
                          decoration: BoxDecoration(
                            color: AppColors.glassBorder,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      child,
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _UpcomingDetailBody extends StatelessWidget {
  final UpcomingSchedule item;

  const _UpcomingDetailBody({required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                gradient: AppColors.purpleGradient,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.calendar_month_rounded,
                color: Colors.white,
                size: 26,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (item.worshipTypeName != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      item.worshipTypeName!,
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 22),
        _DetailRow(
          icon: Icons.calendar_today_outlined,
          label: 'Tanggal',
          value: _formatDate(item.date),
        ),
        _DetailRow(
          icon: Icons.access_time_rounded,
          label: 'Waktu',
          value: _formatTimeRange(item.startTime, item.endTime),
        ),
        if (item.location != null)
          _DetailRow(
            icon: Icons.location_on_outlined,
            label: 'Lokasi',
            value: item.location!,
          ),
        if (item.address != null)
          _DetailRow(
            icon: Icons.map_outlined,
            label: 'Alamat',
            value: item.address!,
          ),
        if (item.sectorName != null)
          _DetailRow(
            icon: Icons.groups_outlined,
            label: 'Sektor',
            value: item.sectorName!,
          ),
        if (item.theme != null)
          _DetailRow(
            icon: Icons.format_quote_rounded,
            label: 'Tema',
            value: item.theme!,
          ),
        if (item.scriptureReading != null)
          _DetailRow(
            icon: Icons.auto_stories_rounded,
            label: 'Bacaan',
            value: item.scriptureReading!,
          ),
        if (item.sermon != null)
          _DetailRow(
            icon: Icons.campaign_outlined,
            label: 'Firman',
            value: item.sermon!,
          ),
        if (item.pastors.isNotEmpty)
          _DetailRow(
            icon: Icons.person_outline_rounded,
            label: 'Pelayan',
            value: item.pastors.join(', '),
          ),
        if (item.googleMapsLink != null) ...[
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () => _launchUrl(item.googleMapsLink!),
              icon: const Icon(Icons.map_rounded, size: 18),
              label: const Text('Buka di Google Maps'),
            ),
          ),
        ],
        if (item.liturgiFileUrl != null) ...[
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
                context.push(
                  '/liturgi/pdf',
                  extra: {
                    'url': item.liturgiFileUrl!,
                    'name': item.liturgiFileName ?? 'Tata Ibadah',
                  },
                );
              },
              icon: const Icon(Icons.menu_book_rounded, size: 18),
              label: const Text('Lihat Tata Ibadah'),
            ),
          ),
        ],
      ],
    );
  }
}

class _WeeklyDetailBody extends StatelessWidget {
  final WeeklySchedule item;

  const _WeeklyDetailBody({required this.item});

  @override
  Widget build(BuildContext context) {
    final dayLabel = (item.dayOfWeek >= 0 && item.dayOfWeek <= 6)
        ? _dayNames[item.dayOfWeek]
        : '-';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 52,
              height: 52,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: AppColors.purpleGradient,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                dayLabel.substring(0, 3),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (item.worshipTypeName != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      item.worshipTypeName!,
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 22),
        _DetailRow(
          icon: Icons.event_repeat_rounded,
          label: 'Hari',
          value: 'Setiap $dayLabel',
        ),
        _DetailRow(
          icon: Icons.access_time_rounded,
          label: 'Waktu',
          value: _formatTimeRange(item.startTime, item.endTime),
        ),
        if (item.location != null)
          _DetailRow(
            icon: Icons.location_on_outlined,
            label: 'Lokasi',
            value: item.location!,
          ),
      ],
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: AppColors.glassBackground,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.glassBorder),
            ),
            child: Icon(icon, size: 14, color: AppColors.accent),
          ),
          const SizedBox(width: 10),
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
                    fontSize: 14,
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

class _ErrorBox extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorBox({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.glassBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.glassBorder),
      ),
      child: Column(
        children: [
          const Icon(
            Icons.wifi_off_rounded,
            color: AppColors.textSecondary,
            size: 36,
          ),
          const SizedBox(height: 8),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton.icon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh_rounded, size: 16),
            label: const Text('Coba lagi'),
          ),
        ],
      ),
    );
  }
}
