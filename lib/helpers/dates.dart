import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

String getMonthDateStringFromDate(DateTime date) {
  var dateFormatter = DateFormat.MMMMd();
  return dateFormatter.format(date);
}

String getMonthYearDateAndTime(DateTime date) {
  var dateFormatter = DateFormat.yMd().add_jm();
  return dateFormatter.format(date);
}

String getWeekdayAndDay(DateTime date) {
  var dateFormatter = DateFormat("EEE d");
  return dateFormatter.format(date);
}

const lastUpdatedKey = "LAST_UPDATED";

// Sets the provided time as the last updated of the app
Future<void> setLastUpdated(DateTime lastUpdated) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(lastUpdatedKey, lastUpdated.toIso8601String());
}

Future<DateTime> getLastUpdated() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  var lastUpdated = prefs.getString(lastUpdatedKey);
  if (lastUpdated == null) {
    await setLastUpdated(DateTime.now());
    return DateTime.now();
  } else {
    return DateTime.parse(lastUpdated);
  }
}

