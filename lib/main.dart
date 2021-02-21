//Package Imports
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sproutai/dashboard.dart';

//Main Run Command
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future updateData() {
    Future.delayed(Duration(milliseconds: 2000)).then((_) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Dashboard()));
  });

  }
  @override
  void initState() {
    Firebase.initializeApp();
    updateData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(21, 21, 21, 1),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
