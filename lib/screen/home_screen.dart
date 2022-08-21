import 'package:flutter/material.dart';

import '../components/button/day_toggle_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: const [
          Align(alignment: Alignment.centerRight, child: DayToggleButton()),
          Text('Index 0: Home'),
        ],
      ),
    );
  }
}
