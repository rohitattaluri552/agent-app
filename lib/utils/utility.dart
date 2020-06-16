import 'package:intl/intl.dart';

String formatDatetime(DateTime dt, {String format = "EEE d MMM - h:mm a"}) =>
    dt != null ? DateFormat(format).format(dt) : '';

String timeRange(DateTime start, DateTime end) {
  if (start == null || end == null) {
    return ' - ';
  }
  final String startTime = formatDatetime(start.toLocal(), format: 'h:mm a');
  final String endTime = formatDatetime(end.toLocal(), format: 'h:mm a');
  return '$startTime - $endTime';
}