import 'dart:html';
// import 'package:casfet/admin/list-user.dart';
import 'package:casfet/splashscreen.dart';
import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'login.dart';
// import 'list-user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // static const String _title = 'Home page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: _title,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
