import 'package:intl/intl.dart';

extension DoubleUtils on double
{
  String formatNumber() {
    return NumberFormat('#,##0.00', 'en_US').format(this);
  }

  String formatIntegerPart() {
    return NumberFormat('#,##0', 'en_US').format(floor());
  }

  String formatDecimalPart() {
    return NumberFormat('00', 'en_US').format((this * 100).toInt() % 100);
  }

}