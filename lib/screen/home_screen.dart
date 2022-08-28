import 'package:flutter/material.dart';

import '../components/home/home_record_card.dart';
import '../components/home/home_toggle_button.dart';
import '../models/dummy.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        children: [
          const Align(
              alignment: Alignment.centerRight, child: HomeToggleButton()),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 500, // ListView를 쓰려면 높이를 지정해야 함
                child: ListView(
                  children: homeSampleData
                      .map((item) => HomeRecordCard(record: item))
                      .toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
