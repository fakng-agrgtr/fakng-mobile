import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fakng_mobile/core/presentation/router/router.dart';
import 'package:fakng_mobile/core/resources/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GetIt.I.get<AppRouter>().router;

    return ThemeProvider(
      initTheme: lightAppTheme,
      duration: const Duration(milliseconds: 350),
      child: BackGestureWidthTheme(
        backGestureWidth: BackGestureWidth.fraction(1),
        child: MaterialApp.router(
          title: 'fakng-agrgtr',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          routeInformationProvider: router.routeInformationProvider,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
        ),
      ),
    );
  }
}
