import 'package:flutter/material.dart';
import 'package:ui_spotify/json/songs_json.dart';
import 'package:ui_spotify/pages/album_page.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/homePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedSongItemOne = 0;
  int selectedSongItemTwo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppbar(),
      body: _getBody(),
    );
  }

  PreferredSizeWidget _getAppbar() {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Explore',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Theme.of(context).secondaryHeaderColor),
          ),
          Icon(
            Icons.list_rounded,
            color: Theme.of(context).secondaryHeaderColor,
            size: 30,
          )
        ],
      ),
    );
  }

  Widget _getBody() {
    return SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          //color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    song_type_1.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 15, right: 25, top: 10, bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSongItemOne = index;
                            });
                          },
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                song_type_1[index],
                                style: TextStyle(fontSize: 15, color: selectedSongItemOne == index ? Colors.green : Colors.black, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              selectedSongItemOne == index
                                  ? Container(
                                      height: 2,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green,
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(songs.length - 5, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, AlbumPage.routeName,arguments: songs[index]);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    songs[index]['img'],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              songs[index]['title'],
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Container(
                              width: 200,
                              child: Text(
                                songs[index]['description'],
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.black),
                                maxLines: 1,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          //color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    song_type_1.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 15, right: 25, top: 10, bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSongItemTwo = index;
                            });
                          },
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                song_type_2[index],
                                style: TextStyle(fontSize: 15, color: selectedSongItemTwo == index ? Colors.green : Colors.black, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              selectedSongItemTwo == index
                                  ? Container(
                                      height: 2,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green,
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(songs.length - 5, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(image: AssetImage(songs[index + 5]['img']))),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            songs[index + 5]['title'],
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              songs[index + 5]['description'],
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.black),
                              maxLines: 1,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
