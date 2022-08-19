import 'package:fakng_mobile/core/domain/router/routes_names.dart';
import 'package:fakng_mobile/features/favorites/presentation/bloc/favorites_bloc.dart';
import 'package:fakng_mobile/features/favorites/presentation/pages/favorites_page.dart';
import 'package:fakng_mobile/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:fakng_mobile/features/settings/presentation/pages/settings_page.dart';
import 'package:fakng_mobile/features/vacancies/presentation/bloc/vacancies_bloc.dart';
import 'package:fakng_mobile/features/vacancies/presentation/pages/vacancies_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter get router => _router;

  AppRouter();

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
