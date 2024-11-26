import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami/api/apiManager.dart';
import 'package:islami/model/RadioList.dart';
import 'package:islami/ui/home/radio/radioWidget.dart';

class RadioTab extends StatefulWidget {
  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  late AudioPlayer player;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
            flex: 1, child: Image.asset('assets/images/radio_Screen_icn.png')),
        Expanded(
          flex: 3,
          child: FutureBuilder<List<Radios>?>(
            future: ApiManager().getRadioList(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.separated(
                    itemBuilder: (context, index) => RadioWidget(
                          radios: snapshot.data![index],
                          player: player,
                        ),
                    separatorBuilder: (context, index) => Divider(
                          color: Theme.of(context).primaryColor,
                          height: 10,
                          thickness: 2,
                          indent: 10,
                          endIndent: 10,
                        ),
                    itemCount: snapshot.data!.length);
              }
            },
          ),
        )
      ],
    );
  }
}
