import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/config/routes/app_routes.gr.dart';
import '../../../../core/config/theme/app_colors.dart';

@RoutePage()
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        FavouriteRoute(),
        FavouriteRoute(),
        FavouriteRoute(),
        FavouriteRoute(),
        FavouriteRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
              elevation: 2,
              type: BottomNavigationBarType.fixed,
              currentIndex: 2,
              selectedItemColor: AppColors.hotPink,
              unselectedItemColor: AppColors.black.withOpacity(0.7),
              onTap: (value) {
                tabRouter.setActiveIndex(value);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.home,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.video_collection,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.settings,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.profile_circled,
                    ),
                    label: ""),
              ]),
        );
      },
    );
  }
}
