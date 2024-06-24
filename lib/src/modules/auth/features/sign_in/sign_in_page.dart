import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/config/routes/app_routes.gr.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/transparent_elevated_btn.dart';
import '../../../widgets/custom_elevated_btn.dart';
import '../../../widgets/custom_text_button.dart';
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
        padding: REdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 120),
              child: Image.asset(Images.logo),
            ),
            30.verticalSpace,
            Text(
              S.of(context).welcomeBack,
              style: context.textTheme.titleLarge!
                  .copyWith(color: AppColors.black),
            ),
            10.verticalSpace,
            Text(
              S.of(context).useCredentialsToAceesYourAccount,
              style:
                  context.textTheme.bodySmall!.copyWith(color: AppColors.grey),
            ),
            30.verticalSpace,
            CTextFormField(
              focusNode: _nodeOne,
              hintText: S.of(context).enterUsername,
              controller: _username,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.name,
              prefixIcon: Images.icon,
              isVisible: false,
            ),
            20.verticalSpace,
            CTextFormField(
              focusNode: _nodeTwo,
              hintText: S.of(context).enterPassword,
              controller: _password,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.text,
              prefixIcon: Images.lock,
              isVisible: true,
              inputFormatters: [
                // MaskedInputFormatter('(000)-00-00-00')
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CTextBtn(
                onPressed: () {},
                text: S.of(context).forgotPassword,
                textColor: AppColors.black,
              ),
            ),
            30.verticalSpace,
            CElevatedButton(
                onPressed: () {
                  _goToIntro();
                },
                text: S.of(context).login),
            10.verticalSpace,
            Row(
              children: [
                Container(
                  width: 150.w,
                  height: 1,
                  decoration:
                      BoxDecoration(color: AppColors.grey.withOpacity(0.3)),
                ),
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    S.of(context).or,
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
              icon: Images.facebook,
              text: S.of(context).loginWithFacebook,
            ),
            10.verticalSpace,
            TransparentElevatedBtn(
              onPressed: () {},
              icon: Images.group49,
              text: S.of(context).loginWithGoogle,
            ),
            49.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).dontHaveAnAccount,
                  style: context.textTheme.bodySmall!
                      .copyWith(color: AppColors.black),
                ),
                CTextBtn(
                    onPressed: () {
                      _goToSignUp();
                    },
                    text: S.of(context).signup,
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
