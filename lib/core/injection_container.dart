import 'package:easy_localization/easy_localization.dart';
import 'package:fakng_mobile/core/data/db/db_client.dart';
import 'package:fakng_mobile/core/data/network/network_client.dart';
import 'package:fakng_mobile/core/domain/router/router.dart';
import 'package:fakng_mobile/features/favorites/data/repositories/favorites_repository.dart';
import 'package:fakng_mobile/features/settings/data/repositories/settings_repository.dart';
import 'package:fakng_mobile/features/vacancies/data/repositories/vacancies_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

final GetIt _inject = GetIt.I;

Future<void> init() async {
  // Hive
  await Hive.initFlutter();

  // EasyLocalization
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];

  _inject
    // Repositories
    ..registerFactory(VacanciesRepository.new)
    ..registerFactory(FavoritesRepository.new)
    ..registerFactory(SettingsRepository.new)

    // Components
    ..registerSingleton(NetworkClient())
    ..registerSingleton(DBClient())
    ..registerSingleton(AppRouter());
}
