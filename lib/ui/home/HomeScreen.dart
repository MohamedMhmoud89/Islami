import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadith/HadithTab.dart';
import 'package:islami/ui/home/quran/QuranTab.dart';
import 'package:islami/ui/home/radio/RadioTab.dart';
import 'package:islami/ui/home/sebha/SebhaTab.dart';

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
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              selectedIndexTab = index;
              setState(() {});
            },
            currentIndex: selectedIndexTab,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/hadith_icn.png")),
                  label: 'Hadith'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),
                  label: 'Radio'),
            ]),
        body: tabs[selectedIndexTab],
      ),
    );
  }

  List<Widget> tabs = [QuranTab(), HadithTab(), SebhaTab(), RadioTab()];
}
