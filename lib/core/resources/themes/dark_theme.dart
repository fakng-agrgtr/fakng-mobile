import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:flutter/material.dart';

const black1 = Color.fromARGB(255, 39, 39, 39);
const black2 = Color.fromARGB(255, 56, 56, 56);
const black3 = Color.fromARGB(255, 78, 78, 78);

const white1 = Colors.white;
const white2 = Color.fromARGB(255, 214, 214, 214);
const white3 = Color.fromARGB(255, 180, 180, 180);

final darkAppTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: white1),
  ),
  backgroundColor: black1,
  scaffoldBackgroundColor: black1,
  primarySwatch: Colors.blue,
  cardTheme: CardTheme(
    color: black3,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: black2,
    elevation: 0,
    selectedIconTheme: IconThemeData(
      color: white1,
      opacity: 1,
    ),
    unselectedIconTheme: IconThemeData(
      color: white2,
      opacity: 0.8,
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: black2,
    titleTextStyle: TextStyle(
      color: white1,
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
);
