import 'package:casfet/admin/addProduct.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'package:casfet/profil.dart';
import 'list-user.dart';
import '/login.dart';
import '/about.dart';
import '/guest/navigasi.dart';
import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/cupertino.dart';
// import 'addProduct.dart';

class NavigasiAdmin extends StatefulWidget {
  const NavigasiAdmin({super.key});

  @override
  State<NavigasiAdmin> createState() => _NavigasiAdminState();
}

class _NavigasiAdminState extends State<NavigasiAdmin> {
  var nama = "admin";
  var email = "admin@gmail.com";
  var alamat = "jl suka maju sendirian blunder";
  var notelp = "+62987439234";
  var img = "assets/images/brand-2.jpg";

  int _selectedIndex = 1;
  var judul = 'HomePage';
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    listUser(),
    HomePage(),
    About(),

    // About(),
    // About(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        judul = 'List-user';
      } else if (index == 1) {
        judul = 'HomePage';
      } else if (index == 2) {
        judul = 'Settings';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$judul"),
        backgroundColor: Color.fromARGB(255, 4, 136, 210),
      ),
      drawer: Drawer(
        //ignore: sort_child_properties_last
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName:
                  Text('$nama', style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail:
                  Text('$email', style: TextStyle(fontWeight: FontWeight.bold)),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: new Text('User'),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Profil(
                            nama: '$nama',
                            email: '$email',
                            image: '$img',
                            alamat: '$alamat',
                            notelp: '$notelp',
                          )));
                },
              ),
              decoration:
                  new BoxDecoration(color: Color.fromARGB(255, 5, 82, 146)),
            ),
            new ListTile(
              title: Text('Home Page',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.home_outlined),
              onTap: () => _onItemTapped(1),
            ),
            new ListTile(
              title:
                  Text('Guest', style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.person_outline),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NavigasiGuest()));
              },
            ),
            new ListTile(
              title: Text('Profile',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.edit_outlined),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profil(
                          nama: '$nama',
                          email: '$email',
                          image: '$img',
                          alamat: '$alamat',
                          notelp: '$notelp',
                        )));
              },
            ),
            new ListTile(
              title:
                  Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.newspaper_outlined),
              onTap: () => _onItemTapped(2),
            ),
            new ListTile(
              title:
                  Text('Logout', style: TextStyle(fontWeight: FontWeight.bold)),
              leading: new Icon(Icons.logout_rounded),
              onTap: () => logout(context),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'List User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 153, 179, 194),
        backgroundColor: Color.fromARGB(255, 4, 136, 210),
        onTap: _onItemTapped,
      ),
    );
  }
}

void logout(BuildContext context) {
  showCupertinoDialog(
      context: context,
      builder: (BuildContext ctx) {
        return CupertinoAlertDialog(
          title: const Text('Please Confirm'),
          content: const Text('Are you sure to logout?'),
          actions: [
            // The "Yes" button
            CupertinoDialogAction(
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => LoginPage())),
              },
              child: const Text('Yes'),
              isDefaultAction: true,
              isDestructiveAction: true,
            ),
            // The "No" button
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: const Text('No'),
              isDefaultAction: false,
              isDestructiveAction: false,
            )
          ],
        );
      });
}
