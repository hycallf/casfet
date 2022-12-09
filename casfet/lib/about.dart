import 'package:flutter/material.dart';
import 'dart:html';
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
              height: 200,
              width: 200,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.copyright,
                  color: Color.fromARGB(255, 20, 20, 20),
                ),
                title: Text(
                  'Alpha Version 0.1',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Color.fromARGB(255, 20, 20, 20),
                    fontSize: 24,
                  ),
                ),
              ),
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
