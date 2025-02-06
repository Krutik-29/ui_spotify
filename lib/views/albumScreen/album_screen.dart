import 'package:flutter/material.dart';
import 'package:ui_spotify/views/albumScreen/song_card.dart';

import '../../theme/theme.dart';

class AlbumScreen extends StatelessWidget {
  static String routeName = '/albumScreen';

   AlbumScreen({super.key});

  List<Map<String, String>> songsData = [
    {
      'song': 'Blinding Lights (After Hours)',
      'artist': 'The Weeknd',
      'image': 'assets/images/img_1.jpg'
    },
    {
      'song': 'Shape of You (Divide)',
      'artist': 'DJ Khaled, Lil Baby & Lil Durk',
      'image': 'assets/images/img_2.jpg'
    },
    {
      'song': 'One Dance (Views)',
      'artist': 'Drake',
      'image': 'assets/images/img_3.jpg'
    },
    {
      'song': 'Levitating (Future Nostalgia)',
      'artist': 'Dua Lipa',
      'image': 'assets/images/img_4.jpg'
    },
    {
      'song': 'Savage Love (Laxed - Siren Beat)',
      'artist': 'Travis Scott, Drake, Swae Lee & Big Hawk',
      'image': 'assets/images/img_5.jpg'
    },
    {
      'song': 'Every Chance I Get (DJ Khaled feat. Lil Baby & Lil Durk)',
      'artist': 'DJ Khaled, Justin Bieber, Quavo, Chance the Rapper & Lil Wayne',
      'image': 'assets/images/img_6.jpg'
    },
    {
      'song': 'Sicko Mode (Travis Scott feat. Drake, Swae Lee & Big Hawk)',
      'artist': 'The Kid LAROI & Justin Bieber',
      'image': 'assets/images/img_7.jpg'
    },
    {
      'song': 'I’m the One (DJ Khaled feat. Justin Bieber, Quavo, Chance the Rapper & Lil Wayne)',
      'artist': 'Jessie J, Ariana Grande & Nicki Minaj',
      'image': 'assets/images/img_8.jpg'
    },
    {
      'song': 'Bang Bang (Jessie J, Ariana Grande & Nicki Minaj)',
      'artist': 'Luis Fonsi, Daddy Yankee & Justin Bieber',
      'image': 'assets/images/img_9.jpg'
    },
    {
      'song': 'Despacito (Luis Fonsi feat. Daddy Yankee & Justin Bieber)',
      'artist': 'Mark Ronson feat. Bruno Mars',
      'image': 'assets/images/img_10.jpg'
    }
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            //LinearGradient is used to add gradient in the container
            gradient: LinearGradient(
              //this defines the colors that gradient will have
              colors: [
                AppTheme.primaryColor,
                Colors.black,
              ],
              //this defines
              stops: [0.0, 0.4],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 5,
                    child: Container(
                      //margin: const EdgeInsets.all(10),
                      height: 250,
                      width: 250,
                      decoration:
                          const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img_2.jpg')), color: Colors.blue, borderRadius: const BorderRadius.all(Radius.circular(5))),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text("Listen to this amazing music !!!"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  ImageIcon(
                    AssetImage('assets/images/spotify_logo.png'),
                    size: 20,
                    color: AppTheme.primaryColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Spotify',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    '300,000',
                    style: TextStyle(
                        //fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.circle,
                    size: 5,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "3h 30min",
                    style: TextStyle(
                        //fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 10,),

              Row(
                children: [

                  Column(
                    children: [
                      Container(
                        width: 170,
                        padding:const EdgeInsets.symmetric(vertical: 10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.video_camera_back_outlined,size: 30,color: Colors.grey,),
                            Icon(Icons.add_circle_outline_outlined,size: 30,color: Colors.grey),
                            Icon(Icons.arrow_circle_down,size: 30,color: Colors.grey),
                            Icon(Icons.more_vert_outlined,size: 30,color: Colors.grey)
                            //Icon(Icons.)
                          ],
                        ),
                      )
                    ],
                  ),
                   Flexible(child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(Icons.shuffle,size: 30,color: Colors.grey,),
                          const SizedBox(width: 20,),
                          Container(
                            height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Icon(Icons.play_arrow,size: 40,color: Colors.black,),),
                        ],
                      )
                    ],
                  ))
                ],
              ),
              const SizedBox(height: 20,),
              Expanded(child: _getSongsList())
            ],
          ),
        ),
      ),
    );
  }


  Widget _getSongsList(){
        return ListView.builder(shrinkWrap: true,
          itemCount: songsData.length,
    itemBuilder: (context,index){
      return Column(
        children: [
          SongCard(songs: songsData[index]['song'] as String , artists: songsData[index]['artist'] as String, albumImagePath: songsData[index]['image'] as String),
          const SizedBox(height: 10,),
        ],
      );
    });
  }
}
