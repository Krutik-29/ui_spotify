import 'package:flutter/material.dart';
import 'package:ui_spotify/views/homeScreen/appBarChip.dart';

import '../../theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> appBarChipNames = ['All', 'Music', 'Podcasts'];
  late String selectedAppBarChip;
  @override
  void initState() {
    // TODO: implement initState
    selectedAppBarChip = appBarChipNames[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: _getDrawer(), body: _getBody());
  }

  Widget _getBody() {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    margin: const EdgeInsets.all(10),
                    child: Image.asset('assets/images/spotify_white_logo.png'),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: appBarChipNames.length, //setting the number of items as total items in list
                    itemBuilder: (context, index) {
                      //index is used to iterate like a for loop
                      final appBarChip = appBarChipNames[index]; //putting values we are getting from the list into filter variable
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: GestureDetector(
                            onTap: () {
                              selectedAppBarChip = appBarChip;
                              setState(() {});
                            },
                            child: AppBarChip(
                                fontColor: selectedAppBarChip == appBarChip ? Colors.black : Colors.white,
                                chipBackgroundColor: selectedAppBarChip == appBarChip ? AppTheme.primaryColor : AppTheme.surfaceColor,
                                appBarChip: appBarChip)),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Drawer _getDrawer() {
    return const Drawer(
      child: Center(child: Text("My Drawer")),
    );
  }
}
