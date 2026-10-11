import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/theme/app_colors.dart';

class LiturgiPdfScreen extends StatefulWidget {
  final String fileUrl;
  final String fileName;

  const LiturgiPdfScreen({
    super.key,
    required this.fileUrl,
    required this.fileName,
  });

  @override
  State<LiturgiPdfScreen> createState() => _LiturgiPdfScreenState();
}

class _LiturgiPdfScreenState extends State<LiturgiPdfScreen> {
  final PdfViewerController _controller = PdfViewerController();
  int _currentPage = 1;
  int _totalPages = 0;
  String? _error;
  bool _loading = true;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F0C29),
        foregroundColor: Colors.white,
        title: Text(
          widget.fileName,
          style: const TextStyle(fontSize: 14),
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          if (_totalPages > 0)
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Center(
                child: Text(
                  '$_currentPage / $_totalPages',
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
        ],
      ),
      body: Stack(
        children: [
          if (_error != null)
            _ErrorView(
              message: _error!,
              onRetry: () => setState(() {
                _error = null;
                _loading = true;
              }),
            )
          else
            SfPdfViewer.network(
              widget.fileUrl,
              controller: _controller,
              canShowScrollHead: false,
              onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                if (mounted) {
                  setState(() {
                    _totalPages = details.document.pages.count;
                    _loading = false;
                  });
                }
              },
              onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
                if (mounted) {
                  setState(() {
                    _error = details.description;
                    _loading = false;
                  });
                }
              },
              onPageChanged: (PdfPageChangedDetails details) {
                if (mounted) {
                  setState(() => _currentPage = details.newPageNumber);
                }
              },
            ),
          // Loading overlay
          if (_loading && _error == null)
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(color: AppColors.accent),
                  SizedBox(height: 16),
                  Text(
                    'Memuat PDF...',
                    style: TextStyle(color: AppColors.textSecondary),
                  ),
                ],
              ),
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.picture_as_pdf_rounded,
              color: AppColors.errorColor,
              size: 56,
            ),
            const SizedBox(height: 16),
            const Text(
              'Gagal memuat PDF',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 13,
              ),
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
