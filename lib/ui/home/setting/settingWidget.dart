import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  String title;
  String choose;

  SettingWidget({required this.title, required this.choose});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                width: 2,
                color: Theme.of(context).primaryColor,
              )),
          child: Text(
            choose,
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
