import 'package:flutter/material.dart';
import 'dart:html';
import 'dart:ui';
import 'register.dart';
import 'admin/main.dart';
import 'user/main.dart';

Color primaryBlue = Color(0xff2972ff);
Color colorLight = Color(0xfffbfbfb);
Color textBlack = Color(0xff222222);
Color textGrey = Color(0xff94959b);
Color textWhiteGrey = Color(0xfff1f1f5);

TextStyle heading2 = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
);

TextStyle heading5 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

TextStyle heading6 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

TextStyle regular16pt = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

class ColorPalette {
  static const primaryColor = Colors.lightBlue;
  static const primaryDarkColor = Colors.lightBlueAccent;
  static const underlineTextField = Colors.white;
}

// void main() {
//   runApp(MaterialApp(home: LoginPage()));
// }
final _formkey = GlobalKey<FormState>();
var uname = TextEditingController();
var passwd = TextEditingController();

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(children: <Widget>[
                _iconLogin(),
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

Widget _iconLogin() {
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
        "Login to your account.",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),

      // Text(
      //   "Lorem ipsum",
      //   style: TextStyle(
      //     fontSize: 12.0,
      //     color: Colors.white,
      //   ),
      //   textAlign: TextAlign.center,
      // ),
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
            hintText: "Username",
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
          hintText: "Password",
          hintStyle: TextStyle(color: ColorPalette.primaryDarkColor),
        ),
        style: TextStyle(color: Colors.white),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AdminPage()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          //leading: const Icon(Icons.login)
          child: Text(
            'Login',
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

      // Text(
      //   'or',
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontSize: 12.0,
      //   ),
      // ),

      // Digunakan ketika kita belum mempunyai akun Casfet, maka akan melucur ke halaman "Register".
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have a Casfet account?",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => RegisterPage()));
            },
            child: const Text(
              'Register',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),

      // FlatButton(
      //   child: Text(
      //     'Register',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   onPressed: () {
      //     Navigator.pushNamed(context, RegisterPage.routeName);
      //   },
      // ),
    ],
  );
}

void checklogin(String username, String password, BuildContext context) {
  if (username == "admin" && password == "admin") {
    Navigator.push(
        context,
        MaterialPageRoute(
            //name.text adalah parameter yang dikirim
            //alamat.text adalah paramter yang dikirim
            builder: (_) => AdminPage()));
  } else if (username == "penjual" && password == "penjual") {
    Navigator.push(
        context,
        MaterialPageRoute(
            //name.text adalah parameter yang dikirim
            //alamat.text adalah paramter yang dikirim
            builder: (_) => UserPage()));
  }
}
