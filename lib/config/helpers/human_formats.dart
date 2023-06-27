import 'package:intl/intl.dart';

class HumanFormats {
  // * static: permite usar el metodo sin crear una instancia de la clase
  static String humanReadableNumber( double number ) {

    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number) ;

    return formatterNumber;
  }
}