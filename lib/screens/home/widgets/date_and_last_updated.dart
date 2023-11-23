import 'package:flutter/material.dart';
import 'package:hey_flutter_weather_app/helpers/dates.dart';

class CurrentDateAndLastUpdated extends StatelessWidget {
  final DateTime lastUpdated;

  const CurrentDateAndLastUpdated({
    required this.lastUpdated,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          getMonthDateStringFromDate(DateTime.now()),
          style: TextStyle(
            color: Colors.white,
            fontSize: 40
          ),
        ),
        const SizedBox(height: 10,),
        Text(
          "Updated ${getMonthYearDateAndTime(lastUpdated)}",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
