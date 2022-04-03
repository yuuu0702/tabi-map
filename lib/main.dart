import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectIndex = 0;

  final _pages = <Widget>[
    Container(
      child: const Text('Settings'),
      alignment: Alignment.center,
    ),
    Container(
      child: const Text('Home'),
      alignment: Alignment.center,
      color: Colors.lightBlue,
    ),
    Container(
      child: const Text('Favorite'),
      alignment: Alignment.center,
      color: Colors.pink.withOpacity(0.5),
    ),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: Builder(
        builder: (context) => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
          ],
          currentIndex: _selectIndex,
          onTap: _onTapItem,
        ),
      ),
    );
  }
}
