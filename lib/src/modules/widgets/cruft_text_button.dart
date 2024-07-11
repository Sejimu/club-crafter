import '../../core/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CruftTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color textColor;
  final String text;
  const CruftTextButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        child: Text(
          text,
          style: context.textTheme.bodySmall!.copyWith(color: textColor),
        ));
  }
}
