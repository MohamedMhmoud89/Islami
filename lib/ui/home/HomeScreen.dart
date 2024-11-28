import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadith/HadithTab.dart';
import 'package:islami/ui/home/quran/QuranTab.dart';
import 'package:islami/ui/home/radio/RadioTab.dart';
import 'package:islami/ui/home/sebha/SebhaTab.dart';
import 'package:islami/ui/home/setting/settingTab.dart';
import 'package:islami/ui/theme/MyThemeData.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.isDarkEnable
                  ? 'assets/images/home_dark_background.jpg'
                  : 'assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  selectedIndexTab = index;
                  setState(() {});
                },
                currentIndex: selectedIndexTab,
                items: [
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage("assets/images/quran_icn.png")),
                      label: 'Quran'),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage("assets/images/hadith_icn.png")),
                      label: 'Hadith'),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage("assets/images/sebha_icn.png")),
                      label: 'Sebha'),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage("assets/images/radio_icn.png")),
                      label: 'Radio'),
                  BottomNavigationBarItem(
                      backgroundColor: Theme.of(context).primaryColor,
                      icon: Icon(Icons.settings),
                      label: 'Setting'),
                ]),
          ),
        ),
        body: tabs[selectedIndexTab],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingTab()
  ];
}
