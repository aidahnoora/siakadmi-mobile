import 'package:flutter/material.dart';
import 'package:siakad/pages/home/absensi_page.dart';
import 'package:siakad/pages/home/detail_nilai_page.dart';
import 'package:siakad/pages/home/home_page.dart';
import 'package:siakad/pages/home/jadwal_page.dart';
// import 'package:siakad/pages/home/main_page.dart';
import 'package:siakad/pages/home/nilai_page.dart';
import 'package:siakad/pages/home/profile_page.dart';
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
        // '/home': (context) => MainPage(),
        '/home': (context) => HomePage(),
        '/schedule' : (context) => JadwalPage(),
        '/score': (context) => NilaiPage(),
        '/score-detail': (context) => ScoreDetailPage(),
        '/presence': (context) => AbsensiPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}