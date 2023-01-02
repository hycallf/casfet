import 'package:flutter/material.dart';
// import 'dart:html';
import 'dart:ui';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "About US:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Image.asset(
              'assets/images/casfet-white.png',
              width: 250,
            ),
            Text(
              "powered by:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "- Andi Muhammad Fikri (Prototype)\n- Damar Adji Shodikin\n- El-Thaariq Is'ad\n- Khaira Isyara\n- Muhammad Haikal Fuady\n- Muhammad Ihsan Shiddiq",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 100,
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
