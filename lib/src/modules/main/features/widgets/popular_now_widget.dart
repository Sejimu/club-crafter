import 'package:auto_route/auto_route.dart';
import '../../../../core/config/routes/app_routes.gr.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const double _paddingSmall = 10;
const double _paddingMedium = 20;

class PopularNowWidget extends StatelessWidget {
  const PopularNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _goToEventDetail(context),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(_paddingSmall).r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Images.popular,
              width: 300.w,
              height: 180,
              fit: BoxFit.fill,
            ),
            _paddingMedium.verticalSpace,
            Padding(
              padding: REdgeInsets.all(_paddingMedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Going to a Rock Concert",
                    style: context.textTheme.titleMedium!
                        .copyWith(color: AppColors.black),
                  ),
                  _paddingSmall.verticalSpace,
                  Text(
                    "THU 26 May, 09:00 - FRI 27 May, 10:00",
                    style: context.textTheme.bodySmall!
                        .copyWith(color: AppColors.black),
                  ),
                  _paddingSmall.verticalSpace,
                  Row(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5).r,
                            color: AppColors.hotPink.withOpacity(0.1)),
                        child: Padding(
                          padding: REdgeInsets.symmetric(
                              horizontal: 8, vertical: 4.5),
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
              ),
            )
          ],
        ),
      ),
    );
  }

  void _goToEventDetail(BuildContext context) =>
      context.pushRoute(const EventDetailRoute());
}
