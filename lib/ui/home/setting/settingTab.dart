import 'package:flutter/material.dart';
import 'package:islami/ui/home/setting/LanguageBottomSheet.dart';
import 'package:islami/ui/home/setting/ThemeBottomSheet.dart';
import 'package:islami/ui/home/setting/settingWidget.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.15),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  showThemeBottomSheet();
                },
                child: SettingWidget(
                  title: 'Theme',
                  choose: 'Light',
                )),
            SizedBox(
              height: height * 0.05,
            ),
            GestureDetector(
                onTap: () {
                  howLanguageBottomSheet();
                },
                child: SettingWidget(
                  title: 'Language',
                  choose: 'English',
                )),
          ],
        ));
  }

  void howLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }
}
