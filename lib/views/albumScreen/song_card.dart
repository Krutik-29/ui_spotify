
import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final String songs;
  final String artists;
  final String albumImagePath;
  const SongCard({super.key, required this.songs, required this.artists, required this.albumImagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(image: AssetImage('assets/images/img_3.jpg'),fit: BoxFit.cover)
          ),
        ),
        const SizedBox(width: 10,),
         SizedBox(
          width: 275,
          //color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,

            children: [
              Text(songs,style:
              const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
                maxLines: 1, // Restrict to one line
                overflow: TextOverflow.ellipsis,),
              const SizedBox(height: 5,),
               Text(artists,style:
              const TextStyle(
                fontSize: 14,
                //fontWeight: FontWeight.bold
              ),
                maxLines: 1, // Restrict to one line
                overflow: TextOverflow.ellipsis,),

            ],
          ),
        ),
        const SizedBox(width: 10,),
        const Icon(Icons.more_vert_outlined,size: 30,)
      ],
    );;
  }
}
