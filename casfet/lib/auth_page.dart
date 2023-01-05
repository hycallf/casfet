// import 'package:firebase_auth/firebase_auth.dart';
import 'package:casfet/widget/login_widget.dart';
import 'package:casfet/widget/register_widget.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginWidget(onClickedRegister: toggle)
      : RegisterWidget(onClickedLogin: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
