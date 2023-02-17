import 'package:flutter/material.dart';

class Utils {
  //Todo: Making Function for TextformField When Focus & UnFocus//
  static void fieldFocusChnage(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
