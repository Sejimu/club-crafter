import '../../../../../generated/l10n.dart';
import '../../../widgets/cruft_button.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpComingWidget extends StatelessWidget {
  const UpComingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(4),
      child: Row(
        children: [
          Image.asset(
            Images.event,
            width: 85.w,
            height: 75.w,
            fit: BoxFit.fill,
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
                  SizedBox(
                    width: 60.w,
                    child: CruftButton(
                        onPressed: () {}, padding: 8, text: S.of(context).buttonJoin),
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
