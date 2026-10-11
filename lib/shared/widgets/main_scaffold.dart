import 'package:flutter/material.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/widgets/ambient_background.dart';
import 'package:gmit_jemaat_kemah_airnona_app/shared/widgets/bottom_nav.dart';

// MainScaffold = layout.tsx di Next.js
// Dia wrapper yang hidup terus, tidak rebuild waktu pindah tab
// child = konten screen yang aktif (kayak <Outlet /> atau {children})
class MainScaffold extends StatelessWidget {
  final Widget child;

  const MainScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // extendBody lets the content flow under the floating bottom nav, and
    // moving the gradient to a Scaffold-level background (instead of only
    // painting it inside `body`) means the nav's rounded top corners reveal
    // the same gradient instead of the flat (near-black) scaffold color.
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: AmbientBackground(child: child),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
 