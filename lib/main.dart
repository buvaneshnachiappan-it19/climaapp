import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: AnimatedSplashScreen(
        splash: Image.asset('images/launch_image.jpg'),
        nextScreen: LoadingScreen(),
        splashIconSize: 300.0,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
