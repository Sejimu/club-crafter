import 'package:auto_route/auto_route.dart';
import '../../../../core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "ss",
              style: TextStyle(color: AppColors.black),
            ),
          ),
        ],
      ),
    );
  }
}
