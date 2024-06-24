import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecomWidget extends StatelessWidget {
  const RecomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Image.asset(
            Images.recom,
            width: 85.w,
            height: 70.h,
          ),
          16.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Satellite mega festival - 2023",
                style: context.textTheme.titleSmall!
                    .copyWith(color: AppColors.black),
                softWrap: true,
              ),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20.h,
                      ),
                      Text(
                        "New York",
                        style: context.textTheme.labelMedium!
                            .copyWith(color: AppColors.grey),
                      ),
                    ],
                  ),
                  80.horizontalSpace,
                  DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5).r,
                        color: AppColors.hotPink.withOpacity(0.1)),
                    child: Padding(
                      padding:
                          REdgeInsets.symmetric(horizontal: 8, vertical: 4.5),
                      child: Text(
                        "\$30.00",
                        style: context.textTheme.labelMedium!
                            .copyWith(color: AppColors.hotPink),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
