import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:async';
import 'package:flutter/material.dart';

import './home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      // moveToHome();
    });
  }

  void moveToHome() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomeScreen(
              title: 'Flutter_Health',
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey[900],
      child: const Center(
        child: Text(
          '300대 500',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    ));
  }
}
