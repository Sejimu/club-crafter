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
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _nodeOne = FocusNode();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _nodeTwo = FocusNode();
  final _nodeThree = FocusNode();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _username.dispose();
    _password.dispose();
    _email.dispose();
    _nodeOne.dispose();
    _nodeThree.dispose();
    _nodeTwo.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
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
                S.of(context).signUpCreateAnAccount,
                style: context.textTheme.titleLarge!
                    .copyWith(color: AppColors.black),
              ),
              10.verticalSpace,
              Text(
                S.of(context).signUpPleaseFillThisDetailToCreateAnAccount,
                style: context.textTheme.bodySmall!
                    .copyWith(color: AppColors.grey),
              ),
              30.verticalSpace,
              CTextFormField(
                focusNode: _nodeOne,
                hintText: S.of(context).textFieldEnterUsername,
                controller: _username,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.name,
                prefixIcon: Svgs.icon,
                isVisible: false,
              ),
              20.verticalSpace,
              CTextFormField(
                focusNode: _nodeThree,
                hintText: S.of(context).textFieldEnterEmail,
                controller: _email,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
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
              ),
              30.verticalSpace,
              CruftButton(onPressed: () {}, text: S.of(context).buttonSignup),
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
                icon: Svgs.facebook,
                text: S.of(context).signUpWithFacebool,
              ),
              10.verticalSpace,
              TransparentElevatedBtn(
                onPressed: () {},
                icon: Svgs.google,
                text: S.of(context).signUpWithGoogle,
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).signUpAlreadyHaveAnAccount,
                    style: context.textTheme.bodySmall!
                        .copyWith(color: AppColors.black),
                  ),
                  CruftTextButton(
                      onPressed: () {
                        _goToSignIn();
                      },
                      text: S.of(context).buttonLogin,
                      textColor: AppColors.hotPink)
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  void _goToSignIn() => context.router.replace(const SignInRoute());
}
