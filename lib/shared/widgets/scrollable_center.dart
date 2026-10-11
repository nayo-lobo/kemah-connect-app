import 'package:flutter/material.dart';

// Centers its child vertically while still being a scrollable, so it can sit
// inside a RefreshIndicator and respond to the pull-to-refresh gesture even
// when there's nothing (or an error) to show yet.
class ScrollableCenter extends StatelessWidget {
  final Widget child;

  const ScrollableCenter({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Center(child: child),
          ),
        );
      },
    );
  }
}
