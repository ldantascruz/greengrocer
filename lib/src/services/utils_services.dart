import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class UtilsServices {
  // Método formatar valor R$ valor
  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(price);
  }

  // Método formatar data DD/MM/AAAA HH:MM
  String formatDateTime(DateTime dateTime) {
    initializeDateFormatting();

    DateFormat dateFormat = DateFormat.yMd('pt_BR').add_Hm();

    return dateFormat.format(dateTime);
  }

  // Método para apresentar o Toast
  void showToast({
    required String message,
    bool isError = false,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: isError ? Colors.red : Colors.white,
      textColor: isError ? Colors.white : Colors.black,
      fontSize: 14.0,
    );
  }
}
