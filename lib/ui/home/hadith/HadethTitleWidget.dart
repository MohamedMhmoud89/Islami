import 'package:flutter/material.dart';
import 'package:islami/ui/hadethDetials/HadethDetialsScreen.dart';
import 'package:islami/ui/home/hadith/hadeth.dart';
import 'package:islami/ui/theme/MyThemeData.dart';

class Hadethtitlewidget extends StatelessWidget {
  Hadeth hadeth;

  Hadethtitlewidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(HadethDetialsScreen.routeName,
            arguments: HadethDetailsScreenArg(hadeth.content, hadeth.title));
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: MyThemeData.isDarkEnable ? Colors.white : Color(0XFF242424),
            fontFamily: 'ElMessiri',
            fontSize: width * 0.06),
      ),
    );
  }
}
