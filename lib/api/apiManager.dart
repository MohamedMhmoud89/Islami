import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:islami/model/RadioList.dart';

class ApiManager {
  Future<List<Radios>?> getRadioList() async {
    try {
      final url = Uri.https('api.mp3quran.net', 'radios/radio_arabic.json');
      http.Response response = await http.get(url);
      var data = jsonDecode(utf8.decode(response.bodyBytes));
      RadioList radioList = RadioList.fromJson(data);
      return radioList.radios;
    } catch (e) {
      print(e);
    }
  }
}
