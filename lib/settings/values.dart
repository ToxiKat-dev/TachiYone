import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ValueNotifier<bool> useSystemTheme = ValueNotifier<bool>(true);
ValueNotifier<bool> isDarkTheme = ValueNotifier<bool>(false);

void initValues() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  useSystemTheme.value = prefs.getBool("useSystemTheme") ?? true;
  isDarkTheme.value = prefs.getBool("isDarkTheme") ?? false;

  useSystemTheme.addListener(
    () async {
      await prefs.setBool('useSystemTheme', useSystemTheme.value);
    },
  );
  isDarkTheme.addListener(
    () async {
      await prefs.setBool('isDarkTheme', isDarkTheme.value);
    },
  );
}

void clearValues() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
  initValues();
}
