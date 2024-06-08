
import 'package:clubcrafter/src/utils/extensions/extensions.dart';
import 'package:clubcrafter/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CTextFormField extends StatefulWidget {
  final String hintText;
  final FocusNode focusNode;
  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String prefixIcon;
  final bool isVisible;

  const CTextFormField(
      {super.key,
      required this.hintText,
      required this.focusNode,
      required this.controller,
      required this.textInputType,
      required this.textInputAction,
      required this.prefixIcon,
      required this.isVisible});

  @override
  State<CTextFormField> createState() => _CTextFormFieldState();
}

class _CTextFormFieldState extends State<CTextFormField> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: context.textTheme.bodySmall,
      cursorColor: AppColors.black,
      cursorHeight: 15,
      obscureText: obscureText,
      textInputAction: widget.textInputAction,
      focusNode: widget.focusNode,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      maxLines: 1,
      decoration: InputDecoration(
          contentPadding: REdgeInsets.symmetric(vertical: 18, horizontal: 30),
          hintText: widget.hintText,
          prefixIcon: Padding(
            padding: REdgeInsets.all(10.0),
            child: SvgPicture.asset(widget.prefixIcon),
          ),
          suffixIcon: widget.isVisible
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.grey,
                  ))
              : const SizedBox(),
          hintStyle: context.textTheme.bodySmall!
              .copyWith(color: AppColors.grey.withOpacity(0.3)),
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder()),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10).r,
        borderSide: BorderSide(color: AppColors.grey.withOpacity(0.2)));
  }
}
