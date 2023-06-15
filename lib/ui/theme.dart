import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: Colors.blueGrey.shade900,
  primaryColor: Colors.amber,
  appBarTheme: AppBarTheme(backgroundColor: Colors.blueGrey.shade900),
  textTheme: TextTheme(
    displayLarge: TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,
  ),
  ),
);