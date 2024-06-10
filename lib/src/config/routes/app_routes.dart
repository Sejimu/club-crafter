import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/src/config/routes/app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Dashboard
        CustomRoute(page: Dashboard.page, children: [
          CustomRoute(
            page: HomeRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
          ),
        ]),

        CustomRoute(page: EventDetailRoute.page),

        CustomRoute(
            page: OnboardingRoute.page,
            transitionsBuilder: TransitionsBuilders.noTransition),
        CustomRoute(
            page: SignInRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            page: SignUpRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),

        // Intro
        CustomRoute(
          page: IntroRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),

        // Event detail
        CustomRoute(
          page: EventDetailRoute.page,
          initial: true,
        )
      ];
}
