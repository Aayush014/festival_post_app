import 'package:festival_post_app/Screens/Home%20Screen/home_screen.dart';
import 'package:festival_post_app/Screens/Poster%20Screen/poster_screen.dart';
import 'package:festival_post_app/Screens/Share%20Screen/share_screen.dart';
import 'package:festival_post_app/Screens/Splash%20Screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        '/' : (context) => SplashScreen(),
        'home' : (context) => HomeScreen(),
        'poster' : (context) => PosterScreen(),
        'share' : (context) => ShareScreen(),
      },
    );
  }
}

