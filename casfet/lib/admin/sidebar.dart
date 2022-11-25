import 'dart:developer';
import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Sidebar()));
}

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return Scaffold(
      appBar: AppBar(
        title: Text('CASFET'),
        backgroundColor: Color.fromARGB(255, 5, 82, 146),
      ),
      drawer: Drawer(
        //ignore: sort_child_properties_last
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName:
                  Text('Admin', style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: Text('Admin@gmail.com',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black26,
                child: new Text('Admin'),
              ),
              decoration:
                  new BoxDecoration(color: Color.fromARGB(255, 5, 82, 146)),
            ),
            new ListTile(
              title: Text('Home Page',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.home_outlined),
            ),
            new ListTile(
              title:
                  Text('Guest', style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.person_outline),
            ),
            new ListTile(
              title: Text('Profile',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.edit_outlined),
            ),
            new ListTile(
              title:
                  Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.newspaper_outlined),
            ),
            new ListTile(
              title:
                  Text('Logout', style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.logout_rounded),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
