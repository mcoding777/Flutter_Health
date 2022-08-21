import 'package:flutter/material.dart';
import 'package:health/models/button.dart';

class DayToggleButton extends StatefulWidget {
  const DayToggleButton({Key? key}) : super(key: key);

  @override
  DayToggleButtonState createState() => DayToggleButtonState();
}

class DayToggleButtonState extends State<DayToggleButton>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
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
          width: (constraints.maxWidth / 4) - (5 / 4),
          height: 45,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(
              25.0,
            ),
          ),
          child: TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                25.0,
              ),
              color: Colors.green,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: const [
              // first tab [you can add an icon using the icon property]
              Tab(
                text: 'Place Bid',
              ),

              // second tab [you can add an icon using the icon property]
              Tab(
                text: 'Buy Now',
              ),
            ],
          ),
        );
      },
    );
  }
}
