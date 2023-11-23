import 'package:flutter/material.dart';
import 'package:hey_flutter_weather_app/helpers/city_data.dart';

class Home extends StatelessWidget {
  final City selectedCity;

  const Home({
    required this.selectedCity,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image of City
        Image.asset(
            getImage(City.paris),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill
        ),
        // Name of city
        Positioned(
          top: 30,
          left: 30,
          child: Row(
            children: [
              const Icon(Icons.access_alarm, color: Colors.white,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  getCityName(selectedCity),
                  style: const TextStyle(color: Colors.white, fontSize: 16.0),
                )
              )
            ],
          ),
        )
      ],
    );
  }
}
