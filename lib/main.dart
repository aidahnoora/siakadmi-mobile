import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:siakad/pages/home/absensi_page.dart';
import 'package:siakad/pages/home/detail_nilai_page.dart';
import 'package:siakad/pages/home/home_page.dart';
import 'package:siakad/pages/home/jadwal_page.dart';
// import 'package:siakad/pages/home/main_page.dart';
import 'package:siakad/pages/home/nilai_page.dart';
import 'package:siakad/pages/home/profile_page.dart';
import 'package:siakad/pages/sign_in_page.dart';
import 'package:siakad/pages/splash_page.dart';
import 'package:siakad/providers/auth_provider.dart';
import 'package:siakad/providers/jadwal_povider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final storage = new FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => JadwalProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          // '/home': (context) => MainPage(),
          '/home': (context) => HomePage(),
          '/schedule': (context) => JadwalPage(),
          '/score': (context) => NilaiPage(),
          '/score-detail': (context) => ScoreDetailPage(),
          '/presence': (context) => AbsensiPage(),
          '/profile': (context) => ProfilePage(),
        },
      ),
    );
  }
}
