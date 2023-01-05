import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/audio/lib/main.dart';
// import 'dart:async';
import 'package:casfet/splashscreen.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'login.dart';

// firebase auth
import 'package:casfet/widget/login_widget.dart';
import 'package:casfet/widget/register_widget.dart';
import 'package:casfet/auth_page.dart';
import './admin/navigasi.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => StreamBuilder<User?>(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return NavigasiAdmin();
                    } else {
                      return AuthPage();
                    }
                  },
                )), // using firebase auth
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/casfet-white.png',
              width: 250,
            ),
            SizedBox(
              height: 200,
              width: 200,
            ),
            Text(
              "powered by:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
              ),
            ),
            Image.asset(
              'assets/images/cs-white.png',
              width: 125,
            ),
          ],
        ),
      ),
    );
  }
}
