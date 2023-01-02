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
            Image.asset(
              'assets/images/casfet-white.png',
              width: 250,
            ),
            SizedBox(
              height: 100,
              width: 100,
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
