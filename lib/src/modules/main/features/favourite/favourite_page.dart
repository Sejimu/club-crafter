import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/generated/l10n.dart';
import 'package:clubcrafter/src/core/config/theme/app_text_styles.dart';
import 'package:clubcrafter/src/core/utils/resources/resources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).favoriteFavorite,
          style: AppTextStyles.s16w700Poppins.copyWith(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.w),
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(16.r)),
            child: Row(
              children: [
                Image.asset(
                  Images.event,
                  scale: 3,
                ),
                15.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dance party at the top of the\ntown - 2022',
                      softWrap: true,
                      style: AppTextStyles.s14w700Poppins
                          .copyWith(color: AppColors.black),
                    ),
                    20.verticalSpace,
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New-York',
                            style: AppTextStyles.s14w400Poppins
                                .copyWith(color: AppColors.grey),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: const Color.fromARGB(255, 236, 149, 178)),
                            child: Text(
                              '30%',
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
