import 'package:clubcrafter/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CIconButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        icon: Icon(
          Icons.sort_sharp,
          color: AppColors.black,
          size: 25.h,
        ));
  }
}
