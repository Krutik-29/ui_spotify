
//done
import 'package:flutter/material.dart';
import 'package:ui_spotify/views/loginScreen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splashScreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, LoginScreen.routeName);
          },
          child: Container(
            decoration: const BoxDecoration(
              //LinearGradient is used to add gradient in the container
              gradient: LinearGradient(
                //this defines the colors that gradient will have
                colors: [
                  Colors.white,
                  Colors.black,
                ],
                //this defines
                stops: [0.0,0.3],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Image.asset(
                'assets/images/spotify_logo.png',
                height: 250,
                width: 250,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
