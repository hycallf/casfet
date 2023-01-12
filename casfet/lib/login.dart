import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'dart:html';
import 'dart:ui';
import 'register.dart';
import 'package:casfet/main.dart';
import './admin/navigasi.dart';
import './user/navigasi.dart';

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
var _formkey = GlobalKey<FormState>();
// var uname = TextEditingController();
// var passwd = TextEditingController();

class LoginPage extends StatefulWidget {
  final VoidCallback onClickedRegister;

  const LoginPage({
    Key? key,
    required this.onClickedRegister,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final navigatorKey = GlobalKey<NavigatorState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

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
                _textField(context),
                // _buildButton(context),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _iconLogin() {
    return Image.asset(
      "assets/images/casfet-white.png",
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

  Widget _textField(BuildContext context) => SingleChildScrollView(
        key: _formkey,
        child: Container(
            child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 12.0),
            ),
            TextFormField(
              // controller: uname,
              controller: _emailController,
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
              controller: _passwordController,
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
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password tidak boleh kosong';
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
            ),
            TextButton(
              onPressed: Login,
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
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
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
          ],
        )),
      );

  Future Login() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
// Widget _buildButton(BuildContext context) {
//   return Column(
//     children: <Widget>[
//       Padding(
//         padding: EdgeInsets.only(top: 16.0),
//       ),
//       TextButton(
//         onPressed: () => checklogin("$uname", "$passwd", context),
//         child: Container(
//           padding: EdgeInsets.symmetric(vertical: 8.0),
//           width: double.infinity,
//           //leading: const Icon(Icons.login)
//           child: Text(
//             'Login',
//             style: TextStyle(color: ColorPalette.primaryColor),
//             textAlign: TextAlign.center,
//           ),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(30.0),
//           ),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(top: 16.0),
//       ),

//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             "Don't have a Casfet account?",
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (_) => AdminPage()));
//             },
//             child: const Text(
//               'Register',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ],
//       ),

// FlatButton(
//   child: Text(
//     'Register',
//     style: TextStyle(color: Colors.white),
//   ),
//   onPressed: () {
//     Navigator.pushNamed(context, RegisterPage.routeName);
//   },
// ),
//     ],
//   );
// }

// void checklogin(String username, String password, BuildContext context) {
//   if (username == "admin" && password == "admin") {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => NavigasiAdmin()));
//   } else if (username == "penjual" && password == "penjual") {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => NavigasiUser()));
//   }
// }
