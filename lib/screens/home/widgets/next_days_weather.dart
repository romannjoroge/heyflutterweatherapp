import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hey_flutter_weather_app/helpers/dates.dart';
import 'package:hey_flutter_weather_app/helpers/weather_conditions.dart';
import 'package:hey_flutter_weather_app/models/weather_conditions.dart';

// The widget is meant to display the weather of the next four days weather
class NextDaysWeatherWidget extends StatelessWidget {
  final NextDaysWeather day1Weather;
  final NextDaysWeather day2Weather;
  final NextDaysWeather day3Weather;
  final NextDaysWeather day4Weather;
  
  const NextDaysWeatherWidget({
    required this.day1Weather,
    required this.day2Weather,
    required this.day3Weather,
    required this.day4Weather,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(83, 83, 83, 0.6),
        borderRadius: BorderRadius.circular(24)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
        ],
      )
    );
  }
}

class IndividualNextDayWeatherWidget extends StatelessWidget {
  final NextDaysWeather daysData;

  const IndividualNextDayWeatherWidget({
    required this.daysData,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Date
        Text(
          getMonthDateStringFromDate(daysData.date),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400
          ),
        ),
        // Weather Condition Icon
        SvgPicture.asset(
          getNextDayWeatherConditionIcon(daysData.weatherCondition),
          semanticsLabel: getWeatherConditionName(daysData.weatherCondition),
          width: 30,
          height: 30,
        ),
        // Temperature
        Text(
          '${daysData.temperature}',
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400
          ),
        ),
        // Wind speed
        Text(
          '${daysData.bottomWindSpeed}-${daysData.topWindSpeed}',
          style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w400
          ),
        ),
        const Text(
          'km/h',
          style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w400
          ),
        ),
      ],
    );
  }
}

