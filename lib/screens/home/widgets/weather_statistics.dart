import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherStatisticsWidget extends StatelessWidget {
  final double humidity;
  final double wind;
  final double temp;

  const WeatherStatisticsWidget({
    required this.humidity,
    required this.wind,
    required this.temp,
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IndividualWeatherStatistic(statistic: "$humidity%", svgLocation: "assets/svgs/humidity-svgrepo-com.svg", weatherStatisticType: "HUMIDITY"),
          IndividualWeatherStatistic(statistic: "$wind km/h", svgLocation: "assets/svgs/wind-svgrepo-com.svg", weatherStatisticType: "WIND"),
          IndividualWeatherStatistic(statistic: "$temp", svgLocation: "assets/svgs/thermometer-02-svgrepo-com.svg", weatherStatisticType: "FEELS LIKE"),
        ],
      ),
    );
  }
}

// Displays the column that shows either the humidity, wind or temp
class IndividualWeatherStatistic extends StatelessWidget {
  final String svgLocation;
  final String weatherStatisticType;
  final String statistic;

  const IndividualWeatherStatistic({
    required this.statistic,
    required this.svgLocation,
    required this.weatherStatisticType,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          svgLocation,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          width: 30,
          height: 30,
        ),
        Text(
          weatherStatisticType,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14
          ),
        ),
        Text(
          statistic,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}

