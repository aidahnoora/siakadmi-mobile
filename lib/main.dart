import 'package:flutter/material.dart';
import 'package:siakad/pages/home/main_page.dart';
import 'package:siakad/pages/sign_in_page.dart';
import 'package:siakad/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}