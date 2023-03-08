import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {

  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {

    try {
      Response response = await get('http://worldtimeapi.org/api/timezone/$url' as Uri);
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['offset'].substring(1,3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = DateFormat.jm().format(now);
    }catch(e) {
      print('error message $e');
      time = 'could not get time date';
    }

   
  }
}