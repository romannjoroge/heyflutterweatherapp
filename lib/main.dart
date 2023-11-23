import 'package:flutter/material.dart';
import 'package:hey_flutter_weather_app/helpers/city_data.dart';
import 'package:hey_flutter_weather_app/screens/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(selectedCity: City.paris,)
      )
    );
  }
}



void main() {
  runApp(const MyApp());
}