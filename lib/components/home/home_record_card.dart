import 'package:flutter/material.dart';

class HomeRecordCard extends StatefulWidget {
  const HomeRecordCard({Key? key}) : super(key: key);

  @override
  HomeRecordCardState createState() => HomeRecordCardState();
}

class HomeRecordCardState extends State<HomeRecordCard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          color: Colors.white,
        ),
        width: (constraints.maxWidth / 2),
        height: (100),
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
