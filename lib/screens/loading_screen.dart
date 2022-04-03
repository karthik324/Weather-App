// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:geolocator/geolocator.dart';
import 'package:weather_app/services/location.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    debugPrint(location.latitute.toString());
    debugPrint(location.longitude.toString());
  }

  void getData() async {
    var url = Uri.https('openweathermap.org', '/current', {
      'https':
          '//api.openweathermap.org/data/2.5/onecall?lat=10.01&lon=76.36&exclude=hourly,daily&appid=98862b0bc021251b06a12a482fbce3e4'
    });
    http.Response response = await http.get(url);
    String data = response.body;
    var lat = await jsonDecode(data)["lat"];
    print(lat);
    
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
