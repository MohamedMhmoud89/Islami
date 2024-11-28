import 'package:flutter/material.dart';
import 'package:islami/ui/theme/MyThemeData.dart';

class VersWidget extends StatelessWidget {
  String content;
  int index;
  VersWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          color:
              MyThemeData.isDarkEnable ? Color(0xffFACC1D) : Color(0XFF242424),
          fontSize: 20,
          fontFamily: 'Elgharib'),
    );
  }
}
