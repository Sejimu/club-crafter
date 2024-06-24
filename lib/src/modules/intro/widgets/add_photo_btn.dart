import '../../../core/config/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPhotoBtn extends StatelessWidget {
  final VoidCallback onPressed;
  const AddPhotoBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: AppColors.hotPink.withOpacity(0.3),
      hoverColor: AppColors.hotPink.withOpacity(0.5),
      overlayColor: WidgetStatePropertyAll(AppColors.hotPink.withOpacity(0.2)),
      hoverDuration: const Duration(microseconds: 50),
      child: Container(
        padding: REdgeInsets.all(30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).r,
            border: Border.all(
              color: AppColors.grey.withOpacity(0.3),
            )),
        child: Container(
          padding: REdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: AppColors.gradientColor)),
          child: const Icon(
            CupertinoIcons.add,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
