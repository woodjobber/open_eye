import 'package:flutter/material.dart';

class OverScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(context, child, details) {
    if (getPlatform(context) == TargetPlatform.android ||
        getPlatform(context) == TargetPlatform.fuchsia) {
      return GlowingOverscrollIndicator(
        child: child,
        showLeading: false,
        showTrailing: false,
        axisDirection: details.direction,
        color: Theme.of(context).colorScheme.secondary,
      );
    } else {
      return child;
    }
  }
}
