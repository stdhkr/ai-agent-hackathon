import 'package:flutter/material.dart';
import 'package:goronyan/core/constants/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 0.5,
      color: AppColors.subColor,
      height: 0,
      indent: 16,
      endIndent: 16,
    );
  }
}
