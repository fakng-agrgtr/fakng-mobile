import 'package:easy_localization/easy_localization.dart';
import 'package:fakng_mobile/core/app.dart';
import 'package:fakng_mobile/core/injection_container.dart' as di;
import 'package:flutter/material.dart';

void main() async {
  await di.init();

  runApp(EasyLocalization(
    supportedLocales: const [Locale('en'), Locale('ru')],
    path: 'assets/translations',
    fallbackLocale: const Locale('en', 'US'),
    startLocale: const Locale('en'),
    child: const App(),
  ));
}
