import 'package:flutter/material.dart';
import 'package:islami/provider/SettingProvider.dart';
import 'package:islami/ui/home/quran/ChapterTitleWidghet.dart';
import 'package:provider/provider.dart';

class QuranTab extends StatelessWidget {
  List<String> name = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Column(
      children: [
        Expanded(
            flex: 1,
            child:
                Image(image: AssetImage('assets/images/quran_header_icn.png'))),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
            width: 1,
            color: Theme.of(context).dividerColor,
          )),
        ),
        Text(
          'اسم السوره',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: provider.currentTheme == ThemeMode.dark
                  ? Colors.white
                  : Color(0XFF242424),
              fontFamily: 'ElMessiri',
              fontSize: 24),
        ),
        Container(
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: Theme.of(context).dividerColor)),
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ChapterTitleWidget(name[index], index);
              },
              separatorBuilder: (context, index) => Divider(
                    color: Theme.of(context).dividerColor,
                    height: 10,
                    thickness: 1.5,
                    endIndent: 10,
                    indent: 10,
                  ),
              itemCount: name.length),
        )
      ],
    );
  }
}
