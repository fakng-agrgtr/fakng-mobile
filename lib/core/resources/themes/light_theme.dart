import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:flutter/material.dart';

final lightAppTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: const Color.fromARGB(255, 245, 245, 245),
  primarySwatch: Colors.blue,
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.black),
  ),
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
    iconTheme: IconThemeData(color: Colors.black),
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
);
