import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/src/config/routes/app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: OnboardingRoute.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.noTransition)
      ];
}
