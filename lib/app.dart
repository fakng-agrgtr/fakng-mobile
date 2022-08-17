import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fakng_mobile/features/favorites/presentation/pages/favorites_page.dart';
import 'package:fakng_mobile/features/settings/presentation/pages/settings_page.dart';
import 'package:fakng_mobile/features/vacancies/presentation/pages/vacancies_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGestureWidthTheme(
      backGestureWidth: BackGestureWidth.fraction(1),
      child: MaterialApp.router(
        title: 'fakng-agrgtr',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        theme: ThemeData(
          backgroundColor: const Color.fromARGB(255, 247, 247, 247),
          // scaffoldBackgroundColor: Color.fromARGB(255, 247, 247, 247),
          primarySwatch: Colors.blue,
          cardTheme: CardTheme(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            elevation: 0,
            selectedIconTheme: IconThemeData(
              color: Colors.black,
              opacity: 1,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.grey,
              opacity: 0.8,
            ),
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          fontFamily: 'Inter',
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android:
                  CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
              TargetPlatform.iOS:
                  CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
            },
          ),
        ),
      ),
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: RoutesNames.vacancies,
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const VacanciesPage(),
        ),
      ),
      GoRoute(
        path: RoutesNames.favorites,
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const FavoritesPage(),
        ),
      ),
      GoRoute(
        path: RoutesNames.settings,
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const SettingsPage(),
        ),
      ),
    ],
  );
}

abstract class RoutesNames {
  static String get vacancies => '/';
  static String get settings => '/settings';
  static String get favorites => '/favorites';
}
