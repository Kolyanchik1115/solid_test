// ignore_for_file: library_private_types_in_public_api, public_member_api_docs

import 'package:flutter/material.dart';
import 'package:solid_test/screens/random0.dart';
import 'package:solid_test/screens/random1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedTab = 0;

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          Random0(),
          Random1(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        selectedItemColor: Colors.purpleAccent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Random0',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_rounded),
            label: 'Random1',
          ),
        ],
        currentIndex: _selectedTab,
        onTap: onSelectTab,
      ),
    );
  }
}
