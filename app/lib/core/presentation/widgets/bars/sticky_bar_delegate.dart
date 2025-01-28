import 'package:flutter/material.dart';

class StickyBarDelegate extends SliverPersistentHeaderDelegate {
  const StickyBarDelegate({
    required this.child,
    this.color,
  });

  final Color? color;
  final PreferredSizeWidget child;

  @override
  double get minExtent => child.preferredSize.height;

  @override
  double get maxExtent => child.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      height: child.preferredSize.height,
      color: color ?? Theme.of(context).scaffoldBackgroundColor,
      child: child,
    );
  }

  @override
  bool shouldRebuild(StickyBarDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
