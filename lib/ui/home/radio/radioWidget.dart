import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami/model/RadioList.dart';
import 'package:islami/ui/theme/MyThemeData.dart';

class RadioWidget extends StatefulWidget {
  Radios radios;
  AudioPlayer player;

  RadioWidget({required this.radios, required this.player});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  bool isPlay = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isPlay
            ? IconButton(
                onPressed: () {
                  isPlay = false;
                  stop();
                  setState(() {});
                },
                icon: Icon(Icons.pause_rounded,
                    color: MyThemeData.isDarkEnable
                        ? Color(0xffFACC1D)
                        : Theme.of(context).primaryColor,
                    size: 42))
            : IconButton(
                onPressed: () {
                  isPlay = true;
                  play();
                  setState(() {});
                },
                icon: Icon(Icons.play_arrow_rounded,
                    color: MyThemeData.isDarkEnable
                        ? Color(0xffFACC1D)
                        : Theme.of(context).primaryColor,
                    size: 42)),
        SizedBox(
          width: width * 0.8,
          child: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Text(
              widget.radios.name ?? "",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontFamily: 'ElMessiri',
                  color: MyThemeData.isDarkEnable
                      ? Colors.white
                      : Color(0xff242424),
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }

  void play() async {
    await widget.player.play(UrlSource('${widget.radios.radioUrl}'));
  }

  void stop() async {
    await widget.player.stop();
  }
}
