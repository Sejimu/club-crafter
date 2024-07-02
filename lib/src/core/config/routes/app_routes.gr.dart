// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:clubcrafter/src/modules/auth/features/login/login_page.dart'
    as _i9;
import 'package:clubcrafter/src/modules/auth/features/register/register_page.dart'
    as _i10;
import 'package:clubcrafter/src/modules/event_detail/event_detail_page.dart'
    as _i3;
import 'package:clubcrafter/src/modules/intro/intro_page.dart' as _i6;
import 'package:clubcrafter/src/modules/main/features/favourite/favourite_page.dart'
    as _i4;
import 'package:clubcrafter/src/modules/main/features/home/home_page.dart'
    as _i5;
import 'package:clubcrafter/src/modules/main/features/tickets/presentation/all_tickets_screen.dart'
    as _i1;
import 'package:clubcrafter/src/modules/onboarding/onboarding_page.dart' as _i7;
import 'package:clubcrafter/src/modules/order_detail/order_detail_page.dart'
    as _i8;
import 'package:clubcrafter/src/modules/widgets/%D1%81ustom_bottom_nav.dart'
    as _i2;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AllTicketsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllTicketsScreen(),
      );
    },
    Dashboard.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Dashboard(),
      );
    },
    EventDetailRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EventDetailPage(),
      );
    },
    FavouriteRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FavouritePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    IntroRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.IntroPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnboardingPage(),
      );
    },
    OrderDetailRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OrderDetailPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SignUpPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AllTicketsScreen]
class AllTicketsRoute extends _i11.PageRouteInfo<void> {
  const AllTicketsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AllTicketsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllTicketsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Dashboard]
class Dashboard extends _i11.PageRouteInfo<void> {
  const Dashboard({List<_i11.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EventDetailPage]
class EventDetailRoute extends _i11.PageRouteInfo<void> {
  const EventDetailRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EventDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventDetailRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FavouritePage]
class FavouriteRoute extends _i11.PageRouteInfo<void> {
  const FavouriteRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.IntroPage]
class IntroRoute extends _i11.PageRouteInfo<void> {
  const IntroRoute({List<_i11.PageRouteInfo>? children})
      : super(
          IntroRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntroRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OnboardingPage]
class OnboardingRoute extends _i11.PageRouteInfo<void> {
  const OnboardingRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OrderDetailPage]
class OrderDetailRoute extends _i11.PageRouteInfo<void> {
  const OrderDetailRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OrderDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderDetailRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignInPage]
class SignInRoute extends _i11.PageRouteInfo<void> {
  const SignInRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SignUpPage]
class SignUpRoute extends _i11.PageRouteInfo<void> {
  const SignUpRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
