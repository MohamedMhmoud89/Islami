import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbihCount = 0;
  List<String> tasbihName = [
    "سبحان الله ",
    'الحمد لله',
    'الله اكبر',
    'لا إله إلا الله'
  ];
  int tasbihNameIndex = 0;
  double digree = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  right: width * 0.2,
                  bottom: height * 0.24,
                  child: Image.asset(
                    height: height * 0.09,
                    'assets/images/head of seb7a.png',
                    fit: BoxFit.fill,
                  )),
              Transform.rotate(
                  angle: digree,
                  child: GestureDetector(
                      onTap: () {
                        tasbih();
                      },
                      child: Image.asset(
                        'assets/images/body of seb7a.png',
                        height: height * 0.3,
                      )))
            ],
          ),
          Text(
            'عدد التسبيحات',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.57),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(
              '$tasbihCount',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    tasbihCount = 0;
                    tasbihNameIndex = 0;
                    setState(() {});
                  },
                  child: Icon(
                    Icons.refresh_rounded,
                    size: 42,
                    color: Theme.of(context).primaryColor,
                  )),
              SizedBox(
                width: width * 0.06,
              ),
              GestureDetector(
                onTap: () {
                  tasbih();
                },
                child: Container(
                  width: 135,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      tasbihName[tasbihNameIndex],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void tasbih() {
    if (tasbihCount == 33) {
      if (tasbihNameIndex == 3) {
        tasbihCount = 0;
        tasbihNameIndex = 0;
      } else {
        tasbihCount = 0;
        tasbihNameIndex++;
      }
    } else {
      tasbihCount++;
      digree++;
    }
    setState(() {});
  }
}
