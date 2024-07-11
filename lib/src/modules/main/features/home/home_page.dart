import 'package:auto_route/auto_route.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/config/routes/app_routes.gr.dart';
import '../widgets/popular_now_widget.dart';
import '../widgets/recom_widget.dart';
import '../widgets/search_home_field.dart';
import '../widgets/upcoming_event_widget.dart';
import '../../../intro/widgets/event_btn.dart';
import '../../../widgets/cruft_text_button.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/models/event.dart';
import '../../../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const double _paddingSmall = 10;
const double _paddingMedium = 20;
const double _paddingLarge = 30;

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: REdgeInsets.fromLTRB(
                _paddingMedium, _paddingMedium, _paddingMedium, 0),
            sliver: SliverAppBar(
              actions: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(_paddingSmall)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none,
                      color: AppColors.black,
                      size: 25.w,
                    ),
                  ),
                )
              ],
              floating: true,
              flexibleSpace: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        S.of(context).homeLocation,
                        style: context.textTheme.bodyMedium!
                            .copyWith(color: AppColors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.hotPink,
                          ),
                          5.horizontalSpace,
                          Text(
                            "Ahmedabad, Gujarat",
                            style: context.textTheme.bodySmall!
                                .copyWith(color: AppColors.grey),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: REdgeInsets.fromLTRB(
                _paddingMedium, _paddingLarge, _paddingMedium, _paddingMedium),
            sliver: SliverToBoxAdapter(
              child: SearchHomeField(
                controller: _controller,
              ),
            ),
          ),
          SliverPadding(
            padding: REdgeInsets.symmetric(horizontal: _paddingMedium),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                      height: context.height * 0.2,
                      width: context.width - 40,
                      child: ListView.separated(
                        itemCount: Events.getEvent(context).length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (_, index) => EventBtn(
                            onPressed: () {},
                            text: Events.getEvent(context)[index].text,
                            emoji: Events.getEvent(context)[index].emoji),
                        separatorBuilder: (context, index) =>
                            _paddingSmall.horizontalSpace,
                      )),
                  _paddingMedium.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          S.of(context).homeUpcomingEvents,
                          style: context.textTheme.titleMedium!
                              .copyWith(color: AppColors.black),
                        ),
                      ),
                      CruftTextButton(
                          onPressed: () {},
                          text: S.of(context).buttonSeeAll,
                          textColor: AppColors.hotPink)
                    ],
                  ),
                  _paddingLarge.verticalSpace,
                  SizedBox(
                      height: context.height * 0.2.h,
                      width: context.width,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (_, index) => Padding(
                                padding: REdgeInsets.only(right: _paddingSmall),
                                child: Column(
                                  children: [
                                    const UpComingWidget(),
                                    _paddingSmall.verticalSpace,
                                    const UpComingWidget()
                                  ],
                                ),
                              ))),
                  _paddingLarge.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          S.of(context).homePopularNow,
                          style: context.textTheme.titleMedium!
                              .copyWith(color: AppColors.black),
                        ),
                      ),
                      CruftTextButton(
                          onPressed: () {},
                          text: S.of(context).buttonSeeAll,
                          textColor: AppColors.hotPink)
                    ],
                  ),
                  _paddingMedium.verticalSpace,
                  SizedBox(
                      height: context.height * 0.34.h,
                      width: context.width,
                      child: ListView.separated(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) =>
                              10.horizontalSpace,
                          itemBuilder: (_, index) => const PopularNowWidget())),
                  _paddingLarge.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          S.of(context).homeRecommendationsForYou,
                          style: context.textTheme.titleMedium!
                              .copyWith(color: AppColors.black),
                        ),
                      ),
                      CruftTextButton(
                          onPressed: () {
                            context.router.push(const FavouriteRoute());
                          },
                          text: S.of(context).buttonSeeAll,
                          textColor: AppColors.hotPink)
                    ],
                  ),
                  _paddingMedium.verticalSpace,
                  SizedBox(
                      height: context.height,
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) =>
                              10.verticalSpace,
                          itemBuilder: (_, index) => const RecomWidget()))
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class _UpComingAndPopularEvents {}
