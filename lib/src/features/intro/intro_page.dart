import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/generated/l10n.dart';
import 'package:clubcrafter/src/features/intro/widgets/add_photo_btn.dart';
import 'package:clubcrafter/src/features/intro/widgets/event_btn.dart';
import 'package:clubcrafter/src/features/widgets/custom_elevated_btn.dart';
import 'package:clubcrafter/src/utils/extensions/extensions.dart';
import 'package:clubcrafter/src/utils/resources/resources.dart';
import 'package:clubcrafter/src/utils/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

const double _paddingUnit = 20;
const double _commonVal = 10;

@RoutePage()
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 2);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  int _currentStep = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: REdgeInsets.symmetric(horizontal: _paddingUnit),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StepProgressIndicator(
              totalSteps: 3,
              padding: 5,
              currentStep: _currentStep + 1,
              selectedGradientColor: LinearGradient(
                  colors: AppColors.gradientColor,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              unselectedColor: AppColors.grey,
            ),
            _paddingUnit.verticalSpace,
            SizedBox(
                height: context.height / 2 * 1.4,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        _currentStep = value;
                      });
                    },
                    controller: _controller,
                    itemCount: IntroContent._introContent(context).length,
                    itemBuilder: (_, index) => SingleChildScrollView(
                        child: IntroContent._introContent(context)[index]))),
            const Spacer(),
            CElevatedButton(
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 450),
                      curve: Curves.easeOutBack);
                },
                text: _currentStep ==
                        IntroContent._introContent(context).length - 1
                    ? S.of(context).finish
                    : S.of(context).next)
          ],
        ),
      )),
    );
  }
}

class IntroContent {
  static List<Widget> _introContent(BuildContext context) => [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).createUsername,
              style: context.textTheme.titleLarge!
                  .copyWith(color: AppColors.black),
            ),
            _commonVal.verticalSpace,
            Text(
              S.of(context).photoProfileCanBeChangedAtAnyTime,
              style:
                  context.textTheme.bodySmall!.copyWith(color: AppColors.grey),
            ),
            15.verticalSpace,
            Container(
              padding: REdgeInsets.all(_commonVal),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_commonVal).r,
                  border: Border.all(color: AppColors.hotPink, width: 2)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Images.icon,
                    color: AppColors.hotPink.withOpacity(1),
                    height: 30,
                  ),
                  _commonVal.horizontalSpace,
                  Text(
                    "Tanya Hill",
                    style: context.textTheme.bodySmall!
                        .copyWith(color: AppColors.black),
                  ),
                  const Spacer(),
                  Icon(
                    CupertinoIcons.check_mark_circled,
                    color: AppColors.green,
                    size: 25.h,
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).chooseYourPhotoProfile,
              style: context.textTheme.titleLarge!
                  .copyWith(color: AppColors.black),
            ),
            _commonVal.verticalSpace,
            Text(
              S.of(context).usernameCanBeChangedAtAnyTime,
              style:
                  context.textTheme.bodySmall!.copyWith(color: AppColors.grey),
            ),
            15.verticalSpace,
            Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                      padding: REdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).r,
                          border: Border.all(color: AppColors.hotPink)),
                      child: Image.asset(
                        Images.logo,
                        height: 150.w,
                        width: 150.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Padding(
                        padding: REdgeInsets.only(bottom: 50),
                        child: CircleAvatar(
                          backgroundColor: AppColors.hotPink,
                          radius: 20.r,
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.close)),
                        ),
                      ),
                    )
                  ],
                )),
            15.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddPhotoBtn(
                  onPressed: () {},
                ),
                AddPhotoBtn(
                  onPressed: () {},
                ),
                AddPhotoBtn(
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).chooseYourFavoriteEvent,
              style: context.textTheme.titleLarge!
                  .copyWith(color: AppColors.black),
            ),
            _commonVal.verticalSpace,
            Text(
              S.of(context).getPersonalizedEventRecomendation,
              style:
                  context.textTheme.bodySmall!.copyWith(color: AppColors.grey),
            ),
            15.verticalSpace,
            Wrap(
                spacing: 16,
                children: Events.getEvent(context)
                    .map((e) => EventBtn(
                        onPressed: () {}, text: e.text, emoji: e.emoji))
                    .toList())
          ],
        ),
      ];
}

class Events {
  final String emoji;
  final String text;
  Events({required this.emoji, required this.text});

  static List<Events> getEvent(BuildContext context) => [
        Events(emoji: "💼", text: S.of(context).business),
        Events(emoji: "🙌", text: S.of(context).community),
        Events(emoji: "🎙", text: S.of(context).musicEntertaiment),
        Events(emoji: "💉", text: S.of(context).health),
        Events(emoji: "🍟", text: S.of(context).foodDrink),
        Events(emoji: "👪", text: S.of(context).familyEducation),
        Events(emoji: "⚽", text: S.of(context).sport),
        Events(emoji: "👠", text: S.of(context).fashion),
        Events(emoji: "🎞", text: S.of(context).filmMedia),
        Events(emoji: "🏡", text: S.of(context).homeLifestyle),
        Events(emoji: "🎨", text: S.of(context).design),
        Events(emoji: "🎮", text: S.of(context).gaming),
        Events(emoji: "🔬", text: S.of(context).scienceTech),
        Events(emoji: "📚", text: S.of(context).schoolEducation),
        Events(emoji: "☀️", text: S.of(context).holiday),
        Events(emoji: "✈", text: S.of(context).travel),
      ];
}
