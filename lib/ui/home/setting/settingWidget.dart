import 'package:flutter/material.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:provider/provider.dart';

class SettingWidget extends StatelessWidget {
  String title;
  String choose;

  SettingWidget({required this.title, required this.choose});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var provider = Provider.of<SettingProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'ElMessiri',
                color: provider.currentTheme == ThemeMode.dark
                    ? Color(0xffF8F8F8)
                    : Color(0xff242424)),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: provider.currentTheme == ThemeMode.dark
                  ? Color(0xff141A2E)
                  : Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                width: 2,
                color: Theme.of(context).primaryColor,
              )),
          child: Text(
            choose,
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'ElMessiri',
                color: provider.currentTheme == ThemeMode.dark
                    ? Color(0xffF8F8F8)
                    : Color(0xff242424)),
          ),
        )
      ],
    );
  }
}
