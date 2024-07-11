import 'package:auto_route/auto_route.dart';
import '../../../generated/l10n.dart';
import '../widgets/cruft_button.dart';
import '../widgets/cruft_icon_button.dart';
import '../../core/utils/extensions/extensions.dart';
import '../../core/utils/resources/resources.dart';
import '../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    Images.detail,
                    height: 310.h,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: 50,
                    child: Row(
                      children: [
                        CruftIconButton(
                          onPressed: () {},
                          icon: Icons.arrow_back,
                          color: AppColors.white,
                        ),
                        280.horizontalSpace,
                        CruftIconButton(
                          onPressed: () {},
                          icon: Icons.favorite,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              100.verticalSpace,
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).eventDetailAbout,
                      style: context.textTheme.titleMedium!
                          .copyWith(color: AppColors.black),
                    ),
                    10.verticalSpace,
                    Text(
                      "We have a team but still missing a couple of people",
                      style: context.textTheme.titleSmall!
                          .copyWith(color: AppColors.grey),
                    ),
                    10.verticalSpace,
                    Divider(
                      color: AppColors.grey,
                    ),
                    10.verticalSpace,
                    Text(
                      "Organizers and Attendees",
                      style: context.textTheme.titleMedium!
                          .copyWith(color: AppColors.black),
                    ),
                    7.verticalSpace,
                    Text(
                      "Organizers and Attendees",
                      style: context.textTheme.labelMedium!
                          .copyWith(color: AppColors.grey),
                    ),
                    Text(
                      "Wade Women",
                      style: context.textTheme.labelMedium!
                          .copyWith(color: AppColors.black),
                    ),
                    10.verticalSpace,
                    Divider(
                      color: AppColors.grey,
                    ),
                    10.verticalSpace,
                    Text(
                      S.of(context).homeLocation,
                      style: context.textTheme.titleMedium!
                          .copyWith(color: AppColors.black),
                    ),
                    80.verticalSpace,
                    CruftButton(onPressed: () {}, text: S.of(context).buttonOrder)
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 280,
            right: 50,
            left: 50,
            child: Container(
              padding: REdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10).r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          "Party with friends at nights - 2022",
                          softWrap: true,
                          style: context.textTheme.titleMedium!
                              .copyWith(color: AppColors.black),
                        ),
                      ),
                      Text(
                        "\$30.00",
                        style: context.textTheme.titleMedium!
                            .copyWith(color: AppColors.black),
                      ),
                    ],
                  ),
                  5.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20.h,
                      ),
                      5.horizontalSpace,
                      Text(
                        "Bishkek",
                        style: context.textTheme.bodySmall!
                            .copyWith(color: AppColors.grey),
                      )
                    ],
                  ),
                  5.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 20.h,
                      ),
                      5.horizontalSpace,
                      Text(
                        "THU 26 May, 09:00",
                        style: context.textTheme.bodySmall!
                            .copyWith(color: AppColors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
