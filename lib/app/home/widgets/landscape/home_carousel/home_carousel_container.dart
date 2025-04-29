import 'dart:ui';

import 'package:anikki/core/core.dart';
import 'package:flutter/material.dart';

class HomeCarouselContainer extends StatelessWidget {
  const HomeCarouselContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  BorderSide _getBorder(BuildContext context) => BorderSide(
        color: context.colorScheme.outline.withValues(alpha: 0.1),
      );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(8.0),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                context.colorScheme.surface.withValues(alpha: 0.3),
                context.colorScheme.surface.withValues(alpha: 0.2),
              ],
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
            ),
            border: Border(
              top: _getBorder(context),
              left: _getBorder(context),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
