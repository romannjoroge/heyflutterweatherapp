import 'package:intl/intl.dart';

String getMonthDateStringFromDate(DateTime date) {
  var dateFormatter = DateFormat.MMMMd();
  return dateFormatter.format(date);
}