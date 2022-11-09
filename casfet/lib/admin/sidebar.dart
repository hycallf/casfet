import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
} //ini class buat apa jir

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CASFET'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Username'),
                accountEmail: Text('accountEmail')),
            ListTile(
              title: Text('Home Page'),
            ),
            ListTile(
              title: Text('Admin Page'),
            ),
            ListTile(
              title: Text('User Page'),
            ),
            ListTile(
              title: Text('Profile'),
            ),
            ListTile(
              title: Text('Notification'),
            ),
            ListTile(
              title: Text('About'),
            ),
            ListTile(
              title: Text('Logout'),
            )
          ],
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
