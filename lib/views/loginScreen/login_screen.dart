import 'package:flutter/material.dart';
import 'package:ui_spotify/views/loginScreen/loginTypeBox.dart';
import 'package:ui_spotify/views/rootScreen/root_screen.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/loginScreen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String?> paths = [null, 'assets/images/mobile_icon.png', 'assets/images/google_icon.png', 'assets/images/facebook_icon.png', null];
    List<String> text = ['Sign up for free', 'Continue with phone number', 'Continue with Google', 'Continue with Facebook', 'Log In'];
    List<Color> color = [const Color.fromRGBO(29, 210, 84, 1), Colors.black, Colors.black, Colors.black, Colors.black];
    List<Color> textColor = [Colors.black, Colors.white, Colors.white, Colors.white, Colors.white];
    List<bool> enableBorder = [true, true, true, true, false];

    return SafeArea(
      child: Scaffold(
          //parent column
          body: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RootScreen.routeName);
            },
            child: Column(
                    children: [
            //first container to show icon and texts
            Container(
              padding: const EdgeInsets.only(top: 70),
              height: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(65, 62, 62, 1), Colors.black],
                  stops: [0.0, 0.7],
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
            Expanded(
              child: Container(
                  padding: const EdgeInsets.only(top: 40),
                  color: Colors.black,
                  width: double.infinity,
                  child: Column(
                    children: List.generate(
                      paths.length,
                      (index) {
                        return Column(
                          children: [
                            LoginTypeBox(
                              text: text[index],
                              path: paths[index],
                              color: color[index],
                              textColor: textColor[index],
                              enableBorder: enableBorder[index],
                            ),
                            const SizedBox(
                              height: 15,
                            )
                          ],
                        );
                      },
                    ),
                  )),
            ),
                    ],
                  ),
          )),
    );
  }
}
