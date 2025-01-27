import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  static String routeName = '/rootPage';
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: _getBody(),
      bottomNavigationBar: _getBottomNavigationBar(),
    );
  }

  Widget _getBody() {
    return IndexedStack(
      index: _selectedIndex,
      children: const [
        Center(
          child: Text(
            "Home",
            style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Search",
            style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Your Library",
            style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _getBottomNavigationBar() {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search_sharp), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Your Library'),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    onTap: _onItemTapped,
    backgroundColor: Colors.transparent,
    elevation: 0,
    selectedFontSize: 12,
    type: BottomNavigationBarType.fixed,);
  }
}
