// Class to store the data to display for next days weather
import 'package:hey_flutter_weather_app/helpers/weather_conditions.dart';

class NextDaysWeather {
  final DateTime date;
  final WeatherCondition weatherCondition;
  final double temperature;
  final double bottomWindSpeed;
  final double topWindSpeed;

  const NextDaysWeather({
    required this.date,
    required this.weatherCondition,
    required this.temperature,
    required this.bottomWindSpeed,
    required this.topWindSpeed
  });
}