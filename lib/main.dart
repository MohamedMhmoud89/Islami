import 'package:flutter/material.dart';
import 'package:islami/ui/chapterDetials/Chapter_Details_Screen.dart';
import 'package:islami/ui/hadethDetials/HadethDetialsScreen.dart';
import 'package:islami/ui/home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          cardTheme: CardTheme(
              color: Color(0xffF8F8F8).withOpacity(0.6),
              elevation: 18,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18))),
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(size: 32, color: Colors.black),
              centerTitle: true,
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ElMessiri',
                  fontSize: 30,
                  fontWeight: FontWeight.w700)),
          scaffoldBackgroundColor: Colors.transparent,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color(0xffB7935F),
              primary: Color(0xffB7935F),
              onPrimary: Colors.white),
          useMaterial3: true,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              selectedIconTheme: IconThemeData(size: 32),
              selectedLabelStyle:
                  TextStyle(fontSize: 12, fontWeight: FontWeight.w400))),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetialsScreen.routeName: (_) => HadethDetialsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
