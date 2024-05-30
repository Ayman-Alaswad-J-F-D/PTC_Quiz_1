import 'package:intl/intl.dart';

class DateHelper {
  static const String _specialFormat = "d-MMM, y";

  static String formatDateTime(String established) =>
      _fromSpecialFormat().format(_convertToDateTime(established));

  static String formatUTC(String dateString) =>
      _fromSpecialFormat().parse(dateString).toUtc().toString();

  static DateFormat _fromSpecialFormat() => DateFormat(_specialFormat);

  static DateTime _convertToDateTime(String formattedString) =>
      DateTime.parse(formattedString);
}
