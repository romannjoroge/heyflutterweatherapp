import 'package:flutter/material.dart';
import 'package:hey_flutter_weather_app/helpers/city_data.dart';
import 'package:hey_flutter_weather_app/helpers/weather_conditions.dart';
import 'package:hey_flutter_weather_app/models/weather_conditions.dart';
import 'package:hey_flutter_weather_app/screens/home/widgets/date_and_last_updated.dart';
import 'package:hey_flutter_weather_app/screens/home/widgets/location_name_and_dropdown.dart';
import 'package:hey_flutter_weather_app/screens/home/widgets/next_days_weather.dart';
import 'package:hey_flutter_weather_app/screens/home/widgets/weather_description.dart';
import 'package:hey_flutter_weather_app/screens/home/widgets/weather_statistics.dart';

class Home extends StatelessWidget {
  final City selectedCity;

  const Home({required this.selectedCity, super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        // Image of City
        ColorFiltered(
          colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.modulate),
          child: Image.asset(
            getImage(selectedCity),
            width: screenWidth,
            height: screenHeight,
            fit: BoxFit.fill,
          ),
        ),
        // Name of city
        Positioned(
          top: 50,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LocationAndDropDown(
                        locationName: getCityName(selectedCity)),
                    const SizedBox(height: 50),
                    CurrentDateAndLastUpdated(
                      lastUpdated: DateTime.now(),
                    ),
                    const SizedBox(height: 50),
                    const WeatherConditionWidget(
                        condition: WeatherCondition.clouds, temperature: 24.0),
                    const SizedBox(height: 50),
                    const WeatherStatisticsWidget(
                        humidity: 56, wind: 4.63, temp: 22),
                    const SizedBox(height: 20,),
                    NextDaysWeatherWidget(
                      day1Weather: NextDaysWeather(date: DateTime.now(), weatherCondition: WeatherCondition.clouds, temperature: 22, bottomWindSpeed: 1, topWindSpeed: 5),
                      day2Weather: NextDaysWeather(date: DateTime.now(), weatherCondition: WeatherCondition.clear, temperature: 25, bottomWindSpeed: 1, topWindSpeed: 5),
                      day3Weather: NextDaysWeather(date: DateTime.now(), weatherCondition: WeatherCondition.thunderstorm, temperature: 23, bottomWindSpeed: 5, topWindSpeed: 10),
                      day4Weather: NextDaysWeather(date: DateTime.now(), weatherCondition: WeatherCondition.mist, temperature: 25, bottomWindSpeed: 1, topWindSpeed: 5),
                    )
                  ],
                ),
              )),
        )
      ],
    );
  }
}
