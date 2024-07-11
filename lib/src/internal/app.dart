import '../../generated/l10n.dart';
import '../core/config/routes/app_routes.dart';
import '../core/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClubCrafter extends StatefulWidget {
  const ClubCrafter({super.key});

  @override
  State<ClubCrafter> createState() => _ClubCrafterState();
}

class _ClubCrafterState extends State<ClubCrafter> {
  final _appRouter = AppRouter();
  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp.router(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
        title: 'Club Crafter',
        theme: AppTheme.lightTheme(),
        builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1.0)),
            child: child ?? const SizedBox()),
      ),
    );
  }
}
