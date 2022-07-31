import 'package:flutter/material.dart';

import './add_screen.dart';
import './my_screen.dart';
import '../style/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Text('Index 0: Home'),
    ),
    AddScreen(),
    MyScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3대 500'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/home_light.png'), size: 27),
              label: 'Home',
              activeIcon:
                  ImageIcon(AssetImage('images/home_light.png'), size: 32)),
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/add_light.png'), size: 27),
            label: 'Add',
            activeIcon: ImageIcon(AssetImage('images/add_light.png'), size: 32),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/my_light.png',
              width: 27,
            ),
            label: 'My',
            activeIcon: Image.asset(
              'images/my_light.png',
              width: 32,
              color: selectedColor,
            ),
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedIconTheme: IconThemeData(
          color: selectedColor,
        ),
      ),
    );
  }
}
