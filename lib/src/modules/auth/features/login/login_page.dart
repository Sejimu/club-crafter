import 'package:auto_route/auto_route.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/config/routes/app_routes.gr.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/transparent_elevated_btn.dart';
import '../../../widgets/cruft_button.dart';
import '../../../widgets/cruft_text_button.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _nodeOne = FocusNode();
  final _username = TextEditingController();
  final _nodeTwo = FocusNode();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _username.dispose();
    _password.dispose();
    _nodeOne.dispose();
    _nodeTwo.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 120.w),
              child: Image.asset(Images.logo, fit: BoxFit.fill,),
            ),
            30.verticalSpace,
            Text(
              S.of(context).loginWelcomeBack,
              style: context.textTheme.titleLarge!
                  .copyWith(color: AppColors.black),
            ),
            10.verticalSpace,
            Text(
              S.of(context).loginUseCredentialsToAceesYourAccount,
              style:
                  context.textTheme.bodySmall!.copyWith(color: AppColors.grey),
            ),
            30.verticalSpace,
            CTextFormField(
              focusNode: _nodeOne,
              hintText: S.of(context).textFieldEnterPassword,
              controller: _username,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.name,
              prefixIcon: Svgs.userSquare,
              isVisible: false,
            ),
            20.verticalSpace,
            CTextFormField(
              focusNode: _nodeTwo,
              hintText: S.of(context).textFieldEnterPassword,
              controller: _password,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.text,
              prefixIcon: Svgs.lock,
              isVisible: true,
              inputFormatters: [],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CruftTextButton(
                onPressed: () {},
                text: S.of(context).buttonForgotPassword,
                textColor: AppColors.black,
              ),
            ),
            30.verticalSpace,
            CruftButton(
                onPressed: () {
                  _goToIntro();
                },
                text: S.of(context).buttonLogin),
            10.verticalSpace,
            Row(
              children: [
                Container(
                  width: 150.w,
                  height: 1.h,
                  decoration:
                      BoxDecoration(color: AppColors.grey.withOpacity(0.3)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    S.of(context).loginOr,
                    style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey.withOpacity(0.5)),
                  ),
                ),
                Container(
                  width: 150.w,
                  height: 1,
                  decoration:
                      BoxDecoration(color: AppColors.grey.withOpacity(0.3)),
                ),
              ],
            ),
            10.verticalSpace,
            TransparentElevatedBtn(
              onPressed: () {},
              icon: Images.logo,
              text: S.of(context).loginWithFacebook,
            ),
            10.verticalSpace,
            TransparentElevatedBtn(
              onPressed: () {},
              icon: Images.logo,
              text: S.of(context).loginWithGoogle,
            ),
            49.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).loginDontHaveAnAccount,
                  style: context.textTheme.bodySmall!
                      .copyWith(color: AppColors.black),
                ),
                CruftTextButton(
                    onPressed: () {
                      _goToSignUp();
                    },
                    text: S.of(context).buttonSignup,
                    textColor: AppColors.hotPink)
              ],
            )
          ],
        ),
      )),
    );
  }

  void _goToSignUp() => context.router.replace(const SignUpRoute());

  void _goToIntro() => context.router.push(const IntroRoute());
}
