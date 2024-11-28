import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/theme/MyThemeData.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: MyThemeData.isDarkEnable ? Color(0xff141A2E) : Color(0xffF8F8F8),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          selectedItem(AppLocalizations.of(context)!.arabic),
          SizedBox(
            height: 10,
          ),
          unSelectedItem(AppLocalizations.of(context)!.english),
        ],
      ),
    );
  }

  Widget selectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontFamily: 'ElMessiri',
              fontSize: 20,
              color: MyThemeData.isDarkEnable
                  ? Color(0xffFACC1D)
                  : Theme.of(context).primaryColor),
        ),
        Icon(
          Icons.check,
          color: MyThemeData.isDarkEnable
              ? Color(0xffFACC1D)
              : Theme.of(context).primaryColor,
        ),
      ],
    );
  }

  Widget unSelectedItem(String text) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 20,
        color: MyThemeData.isDarkEnable ? Color(0xffF8F8F8) : Color(0xff242424),
      ),
    );
  }
}
