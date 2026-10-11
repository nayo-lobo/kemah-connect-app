import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';


extension CacheForExtension on Ref{
  void cacheFor(Duration duration) {
    final timer = Timer(duration, invalidateSelf);
    onDispose(timer.cancel);
  }
}