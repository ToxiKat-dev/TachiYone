import 'package:flutter/material.dart';
import 'package:tachiyone/settings/themes.dart';
import 'package:tachiyone/settings/values.dart';
import 'package:tachiyone/views/homepage.dart';

void main() {
  initValues();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final LightTheme lightTheme = LightTheme();
  final DarkTheme darkTheme = DarkTheme();

  @override
  void initState() {
    super.initState();
    useSystemTheme.addListener(() {
      setState(() {});
    });
    isDarkTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TachiYone",
      theme: lightTheme.materialTheme,
      darkTheme: darkTheme.materialTheme,
      themeMode: useSystemTheme.value
          ? ThemeMode.system
          : isDarkTheme.value
              ? ThemeMode.dark
              : ThemeMode.light,
      home: const HomePage(),
    );
  }
}
