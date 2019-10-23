import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'showcase_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _tabIndex;

  @override
  void initState() {
    super.initState();
    _tabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Showcase'),
      ),
      body: IndexedStack(
        index: _tabIndex,
        children: <Widget>[
          ShowcasePage(),
          Container(
            child: Text('More apps'),
          ),
          Container(
            child: Text('About'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex,
        onTap: (index) => setState(() {
          _tabIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            activeIcon: Icon(Icons.apps, color: Colors.red),
            title: Text('Showcase'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            activeIcon: Icon(Icons.more_horiz, color: Colors.red),
            title: Text('More apps'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            activeIcon: Icon(Icons.info_outline, color: Colors.red),
            title: Text('About'),
          ),
        ],
      ),
    );
  }
}
