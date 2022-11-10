import 'dart:developer';
import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(
        title: Text('CASFET'),
        backgroundColor: Color.fromARGB(255, 5, 82, 146),
      ),
      drawer: Drawer(
        // ignore: sort_child_properties_last
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Username'),
                accountEmail: Text('accountEmail@gmail.com')
                /*currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: new Text('p'),
                ),
                decoration: new BoxDecoration(color: Colors.lightBlue),
                otherAccountsPictures: <Widget>[
                  new CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: new Text('Y'),
                  ),
                  new CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: new Text('W'),
                  ),
                ]*/
                ),
            new ListTile(
              title: Text('Home Page'),
              trailing: new Icon(Icons.home_outlined),
            ),
            new ListTile(
              title: Text('User Page'),
              trailing: new Icon(Icons.person_outline),
            ),
            new ListTile(
              title: Text('Profile'),
              trailing: new Icon(Icons.edit_outlined),
            ),
            new ListTile(
              title: Text('Notification'),
              trailing: new Icon(Icons.notifications_outlined),
            ),
            new ListTile(
              title: Text('About'),
              trailing: new Icon(Icons.newspaper_outlined),
            ),
            new ListTile(
              title: Text('Logout'),
              trailing: new Icon(Icons.logout_rounded),
            )
          ],
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
