import 'package:intl/intl.dart';

String getMonthDateStringFromDate(DateTime date) {
  var dateFormatter = DateFormat.MMMMd();
  return dateFormatter.format(date);
}

String getMonthYearDateAndTime(DateTime date) {
  var dateFormatter = DateFormat.yMd().add_jm();
  return dateFormatter.format(date);
}