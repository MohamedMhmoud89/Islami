import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:islami/ui/home/hadith/HadithTab.dart';
import 'package:islami/ui/home/quran/QuranTab.dart';
import 'package:islami/ui/home/radio/RadioTab.dart';
import 'package:islami/ui/home/sebha/SebhaTab.dart';
import 'package:islami/ui/home/setting/settingTab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.changeBackgroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_name),
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
                      label: AppLocalizations.of(context)!.quran),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage("assets/images/hadith_icn.png")),
                      label: AppLocalizations.of(context)!.hadith),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage("assets/images/sebha_icn.png")),
                      label: AppLocalizations.of(context)!.tasbeh),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage("assets/images/radio_icn.png")),
                      label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(
                      backgroundColor: Theme.of(context).primaryColor,
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.setting),
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
