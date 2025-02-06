import 'package:flutter/material.dart';
import 'package:ui_spotify/views/albumScreen/album_screen.dart';
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
    return Scaffold(key: GlobalKey<ScaffoldState>(), drawer: _getDrawer(), body: _getBody());
  }

  Widget _getBody() {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          _getChipWidgetsRow(),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                //color: Colors.grey,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AlbumScreen.routeName);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'To get you started',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          //main row which will show list of cards(Albums/Playlists)
                          children: List.generate(
                            10,
                            (index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 10,),

                      const Text(
                        'Try Something Else',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          //main row which will show list of cards(Albums/Playlists)
                          children: List.generate(
                            10,
                                (index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 10,),

                      const Text(
                        'Try Something Else',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          //main row which will show list of cards(Albums/Playlists)
                          children: List.generate(
                            10,
                                (index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 10,),

                      const Text(
                        'Try Something Else',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          //main row which will show list of cards(Albums/Playlists)
                          children: List.generate(
                            10,
                                (index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getChipWidgetsRow() {
    return Container(
      //color: Colors.blue,
      padding: const EdgeInsets.all(10),
      height: 70,
      child: Row(
        children: [
          Builder(builder: (context) {
            return GestureDetector(
              onTap: () {
                //GlobalKey<ScaffoldState>().currentState?.openDrawer();
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                height: 30,
                margin: const EdgeInsets.all(10),
                child: Image.asset('assets/images/spotify_white_logo.png'),
              ),
            );
          }),
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
    );
  }

  Drawer _getDrawer() {
    return Drawer(
        width: 370,
        child: SafeArea(
          child: Column(
            //main column
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  //row for profile name and avatar
                  children: [
                    Column(
                      children: [
                        Container(
                          //color: Colors.red,
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.all(10),
                          child: Image.asset('assets/images/spotify_logo.png'),
                        ),
                      ],
                      //column for avatar
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your Name",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              "View Profile",
                            )),
                      ],
                      //column for name and view profile button
                    )
                  ],
                ),
              ),
              //other buttons
              const Divider(
                height: 5,
                thickness: 1,
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add_circle_outlined,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Add Account',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.electric_bolt_outlined,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'What\'s New',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.watch_later_outlined,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Recents',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.settings,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Settings and Privacy',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
