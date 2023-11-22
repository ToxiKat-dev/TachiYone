import 'package:flutter/material.dart';

class LightTheme {
  final ThemeData materialTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
  );
}

class DarkTheme {
  final ThemeData materialTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}
