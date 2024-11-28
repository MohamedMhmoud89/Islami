import 'package:flutter/material.dart';

class MyThemeData {
  static bool isDarkEnable = true;
  static ThemeData lightTheme = ThemeData(
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: Color(0xffB7935F),
    ),
    dividerColor: Color(0xffB7935F),
    cardTheme: CardTheme(
      color: Color(0xffF8F8F8).withOpacity(0.6),
      elevation: 18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 32, color: Colors.black),
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: 'ElMessiri',
          fontSize: 30,
          fontWeight: FontWeight.w700),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xffB7935F),
        primary: Color(0xffB7935F),
        onPrimary: Colors.white),
    useMaterial3: true,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xffB7935F),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(size: 32),
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'ElMessiri',
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'ElMessiri',
        )),
  );
  static ThemeData darkTheme = ThemeData(
    dividerColor: Color(0xffFACC1D),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: Color(0xffFACC1D),
    ),
    cardTheme: CardTheme(
      color: Color(0XFF141A2E).withOpacity(0.6),
      elevation: 18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 32, color: Colors.white),
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'ElMessiri',
          fontSize: 30,
          fontWeight: FontWeight.w700),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xff141A2E),
        primary: Color(0xff141A2E),
        secondary: Color(0xffFACC1D),
        onPrimary: Colors.white),
    useMaterial3: true,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xff141A2E),
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xffFACC1D),
        selectedIconTheme: IconThemeData(size: 36),
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'ElMessiri',
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'ElMessiri',
        )),
  );
}
