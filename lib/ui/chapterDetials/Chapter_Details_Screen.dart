import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:islami/ui/chapterDetials/Vers_Widget.dart';
import 'package:provider/provider.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'chapterDetails';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetailsScreenArg arg =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsScreenArg;
    if (verses.isEmpty) {
      loadFile(arg.index);
    }
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.changeBackgroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(title: Text(arg.chapterName)),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Card(
                elevation: 0,
                margin:
                    EdgeInsets.only(left: 29, right: 29, bottom: 100, top: 30),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return VersWidget(verses[index], index);
                    },
                    itemCount: verses.length,
                  ),
                ),
              ),
      ),
    );
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    await Future.delayed(Duration(seconds: 2));
    verses = fileContent.split('\n');
    setState(() {});
  }
}

class ChapterDetailsScreenArg {
  String chapterName;
  int index;
  ChapterDetailsScreenArg(this.chapterName, this.index);
}
