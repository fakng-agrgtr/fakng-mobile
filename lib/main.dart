import 'package:easy_localization/easy_localization.dart';
import 'package:fakng_mobile/app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];

  await Hive.initFlutter();
  runApp(EasyLocalization(
    supportedLocales: const [Locale('en'), Locale('ru'), Locale('ar', 'AE')],
    path: 'assets/translations',
    fallbackLocale: const Locale('en', 'US'),
    startLocale: const Locale('en'),
    child: App(),
  ));
}
