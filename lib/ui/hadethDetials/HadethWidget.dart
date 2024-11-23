import 'package:flutter/material.dart';

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
            color: Color(0XFF242424),
            fontSize: 20,
            fontFamily: 'Elgharib'),
      ),
    );
  }
}
