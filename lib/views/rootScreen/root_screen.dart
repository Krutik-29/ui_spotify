import 'dart:ui';

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
      extendBody: true,
     // backgroundColor: Colors.white,
       body: screens[_currentIndex],
      bottomNavigationBar: _getBottomNavigationBar(),
    );
  }



  Widget _getBottomNavigationBar(){

    return Container(
      padding: const EdgeInsets.only(top: 30),
      height: 100,
        decoration:const BoxDecoration(
        gradient:  LinearGradient(
        colors: [Colors.transparent,Colors.black26,Colors.black87],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.3,0.5,0.7],
    tileMode: TileMode.clamp,
    ),),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.my_library_books_outlined), label: 'Your Library'),
          BottomNavigationBarItem(icon: Icon(Icons.stars), label: 'Premium'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Create'),
        ],
      ),
    );
  }
}
