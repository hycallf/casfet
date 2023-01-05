// import 'dart:html';
import 'splashscreen.dart';
import 'package:flutter/material.dart';
// firebase auth
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:casfet/widget/login_widget.dart';
import './admin/beta-homepage.dart';
import 'auth_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        // title: title,
        // theme: ThemeData.dark().copyWith(),
        home: MyHomePage(),
      );

  // {
  //   return MaterialApp(
  //     home: MyHomePage(),
  //   );
  // }
}

class MyHomePage extends StatelessWidget {
  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
          body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePageAdmin();
          } else {
            return AuthPage();
          }
        },
      ));

  // {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: SplashScreen(),
  //     color: Colors.blue,
  //   );
  // }
}
