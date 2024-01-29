// home_screen.dart
import 'package:flutter/material.dart';
import 'package:navigasi/Tugas11/account_screen.dart';
import 'package:navigasi/Tugas11/drawer_screen.dart';
import 'package:navigasi/Tugas11/home_content.dart';
import 'package:navigasi/Tugas11/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;

  final List<Widget> _screens = [
    const HomeContent(),
    const Search(),
    const Account(),
  ];

  void onNavbarTapped(int index){
    setState(() {
      _currentTab = index;
    });
  }

  final List<AppBar> _appBars = [
    AppBar(
      title: const Text("Home", style: TextStyle(color: Colors.white)),
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Colors.blue,
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.search,
          ),
        ),
      ],
    ),
    AppBar(
      title: const Text("Search", style: TextStyle(color: Colors.white)),
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Colors.blue,
    ),
    AppBar(
      title: const Text("Account", style: TextStyle(color: Colors.white)),
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars[_currentTab],
      drawer: _currentTab == 0 ? const DrawerScreen() : null,
      body: _screens[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: onNavbarTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
