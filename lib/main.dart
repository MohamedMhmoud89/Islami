import 'package:flutter/material.dart';
import 'package:islami/ui/chapterDetials/Chapter_Details_Screen.dart';
import 'package:islami/ui/hadethDetials/HadethDetialsScreen.dart';
import 'package:islami/ui/home/HomeScreen.dart';
import 'package:islami/ui/theme/MyThemeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetialsScreen.routeName: (_) => HadethDetialsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
