import 'package:flutter/material.dart';

class AddTemplateButton extends StatefulWidget {
  const AddTemplateButton({Key? key}) : super(key: key);

  @override
  AddTemplateButtonState createState() => AddTemplateButtonState();
}

class AddTemplateButtonState extends State<AddTemplateButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              print('버튼 클릭');
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('Template1'),
          ),
        ],
      ),
    );
  }
}
