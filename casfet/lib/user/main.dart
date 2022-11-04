import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi Flutter Petanikode'),
            backgroundColor: Colors.deepOrange,
          ),
          body: Column(children: <Widget>[
            Image.network('https://www.petanikode.com/img/flutter/flutter.png'),
            Text(
              'Belajar Flutter untuk Pemula',
              style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
            ),
            Text('oleh Petani Kode'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network(
                    'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
                Image.network(
                    'https://www.petanikode.com/img/flutter/flutter-sqr.png')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network(
                    'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
                Image.network(
                    'https://www.petanikode.com/img/flutter/flutter-sqr.png')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network(
                    'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
                Image.network(
                    'https://www.petanikode.com/img/flutter/flutter-sqr.png')
              ],
            )
          ])),
    );
  }
}
