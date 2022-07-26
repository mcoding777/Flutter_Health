import 'dart:async';
import 'package:flutter/material.dart';

import './home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      moveToHome();
    });
  }

  void moveToHome() {
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Container(
              color: Colors.grey[900],
              child: Center(child: Image.asset('images/logo_light.png')),
            )
          : const HomeScreen(),
    );
  }
}
