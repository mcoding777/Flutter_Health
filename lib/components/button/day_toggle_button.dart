import 'package:flutter/material.dart';
import 'package:health/models/button.dart';

class DayToggleButton extends StatefulWidget {
  const DayToggleButton({Key? key}) : super(key: key);

  @override
  DayToggleButtonState createState() => DayToggleButtonState();
}

class DayToggleButtonState extends State<DayToggleButton>
    with SingleTickerProviderStateMixin {
  // AnimationController Timer (1개의 애니메이션)
  late TabController _tabController;
  // _tabController.index로 현재 선택된 index에 접근 가능

  List<Button> buttons = <Button>[
    Button(widget: const Tab(text: "연도별"), isSelected: false),
    Button(widget: const Tab(text: "월별"), isSelected: false),
    Button(widget: const Tab(text: "일별"), isSelected: true),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: (constraints.maxWidth / 2),
          height: 35,
          decoration: BoxDecoration(
            color: Colors.grey[500],
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          child: TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              border: Border.all(
                color: Colors.grey.shade500,
                width: 5,
              ),
              color: Colors.white,
            ),
            labelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            labelColor: Colors.black,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            tabs: buttons.map((e) => e.widget).toList(),
            labelPadding: const EdgeInsets.all(0), // 글씨 흐릿해지는 현상 제거
          ),
        );
      },
    );
  }
}
