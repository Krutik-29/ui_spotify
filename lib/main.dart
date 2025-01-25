import 'package:flutter/material.dart';
import 'package:ui_spotify/pages/album_page.dart';
import 'package:ui_spotify/pages/home_page.dart';
import 'package:ui_spotify/pages/root_app.dart';
import 'package:ui_spotify/views/loginScreen/login_screen.dart';
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
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
      },
      //home: const RootApp(),
    );
  }
}


