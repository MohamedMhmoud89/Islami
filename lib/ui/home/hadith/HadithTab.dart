import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:islami/ui/home/hadith/HadethTitleWidget.dart';
import 'package:islami/ui/home/hadith/hadeth.dart';
import 'package:provider/provider.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    if (allHadethList.isEmpty) {
      readHadethFile();
    }
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/hadith_header_icn.png'),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Theme.of(context).dividerColor,
            ),
          ),
        ),
        Text(
          'الأحاديث',
          style: TextStyle(
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.w400,
              color: provider.currentTheme == ThemeMode.dark
                  ? Colors.white
                  : Color(0XFF242424),
              fontSize: 24),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Theme.of(context).dividerColor,
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: allHadethList.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return Hadethtitlewidget(allHadethList[index]);
                    },
                    separatorBuilder: (context, index) => Divider(
                          color: Theme.of(context).dividerColor,
                          height: 10,
                          thickness: 1.5,
                          endIndent: 10,
                          indent: 10,
                        ),
                    itemCount: allHadethList.length))
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> hadethList = [];
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> splittedContent = fileContent.split('#');
    for (int i = 0; i < splittedContent.length; i++) {
      String singleHadeth = splittedContent[i];
      List<String> lines = singleHadeth.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
    }
    await Future.delayed(Duration(seconds: 1));
    allHadethList = hadethList;
    setState(() {});
  }
}
