import 'package:flutter/material.dart';

import 'home_page.dart';

class RootApp extends StatefulWidget {
  static String routeName = '/rootPage';
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int selectedBottomIcon = 0;
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
      index: selectedBottomIcon,
      children: const [
        HomePage(),
        Center(
          child: Text(
            "Library",
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
            "Settings",
            style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _getBottomNavigationBar() {
    List item = [
      (Icons.home),
      (Icons.my_library_music),
      (Icons.manage_search),
      (Icons.settings),
    ];
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 60,
      decoration: const BoxDecoration(color: Colors.green),
      child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            item.length,
            (index) => IconButton(
              icon: Icon(item[index]),
              color: selectedBottomIcon == index ? Colors.black : Colors.white,
              onPressed: () {
                setState(() {
                  selectedBottomIcon = index;
                });
              },
            ),
          )),
    );
  }
}
