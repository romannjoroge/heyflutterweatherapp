import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hey_flutter_weather_app/helpers/weather_conditions.dart';

class WeatherConditionWidget extends StatelessWidget {
  final WeatherCondition condition;
  final double temperature;
  
  const WeatherConditionWidget({
    required this.condition,
    required this.temperature,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Icon
        SvgPicture.asset(
          getWeatherConditionIcon(condition),
          semanticsLabel: getWeatherConditionName(condition),
          width: 60,
          height: 60,
        ),
        const SizedBox(height: 5,),
        Text(
          getWeatherConditionName(condition),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 40
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          "$temperature",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 86
          ),
        ),
      ],
    );
  }
}
