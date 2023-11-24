import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hey_flutter_weather_app/helpers/dates.dart';
import 'package:http/http.dart' as http;
import 'city_data.dart';

const weatherAPIURL = "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline";

Future<Map<String, dynamic>> fetchWeatherData(City city) async {
  try {
    var today = formatDateToWeatherAPIStandard(DateTime.now());
    var fourDaysLater = DateTime.now().add(Duration(days: 4));
    var fourDaysLaterString = formatDateToWeatherAPIStandard(fourDaysLater);

    var response = await http.get(
      Uri.parse("$weatherAPIURL/${getAddressFromCity(city)}/$today/$fourDaysLaterString/key=${dotenv.env['WEATHER_API_KEY']}")
    );

    if (response.statusCode != 200) {
      throw "Non Succesful Request";
    }

    return jsonDecode(response.body);
  } catch(err) {
    throw "Could Not Get Weather Data";
  }
}