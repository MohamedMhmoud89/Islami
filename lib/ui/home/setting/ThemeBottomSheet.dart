import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: settingProvider.currentTheme == ThemeMode.dark
            ? Color(0xff141A2E)
            : Color(0xffF8F8F8),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingProvider.changeTheme(ThemeMode.light);
              },
              child: settingProvider.currentTheme == ThemeMode.light
                  ? selectedItem(AppLocalizations.of(context)!.light,
                      settingProvider.currentTheme)
                  : unSelectedItem(AppLocalizations.of(context)!.light,
                      settingProvider.currentTheme)),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                settingProvider.changeTheme(ThemeMode.dark);
                print("the theme now is = ${settingProvider.currentTheme}");
              },
              child: settingProvider.currentTheme == ThemeMode.dark
                  ? selectedItem(AppLocalizations.of(context)!.dark,
                      settingProvider.currentTheme)
                  : unSelectedItem(AppLocalizations.of(context)!.dark,
                      settingProvider.currentTheme))
        ],
      ),
    );
  }

  Widget selectedItem(String text, ThemeMode theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontFamily: 'ElMessiri',
              fontSize: 20,
              color: theme == ThemeMode.dark
                  ? Color(0xffFACC1D)
                  : Theme.of(context).primaryColor),
        ),
        Icon(
          Icons.check,
          color: theme == ThemeMode.dark
              ? Color(0xffFACC1D)
              : Theme.of(context).primaryColor,
        ),
      ],
    );
  }

  Widget unSelectedItem(String text, ThemeMode theme) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 20,
        color: theme == ThemeMode.dark ? Color(0xffF8F8F8) : Color(0xff242424),
      ),
    );
  }
}
