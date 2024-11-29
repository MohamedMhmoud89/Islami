import 'package:flutter/material.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:islami/ui/chapterDetials/Chapter_Details_Screen.dart';
import 'package:provider/provider.dart';

class ChapterTitleWidget extends StatelessWidget {
  String suraName;
  int index;

  ChapterTitleWidget(this.suraName, this.index);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var provider = Provider.of<SettingProvider>(context);
    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsScreenArg(suraName, index));
      },
      child: Text(
        suraName,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: provider.currentTheme == ThemeMode.dark
                ? Colors.white
                : Color(0XFF242424),
            fontFamily: 'ElMessiri',
            fontSize: width * 0.06),
      ),
    );
  }
}
