import 'package:flutter/material.dart';
import 'admin/navigasi.dart';
import 'user/navigasi.dart';

class Profil extends StatelessWidget {
  var nama;
  var email;
  var image;
  var alamat;
  var notelp;

  Profil({this.nama, this.email, this.image, this.alamat, this.notelp});
  // Profile prof = Profile(
  //   nama: 'Damar',
  //   email: 'damar@gmail.com',
  // );
  //Profil({this.image, this.nama, this.email});
  /* final String image;
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
                backgroundImage: AssetImage(image),
                radius: 70.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: nama,
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.teal,
                      ))),
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: email,
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.teal,
                      ))),
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: notelp,
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.teal,
                      ))),
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: alamat,
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.teal,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
