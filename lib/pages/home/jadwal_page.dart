import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:siakad/providers/jadwal_povider.dart';
import 'package:siakad/theme.dart';
import 'package:siakad/widgets/jadwal_widget.dart';

class JadwalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    JadwalProvider jadwalProvider =
        Provider.of<JadwalProvider>(context, listen: true);
    jadwalProvider.getJadwals();

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Jadwal Pelajaran',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12,
              //     vertical: 10,
              //   ),
              //   margin: EdgeInsets.only(right: 16),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     color: primaryColor,
              //   ),
              //   child: Text(
              //     'Senin',
              //     style: primaryTextStyle.copyWith(
              //       fontSize: 13,
              //       fontWeight: medium,
              //     ),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12,
              //     vertical: 10,
              //   ),
              //   margin: EdgeInsets.only(right: 16),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(
              //       color: subtitleColor,
              //     ),
              //     color: transparentColor,
              //   ),
              //   child: Text(
              //     'Selasa',
              //     style: subtitleTextStyle.copyWith(
              //       fontSize: 13,
              //       fontWeight: medium,
              //     ),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12,
              //     vertical: 10,
              //   ),
              //   margin: EdgeInsets.only(right: 16),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(
              //       color: subtitleColor,
              //     ),
              //     color: transparentColor,
              //   ),
              //   child: Text(
              //     'Rabu',
              //     style: subtitleTextStyle.copyWith(
              //       fontSize: 13,
              //       fontWeight: medium,
              //     ),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12,
              //     vertical: 10,
              //   ),
              //   margin: EdgeInsets.only(right: 16),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(
              //       color: subtitleColor,
              //     ),
              //     color: transparentColor,
              //   ),
              //   child: Text(
              //     'Kamis',
              //     style: subtitleTextStyle.copyWith(
              //       fontSize: 13,
              //       fontWeight: medium,
              //     ),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12,
              //     vertical: 10,
              //   ),
              //   margin: EdgeInsets.only(right: 16),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(
              //       color: subtitleColor,
              //     ),
              //     color: transparentColor,
              //   ),
              //   child: Text(
              //     'Jumat',
              //     style: subtitleTextStyle.copyWith(
              //       fontSize: 13,
              //       fontWeight: medium,
              //     ),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Senin - Sabtu',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.all(
            defaultMargin,
          ),
          child: ListView(
            children: jadwalProvider.jadwals
                .map(
                  (jadwal) => Jadwal(jadwal),
                )
                .toList(),
          ),
        ),
      );
    }

    Widget footer() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Image.asset(
                    'assets/icon_home.png',
                    width: 21,
                  ),
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Image.asset(
                    'assets/icon_profile.png',
                    width: 18,
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            header(),
            button(),
            content(),
            footer(),
          ]),
        ),
      ),
    );
  }
}
