import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  /*Profil({this.image, this.nama, this.email});
  final String image;
  final String nama;
  final String email;*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                //backgroundImage: AssetImage(image),
                radius: 70.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
