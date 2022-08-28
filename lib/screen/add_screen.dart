import 'package:flutter/material.dart';

import '../components/add/add_start_button.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 200,
          child: AddStartButton(),
        ),
      ],
    );
  }
}
