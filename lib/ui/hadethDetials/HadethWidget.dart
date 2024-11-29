import 'package:flutter/material.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:provider/provider.dart';

class Hadethwidget extends StatelessWidget {
  String hadethContent;

  Hadethwidget(this.hadethContent);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return SingleChildScrollView(
      child: Text(
        hadethContent,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: provider.currentTheme == ThemeMode.dark
                ? Color(0xffFACC1D)
                : Color(0XFF242424),
            fontSize: 20,
            fontFamily: 'Elgharib'),
      ),
    );
  }
}
