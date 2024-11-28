import 'package:flutter/material.dart';
import 'package:islami/ui/theme/MyThemeData.dart';

class Hadethwidget extends StatelessWidget {
  String hadethContent;

  Hadethwidget(this.hadethContent);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        hadethContent,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: MyThemeData.isDarkEnable
                ? Color(0xffFACC1D)
                : Color(0XFF242424),
            fontSize: 20,
            fontFamily: 'Elgharib'),
      ),
    );
  }
}
