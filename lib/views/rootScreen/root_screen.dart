import 'package:flutter/material.dart';
import 'package:ui_spotify/views/homeScreen/home_screen.dart';

import '../../theme/theme.dart';

class RootScreen extends StatefulWidget {
  static String routeName = '/rootPage';
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _currentIndex = 0;
  List<Widget> screens= [
    const HomeScreen(),
    Scaffold(body: const Center(child: Text('Search'),), backgroundColor: AppTheme.darkTheme.scaffoldBackgroundColor,),
    Scaffold(body: const Center(child: Text('Your Library'),), backgroundColor: AppTheme.darkTheme.scaffoldBackgroundColor,),
    Scaffold(body: const Center(child: Text('Premium'),), backgroundColor: AppTheme.darkTheme.scaffoldBackgroundColor,),
    Scaffold(body: const Center(child: Text('Create'),), backgroundColor: AppTheme.darkTheme.scaffoldBackgroundColor,),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.white,
       body: screens[_currentIndex],
      bottomNavigationBar: _getBottomNavigationBar(),
    );
  }



  Widget _getBottomNavigationBar(){

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Mini Player
        // Container(
        //   height: 64,
        //   color: const Color(0xFF282828),
        //   child: const MiniPlayer(),
        // ),
        // Navigation Bar
        BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_music), label: 'Your Library'),
            BottomNavigationBarItem(icon: Icon(Icons.workspace_premium), label: 'Premium'),
            BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Create'),
          ],
        ),
      ],
    );
  }
}
