import 'package:flutter/material.dart';
import 'package:ui_spotify/views/loginScreen/loginTypeBox.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/loginScreen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> names = [
      'Sign Up For Free',
      'Continue With Phone Number',
      'Continue With Google',
      'Continue With Facebook'
    ];

    List<String> paths = [
      '',
      'assets/images/spotify_logo.png',
      'assets/images/google_logo.png',
      'assets/images/facebook_logo.png',
    ];
    return SafeArea(
      child: Scaffold(
          //parent column
          body: Column(
        children: [
          //first container to show icon and texts
          Container(
            padding: const EdgeInsets.all(16),
            height: 400,
            color: Colors.black,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/spotify_logo.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Millions Of Songs",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                      color: Colors.white
                  ),
                ),
                const Text(
                  "Free on Spotify",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 406.857,
            width: double.infinity,
            color: Colors.black,
            child: ListView.builder(itemCount: names.length,itemBuilder: (contex ,index){
              return LoginTypeBox(text: names[index], path: paths[index], color: Colors.black);
            })
          ),
        ],
      )),
    );
  }
}
