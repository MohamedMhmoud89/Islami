import 'package:flutter/material.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:islami/ui/hadethDetials/HadethWidget.dart';
import 'package:provider/provider.dart';

class HadethDetialsScreen extends StatelessWidget {
  static const String routeName = 'hadethDetials';

  @override
  Widget build(BuildContext context) {
    HadethDetailsScreenArg arg =
        ModalRoute.of(context)?.settings.arguments as HadethDetailsScreenArg;
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.changeBackgroundImage()),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.hadethTitle),
        ),
        body: Card(
          elevation: 0,
          margin: EdgeInsets.only(left: 29, right: 29, bottom: 100, top: 30),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Hadethwidget(arg.hadethConent)),
        ),
      ),
    );
  }
}

class HadethDetailsScreenArg {
  String hadethConent;
  String hadethTitle;

  HadethDetailsScreenArg(this.hadethConent, this.hadethTitle);
}
