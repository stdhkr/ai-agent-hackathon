import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    required this.shimmerChild,
    required this.child,
    required this.isLoading,
  });

  final Widget shimmerChild;
  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: shimmerChild,
      );
    } else {
      return child;
    }
  }
}
