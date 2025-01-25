import 'package:flutter/material.dart';
import 'package:ui_spotify/views/loginScreen/loginTypeBox.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/loginScreen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //parent column
          body: Column(
        children: [
          //first container to show icon and texts
          Container(
            padding: const EdgeInsets.only(top: 70),
            height: 400,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(65, 62, 62, 1), Colors.black12],
                stops: [0.0, 0.8],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/spotify_white_logo.png',
                  height: 70,
                  width: 70,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Millions Of Songs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
                ),
                const Text(
                  "Free on Spotify",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 20),
              height: 406.857,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 0, color: Colors.black12),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: 330,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign Up For Free',
                          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const LoginTypeBox(text: "Continue with phone number", path: 'assets/images/mobile_icon.png', color: Colors.black),
                  const SizedBox(
                    height: 15,
                  ),
                  const LoginTypeBox(text: "Sign in with Google", path: 'assets/images/google_icon.png', color: Colors.black),
                  const SizedBox(
                    height: 15,
                  ),
                  const LoginTypeBox(text: "Sign in with Facebook", path: 'assets/images/facebook_icon.png', color: Colors.black),
                  const SizedBox(
                    height: 15,
                  ),


                 GestureDetector(
                   onTap: (){

                   },
                   child: const  Text('Log In',style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ), ),
                 )
                ],
              )),
        ],
      )),
    );
  }
}
