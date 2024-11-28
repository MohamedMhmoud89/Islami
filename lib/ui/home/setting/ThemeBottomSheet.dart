import 'package:flutter/material.dart';
import 'package:islami/ui/theme/MyThemeData.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        color: MyThemeData.isDarkEnable ? Color(0xff141A2E) : Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          selectedItem('Light'),
          SizedBox(
            height: 10,
          ),
          unSelectedItem('Dark')
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
