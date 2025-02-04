import 'package:flutter/material.dart';
import 'package:ui_spotify/theme/theme.dart';
import 'package:ui_spotify/views/loginScreen/login_screen.dart';
import 'package:ui_spotify/views/rootScreen/root_screen.dart';
import 'package:ui_spotify/views/splashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.dark,
      // theme: ThemeData.dark(useMaterial3: true).copyWith(
      //   textTheme: ThemeData.dark().textTheme.apply(
      //     fontFamily: 'Spotify'
      //   )
      // ),
      theme: AppTheme.darkTheme,
      initialRoute: RootScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        RootScreen.routeName: (context) => const RootScreen(),
      },
      //home: const RootApp(),
    );
  }
}


