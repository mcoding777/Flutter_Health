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
            child: const Padding(
              padding: EdgeInsets.all(30),
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
