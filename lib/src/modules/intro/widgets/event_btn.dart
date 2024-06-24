import '../../../core/utils/extensions/extensions.dart';
import '../../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final String emoji;
  const EventBtn(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.emoji});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: REdgeInsets.only(bottom: 16),
        padding: REdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 0.6)
        ], color: AppColors.white, borderRadius: BorderRadius.circular(10).r),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(emoji),
            8.horizontalSpace,
            Text(
              text,
              style:
                  context.textTheme.bodySmall!.copyWith(color: AppColors.black),
            )
          ],
        ),
      ),
    );
  }
}
