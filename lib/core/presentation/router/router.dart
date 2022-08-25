import 'package:fakng_mobile/core/presentation/router/routes_names.dart';
import 'package:fakng_mobile/features/favorites/presentation/pages/favorites_page.dart';
import 'package:fakng_mobile/features/settings/presentation/pages/settings_page.dart';
import 'package:fakng_mobile/features/vacancies/presentation/pages/vacancies_page.dart';
import 'package:fakng_mobile/features/vacancies/presentation/pages/vacancy_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter get router => _router;

  AppRouter();

  final GoRouter _router = GoRouter(
    initialLocation: '/${RoutesNames.vacancies}',
    routes: <GoRoute>[
      GoRoute(
        path: '/${RoutesNames.vacancies}',
        name: RoutesNames.vacancies,
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const VacanciesPage(),
        ),
        routes: [
          GoRoute(
            path: RoutesNames.vacancies,
            name: RoutesNames.vacancy,
            pageBuilder: (context, state) => CupertinoPage<void>(
              key: state.pageKey,
              child: const VacancyPage(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/${RoutesNames.favorites}',
        name: RoutesNames.favorites,
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const FavoritesPage(),
        ),
      ),
      GoRoute(
        path: '/${RoutesNames.settings}',
        name: RoutesNames.settings,
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const SettingsPage(),
        ),
      ),

      // GoRoute(
      //   path: RoutesNames.vacancies,
      //   pageBuilder: (context, state) => NoTransitionPage<void>(
      //     key: state.pageKey,
      //     child: BlocProvider<VacanciesBloc>(
      //       child: const VacanciesPage(),
      //       create: (context) => VacanciesBloc(
      //         vacanciesRepository: vacanciesRepository,
      //       ),
      //     ),
      //   ),
      // ),
      // GoRoute(
      //   path: RoutesNames.favorites,
      //   pageBuilder: (context, state) => NoTransitionPage<void>(
      //     key: state.pageKey,
      //     child: BlocProvider<FavoritesBloc>(
      //       child: const FavoritesPage(),
      //       create: (context) => FavoritesBloc(
      //         favoritesRepository: favoritesRepository,
      //       ),
      //     ),
      //   ),
      // ),
      // GoRoute(
      //   path: RoutesNames.settings,
      //   pageBuilder: (context, state) => NoTransitionPage<void>(
      //     key: state.pageKey,
      //     child: BlocProvider<SettingsBloc>(
      //       child: const SettingsPage(),
      //       create: (context) => SettingsBloc(
      //         settingsRepository: settingsRepository,
      //       ),
      //     ),
      //   ),
      // ),
    ],
  );
}
