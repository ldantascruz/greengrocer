import 'package:intl/intl.dart';

class UtilsServices {
  // R$ valor

  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(price);
  }
}
