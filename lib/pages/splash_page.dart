import 'dart:async';

import 'package:flutter/material.dart';
import 'package:siakad/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );

    //   goto() async {
    //   String? login_status = await storage.read(key: 'login_status');
    //   if (login_status == 'true') {
    //     Timer(
    //       Duration(seconds: 3),
    //       () => Navigator.pushNamed(context, '/home'),
    //     );
    //   } else {
    //     Timer(
    //       Duration(seconds: 3),
    //       () => Navigator.pushNamed(context, '/sign-in'),
    //     );
    //   }
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image_splash.png'))),
        ),
      ),
    );
  }
}
