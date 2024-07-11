// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/src/core/config/routes/app_routes.gr.dart';
import 'package:clubcrafter/src/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:clubcrafter/generated/l10n.dart';
import 'package:clubcrafter/src/modules/widgets/cruft_button.dart';
import 'package:clubcrafter/src/core/utils/extensions/extensions.dart';
import 'package:clubcrafter/src/core/utils/resources/resources.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _controller;
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final content = _OnboardingData.data(context);
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              itemCount: content.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) => Column(
                children: [
                  Expanded(
                    child: MasonryGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      itemBuilder: (_, index) => Image.asset(
                        _imagesOne[index],
                        width: 144.w,
                      ),
                    ),
                  ),
                  34.verticalSpace,
                  Text(
                    S.of(context).onboardingFindYourFavouriteEventsHere,
                    style: context.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  10.verticalSpace,
                  Padding(
                    padding: REdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      S
                          .of(context)
                          .loremIpsumDolorSitAmetConsecteturAdipiscingElit,
                      style: context.textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  28.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (i) => Padding(
                              padding: REdgeInsets.only(right: 4),
                              child: Container(
                                width: _currentIndex == i ? 28 : 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: _currentIndex == i
                                        ? AppColors.hotPink
                                        : AppColors.grey,
                                    borderRadius: BorderRadius.circular(10).r),
                              ),
                            )),
                  )
                ],
              ),
            ),
          ),
          56.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 20),
            child: CruftButton(
              onPressed: () {
                if (_currentIndex == content.length - 1) {
                  _goToSignIn();
                }
                _controller.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn);
              },
              text: _currentIndex == content.length - 1
                  ? "Continue"
                  : S.of(context).buttonNext,
            ),
          ),
          50.verticalSpace
        ],
      ),
    );
  }

  void _goToSignIn() => context.router.replace(const SignInRoute());
}

List<String> _imagesOne = [
  Images.rc,
  Images.rec,
  Images.recth,
  Images.rectangle,
  Images.rectangleTwo,
  Images.rectangleOne,
];

List<String> _imagesTwo = [
  Images.secondOne,
  Images.secondTwo,
  Images.secondThree,
  Images.secondFour,
  Images.secondFive,
  Images.seconSix,
];

List<String> _imagesThree = [
  Images.secondOne,
  Images.secondTwo,
  Images.secondThree,
  Images.secondFour,
  Images.secondFive,
  Images.seconSix,
];

class _OnboardingData {
  final List<String> img;
  final String title;
  final String bodyText;
  _OnboardingData({
    required this.img,
    required this.title,
    required this.bodyText,
  });

  static List<_OnboardingData> data(BuildContext context) => [
        _OnboardingData(
            img: _imagesOne,
            title: S.of(context).onboardingFindYourFavouriteEventsHere,
            bodyText:
                S.of(context).loremIpsumDolorSitAmetConsecteturAdipiscingElit),
        _OnboardingData(
            img: _imagesTwo,
            title: S.of(context).onboardingFindYourNearbyEventHere,
            bodyText:
                S.of(context).loremIpsumDolorSitAmetConsecteturAdipiscingElit),
        _OnboardingData(
            img: _imagesThree,
            title: S.of(context).onboardingUpdateYourUpcomingEventHere,
            bodyText:
                S.of(context).loremIpsumDolorSitAmetConsecteturAdipiscingElit),
      ];
}
