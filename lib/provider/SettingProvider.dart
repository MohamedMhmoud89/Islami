import 'package:flutter/material.dart';
import 'package:islami/sharedPreferences/SharedPrefs.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  Locale currentLanguage = Locale("en");

  void init() {
    String myTheme = SharedPrefs.getTheme();
    myTheme == 'dark' ? currentTheme = ThemeMode.dark : ThemeMode.light;
    currentLanguage = Locale(SharedPrefs.getLanguage());
  }

  void changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    SharedPrefs.setTheme(currentTheme == ThemeMode.dark ? "dark" : "light");
    notifyListeners();
  }

  String changeBackgroundImage() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/home_dark_background.jpg'
        : 'assets/images/main_background.png';
  }

  void changeLanguage(Locale newLanguage) {
    if (newLanguage == currentLanguage) return;
    currentLanguage = newLanguage;
    SharedPrefs.setLanguage(currentLanguage == Locale("en") ? "en" : "ar");
    notifyListeners();
  }
}
