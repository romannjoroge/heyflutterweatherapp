import 'package:hey_flutter_weather_app/helpers/dates.dart';
import 'package:hey_flutter_weather_app/helpers/weather_conditions.dart';

// An object that will hold the following details from the APIs response
class CurrentDaysWeather {
  final DateTime currentTime;
  final DateTime lastUpdated;
  final WeatherCondition condition;
  final double temperature;

  CurrentDaysWeather({
    required this.lastUpdated,
    required this.condition,
    required this.temperature,
  }): currentTime = DateTime.now();

  // Get the following information from JSON
  static Future<CurrentDaysWeather> getFromJSON(Map json) async {
    try {
      var lastUpdated = await getLastUpdated();
      var condition = parseConditionFromDescription(json['conditions'] ?? 'clear');
      var temperature = json['temp'];
      return CurrentDaysWeather(lastUpdated: lastUpdated, condition: condition, temperature: temperature);
    } catch(err) {
      throw "Could Not Get Current Weather";
    }
  }
}