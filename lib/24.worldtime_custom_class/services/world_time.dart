import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {

  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {

    Response response = await get('http://worldtimeapi.org/api/timezone/Europe/$url' as Uri);
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['offset'].substring(1,3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
  }
}