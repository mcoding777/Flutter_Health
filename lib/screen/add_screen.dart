import 'package:flutter/material.dart';

import '../components/add/add_start_button.dart';
import '../components/add/add_template_button.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 120,
          child: AddStartButton(),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Template +',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              AddTemplateButton(),
              Text('Template2'),
            ],
          ),
        ),
      ],
    );
  }
}
