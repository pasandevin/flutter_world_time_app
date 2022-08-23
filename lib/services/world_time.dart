import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location; //location name for the UI
  late String time; //the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {

    try {
      //make the request
      Uri uri = Uri.https('worldtimeapi.org', '/api/timezone/$url');
      // print(uri);
      Response response = await get(uri);
      Map data = jsonDecode(response.body);
      // print(data);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      // print(datetime);
      // print(offset);

      //create a DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);

      //set the time property
      time = now.toString();
    }
    catch (e) {
      print('caught an error: $e');
      time = 'could not get time data';
    }


  }
}
