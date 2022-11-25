import 'dart:developer';
import 'dart:html';
import 'package:casfet/admin/sidebar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SidebarUser()));
}

class SidebarUser extends StatefulWidget {
  @override
  _SidebarUserState createState() => _SidebarUserState();
}

class _SidebarUserState extends State<SidebarUser> {
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
                accountName:
                    Text('User', style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('User@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: new Text('User'),
                ),
                decoration:
                    new BoxDecoration(color: Color.fromARGB(255, 5, 82, 146)),
                otherAccountsPictures: <Widget>[]),
            new ListTile(
              title: Text('Home Page',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.home_outlined),
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
        backgroundColor: Colors.blue,
      ),
    );
  }
}
