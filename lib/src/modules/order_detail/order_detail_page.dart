import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/generated/l10n.dart';
import 'package:clubcrafter/src/core/config/theme/app_colors.dart';
import 'package:clubcrafter/src/core/config/theme/app_text_styles.dart';
import 'package:clubcrafter/src/core/utils/constants/app_consts.dart';
import 'package:clubcrafter/src/core/utils/resources/resources.dart';
import 'package:clubcrafter/src/modules/widgets/cruft_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).orderDetail,
          style: AppTextStyles.s16w700Poppins.copyWith(color: AppColors.black),
        ),
        leading: CruftIconButton(onPressed: () {}, icon: Icons.arrow_back),
        leadingWidth: 16.w,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: padding20.h, horizontal: 16.w),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 5,
                          offset: const Offset(0.3, 0.3),
                          color: AppColors.grey.withOpacity(
                            0.1,
                          ))
                    ],
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16.r)),
                child: Row(
                  children: [
                    Image.asset(
                      Images.event,
                      scale: 3.5,
                    ),
                    padding10.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Party with friends at night - 2022',
                          style: AppTextStyles.s14w700Poppins
                              .copyWith(color: AppColors.black),
                        ),
                        5.horizontalSpace,
                        Text(
                          'THU 26 May, 08:00',
                          style: AppTextStyles.s14w400Poppins
                              .copyWith(color: AppColors.grey),
                        ),
                        5.horizontalSpace,
                        Text(
                          'Bishkek',
                          style: AppTextStyles.s14w400Poppins
                              .copyWith(color: AppColors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              padding20.verticalSpace,
              Text(S.of(context).orderSummary,
                  style: AppTextStyles.s16w700Poppins
                      .copyWith(color: AppColors.black)),
              padding15.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('2x Ticket price',
                      style: AppTextStyles.s14w400Poppins
                          .copyWith(color: AppColors.grey)),
                  Text('\$30.00',
                      style: AppTextStyles.s14w400Poppins
                          .copyWith(color: AppColors.grey)),
                ],
              ),
              padding15.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(S.of(context).subtotal,
                      style: AppTextStyles.s14w400Poppins
                          .copyWith(color: AppColors.grey)),
                  Text('\$30.00',
                      style: AppTextStyles.s14w400Poppins
                          .copyWith(color: AppColors.grey)),
                ],
              ),
              padding15.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(S.of(context).fees,
                      style: AppTextStyles.s14w400Poppins
                          .copyWith(color: AppColors.grey)),
                  Text('\$30.00',
                      style: AppTextStyles.s14w400Poppins
                          .copyWith(color: AppColors.grey)),
                ],
              ),
              padding15.verticalSpace,
              const Divider(),
              padding15.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(S.of(context).total,
                      style: AppTextStyles.s16w700Poppins
                          .copyWith(color: AppColors.black)),
                  Text('\$30.00',
                      style: AppTextStyles.s16w700Poppins
                          .copyWith(color: AppColors.black)),
                ],
              ),
              padding20.verticalSpace,
              Text(S.of(context).paymentMethod,
                  style: AppTextStyles.s16w700Poppins
                      .copyWith(color: AppColors.black)),
              padding15.verticalSpace,
              Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
