import 'package:flutter/material.dart';

import 'pages/geochart.dart';
import 'pages/home.dart';

void main() => runApp(const MainScreen());

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectIndex = 0;

  final _pages = <Widget>[
    //index0でホームを呼び出し
    const Home(),
    const Geochart(),
    Container(
      child: const Text('Settings'),
      alignment: Alignment.center,
    ),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_selectIndex],
        bottomNavigationBar: Builder(
          builder: (context) => BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectIndex,
            onTap: _onTapItem,
          ),
        ),
      ),
    );
  }
}
