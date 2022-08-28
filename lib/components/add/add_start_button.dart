import 'package:flutter/material.dart';

class AddStartButton extends StatefulWidget {
  const AddStartButton({Key? key}) : super(key: key);

  @override
  AddStartButtonState createState() => AddStartButtonState();
}

class AddStartButtonState extends State<AddStartButton> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder()), // 타원 모양 만들기
            child: const Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
              child: Text(
                'START',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
