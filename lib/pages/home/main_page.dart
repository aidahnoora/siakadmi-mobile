import 'package:flutter/material.dart';
import 'package:siakad/pages/home/absensi_page.dart';
import 'package:siakad/pages/home/home_page.dart';
import 'package:siakad/pages/home/jadwal_page.dart';
import 'package:siakad/pages/home/nilai_page.dart';
import 'package:siakad/pages/home/profile_page.dart';
import 'package:siakad/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
          currentIndex: currentIndex,
          onTap: (value) {
            print(value);
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 21,
                  color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/calendar.png',
                  width: 19,
                  color: currentIndex == 1 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/trophy.png',
                  width: 22,
                  color: currentIndex == 2 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/list.png',
                  width: 22,
                  color: currentIndex == 3 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 18,
                  color: currentIndex == 4 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: '',
            ),
          ]
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return JadwalPage();
          break;
        case 2:
          return NilaiPage();
          break;
        case 3:
          return AbsensiPage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}