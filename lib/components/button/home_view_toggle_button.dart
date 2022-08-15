import 'package:flutter/material.dart';
import 'package:health/models/button.dart';

class HomeViewToggleButton extends StatefulWidget {
  const HomeViewToggleButton({Key? key}) : super(key: key);

  @override
  State<HomeViewToggleButton> createState() => _HomeViewToggleButtonState();
}

class _HomeViewToggleButtonState extends State<HomeViewToggleButton> {
  List<Button> buttons = <Button>[
    Button(widget: const Text("연도별"), isSelected: false),
    Button(widget: const Text("월별"), isSelected: false),
    Button(widget: const Text("일별"), isSelected: true),
  ];

  List<Button> updateButtons(int index, Button button) {
    List<Button> newButtons = [...buttons];
    newButtons[index] = button;
    return newButtons;
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      onPressed: (int index) {
        List<Button> newButtons = [...buttons];
        // 각 버튼을 돌면서 isSelected 값 변경하기
        for (int buttonIndex = 0; buttonIndex < buttons.length; buttonIndex++) {
          Button newButton = Button(
              widget: buttons[buttonIndex].widget,
              isSelected: buttons[buttonIndex].isSelected);
          if (buttonIndex == index) {
            newButton.isSelected = true;
          } else {
            newButton.isSelected = false;
          }
          newButtons[buttonIndex] = newButton;
        }
        setState(() {
          buttons = newButtons;
        });
      },
      isSelected: buttons.map((e) => e.isSelected).toList(),
      children: buttons.map((e) => e.widget).toList(),
    );
  }
}
