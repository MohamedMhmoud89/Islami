import 'package:flutter/material.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:islami/ui/home/HomeScreen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        child: Image.asset(
          provider.currentTheme == ThemeMode.dark
              ? 'assets/images/splash_dark_image.png'
              : 'assets/images/splash_background.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
