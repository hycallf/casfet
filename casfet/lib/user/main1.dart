import 'dart:html';
// import 'package:casfet/admin/list-user.dart';
import 'package:flutter/material.dart';
import 'navigasi.dart';
// import 'list-user.dart';

void main() {
  runApp(const UserPage());
}

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  // static const String _title = 'Home page';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: _title,
      home: Navigasi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
