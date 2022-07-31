import 'package:flutter/material.dart';
import 'package:health/screen/splash_screen.dart';

import './screen/splash_screen.dart';
import './style/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black26,
            selectedIconTheme: IconThemeData(
              size: 30,
              color: selectedColor,
            ),
          ),
        ),
        home: const SplashScreen());
  }
}
