import 'package:flutter/material.dart';

import '../../models/record.dart';

class HomeRecordCard extends StatefulWidget {
  const HomeRecordCard({Key? key, required this.record}) : super(key: key);

  final TodayRecord record;

  @override
  HomeRecordCardState createState() => HomeRecordCardState();
}

class HomeRecordCardState extends State<HomeRecordCard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            5.0,
          ),
          color: Colors.white,
        ),
        width: constraints.maxWidth,
        height: (200),
        child: Column(
          children: const [
            Text('1', style: TextStyle(color: Colors.black)),
            Text('2', style: TextStyle(color: Colors.black)),
            Text('3', style: TextStyle(color: Colors.black)),
          ],
        ),
      );
    });
  }
}
