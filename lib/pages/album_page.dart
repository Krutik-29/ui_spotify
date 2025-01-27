import 'package:flutter/material.dart';
import 'package:ui_spotify/pages/root_app.dart';

class AlbumPage extends StatefulWidget {

  static String routeName = '/AlbumPage';
  //final List<Map<String,dynamic>> song;
  const AlbumPage({super.key, /*required this.song*/});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
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
          GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context, RootApp.routeName);
            },
            child: Icon(
              Icons.arrow_back,
              color: Theme.of(context).secondaryHeaderColor,
              size: 30,
            ),
          )
        ],
      ),
    );
  }


  Widget _getBody(){

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border()
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10,),
                    Text("Find in playlist")
                  ],
                )
              ],
            ),
          ),
        )


      ],
    );

}
}
