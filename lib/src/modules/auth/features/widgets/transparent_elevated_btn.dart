import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TransparentElevatedBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final String text;
  const TransparentElevatedBtn(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10).r,
          border: Border.all(color: AppColors.grey.withOpacity(0.2))),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              padding: REdgeInsets.symmetric(vertical: 16)),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 24.h,
              ),
              10.horizontalSpace,
              Text(
                text,
                style: context.textTheme.bodyMedium!
                    .copyWith(color: AppColors.black),
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
