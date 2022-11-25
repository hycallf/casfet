// import 'dart:html';
// import 'dart:ui';

// import 'dart:js_util';

import 'package:casfet/constants.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'login_view.dart';

void main() {
  runApp(MaterialApp(home: RegisterPage()));
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(30.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff14618C),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0), // radius
                    ),
                  ),
                  child: Row(
                    children: <Widget>[],
                  ),
                ),
                _iconRegister(),
                _titleDescription(),
                _textField(),
                _buildButton(context),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

Widget _iconRegister() {
  return Image.asset(
    "./assets/images/casfet-white.png",
    width: 150.0,
    height: 150.0,
  );
}

Widget _titleDescription() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        "Create a new account.",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      /*Text(
        "Lorem ipsum",
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),*/
    ],
  );
}

Widget _textField() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Input Username",
            hintStyle: TextStyle(color: ColorPalette.primaryDarkColor)),
        style: TextStyle(color: Colors.white),
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Input E-Mail",
            hintStyle: TextStyle(color: ColorPalette.primaryDarkColor)),
        style: TextStyle(color: Colors.white),
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Input Password",
          hintStyle: TextStyle(color: ColorPalette.primaryDarkColor),
        ),
        style: TextStyle(color: Colors.white),
        obscureText: true,
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Input Phone Number",
          hintStyle: TextStyle(color: ColorPalette.primaryDarkColor),
        ),
        style: TextStyle(color: Colors.white),
        autofocus: false,
      ),

      // Padding(
      //   padding: EdgeInsets.only(top: 12.0),
      //   child: TextField(
      //     decoration: InputDecoration(
      //       prefixIcon: Icon(Icons.phone),
      //       labelText: 'Input Phone Number',
      //       enabledBorder: OutlineInputBorder(
      //         borderSide: BorderSide(
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 30.0),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => LoginPage()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          //leading: const Icon(Icons.login)
          child: Text(
            'Register',
            style: TextStyle(color: ColorPalette.primaryColor),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),

      // Digunakan ketika kita sudah mempunyai akun Casfet, maka akan melucur ke halaman "Login".
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have a Casfet account?",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => LoginPage()));
            },
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      // Text(
      //   'or',
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontSize: 12.0,
      //   ),
      // ),
      // FlatButton(
      //   onPressed: () {},
      //   child: Text(
      //     'Register',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
    ],
  );
}
