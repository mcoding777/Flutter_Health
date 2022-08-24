import 'package:flutter/material.dart';

import '../../models/record.dart';

class HomeRecordCard extends StatefulWidget {
  const HomeRecordCard({Key? key, required this.record}) : super(key: key);

  final dynamic record;

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
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.record['date'],
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: widget.record['record']
                      .map<TableRow>((item) => TableRow(children: <Widget>[
                            Text(
                              item['workout'],
                              style: const TextStyle(color: Colors.black),
                            ),
                            Text(
                              item['max(kg)'],
                              style: const TextStyle(color: Colors.black),
                            ),
                            Text(
                              item['rep'],
                              style: const TextStyle(color: Colors.black),
                            ),
                          ]))
                      .toList())
            ],
          );
        }),
      );
    });
  }
}
