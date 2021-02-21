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
    FirebaseAuth.instance.signInWithEmailAndPassword(email: "test@gmail.com", password: "password123").then((user){
      Future.delayed(Duration(milliseconds: 2000)).then((_) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Dashboard()));
      });
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
        body: Center(
          child: Container(
            height: 150,
            width: 150,
          child: ClipRRect(
              child: Image.asset("lib/Assets/logo.png"),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
