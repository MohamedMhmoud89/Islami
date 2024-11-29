import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:islami/sharedPreferences/SharedPrefs.dart';
import 'package:islami/ui/chapterDetials/Chapter_Details_Screen.dart';
import 'package:islami/ui/hadethDetials/HadethDetialsScreen.dart';
import 'package:islami/ui/home/HomeScreen.dart';
import 'package:islami/ui/splash/SplashScreen.dart';
import 'package:islami/ui/theme/MyThemeData.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefs.prefs = await SharedPreferences.getInstance();
  runApp(
    ChangeNotifierProvider(
      create: (buildContext) => SettingProvider()..init(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: settingProvider.currentTheme,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: settingProvider.currentLanguage,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetialsScreen.routeName: (_) => HadethDetialsScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
