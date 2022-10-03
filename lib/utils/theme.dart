
import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData buildThemeData() {

  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
              color: kSecondaryColor
          ),

      ),
      backgroundColor: Colors.white,
      textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.redAccent),
          bodyText2: TextStyle(color: kTextColor)));
}