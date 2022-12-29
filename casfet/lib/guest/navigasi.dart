import 'package:casfet/about.dart';
import 'package:flutter/material.dart';
import 'drink.dart';
// import 'addProduct.dart';

class NavigasiGuest extends StatefulWidget {
  const NavigasiGuest({super.key});

  @override
  State<NavigasiGuest> createState() => _NavigasiGuestState();
}

class _NavigasiGuestState extends State<NavigasiGuest> {
  int _selectedIndex = 1;
  var judul = 'Drink';
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Drink(),
    Drink(),
    Drink(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        judul = 'Food';
      } else if (index == 1) {
        judul = 'Drink';
      } else if (index == 2) {
        judul = 'Snack';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$judul"),
        backgroundColor: Color.fromARGB(255, 6, 53, 92),
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_chart,
          size: 30,
          color: Colors.black,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        onPressed: () {},
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Drink',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Snack',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 80, 90, 235),
        backgroundColor: Color.fromARGB(255, 6, 53, 92),
        onTap: _onItemTapped,
      ),
    );
  }
}
