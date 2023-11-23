import 'package:flutter/material.dart';
import 'package:hey_flutter_weather_app/helpers/city_data.dart';
import 'package:hey_flutter_weather_app/screens/home/widgets/date_and_last_updated.dart';
import 'package:hey_flutter_weather_app/screens/home/widgets/location_name_and_dropdown.dart';

class Home extends StatelessWidget {
  final City selectedCity;

  const Home({
    required this.selectedCity,
    super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        // Image of City
        Image.asset(
            getImage(City.paris),
            width: screenWidth,
            height: screenHeight,
            fit: BoxFit.fill
        ),
        // Name of city
        Positioned(
          top: screenHeight / 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SizedBox(
              height: screenHeight * 9 / 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LocationAndDropDown(locationName: getCityName(selectedCity)),
                  SizedBox(height: screenHeight / 12,),
                  CurrentDateAndLastUpdated(lastUpdated: DateTime.now(),)
                ],
              ),
            )
          ),
        )
      ],
    );
  }
}
