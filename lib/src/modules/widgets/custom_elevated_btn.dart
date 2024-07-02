import '../../core/utils/extensions/extensions.dart';
import '../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class CratButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CratButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CElevatedButton extends CratButton {
  final String text;
  final double? padding;
  const CElevatedButton(
      {super.key, required super.onPressed, required this.text, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10).r,
          gradient: LinearGradient(colors: AppColors.gradientColor)),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              padding: REdgeInsets.symmetric(vertical: padding ?? 16),
              backgroundColor: Colors.transparent,
              elevation: 0),
          child: Text(text, style: context.textTheme.bodyMedium)),
    );
  }
}
