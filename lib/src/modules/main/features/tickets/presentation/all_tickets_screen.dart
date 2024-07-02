import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/generated/l10n.dart';
import 'package:clubcrafter/src/core/config/theme/app_colors.dart';
import 'package:clubcrafter/src/core/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';



@RoutePage()
class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).allTickets,
          style:
              context.textTheme.titleMedium!.copyWith(color: AppColors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
