import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sproutai/dashboard.dart';

class AddGarden extends StatefulWidget {
  @override
  _AddGardenState createState() => _AddGardenState();
}

class _AddGardenState extends State<AddGarden> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController stateController = new TextEditingController();

  TextEditingController countryController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: ExactAssetImage('lib/Assets/backgroundAddImg.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              ClipRect(
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: new Container(
                      height: MediaQuery.of(context).size.height * 0.70,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.15),
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[600].withOpacity(0.4)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 20),
                                child: Text(
                                  "Add Garden",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 20),
                                child: Text(
                                  "Garden Name",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(184, 184, 184, 1)),
                                ),
                              ),
                            ],
                          ),
                          ClipRect(
                              child: new BackdropFilter(
                                  filter: new ImageFilter.blur(
                                      sigmaX: 20.0, sigmaY: 20.0),
                                  child: new Container(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      height: 40,
                                      padding:
                                          EdgeInsets.only(left: 10, bottom: 5),
                                      width: MediaQuery.of(context).size.width *
                                          0.80,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.15),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: TextField(
                                        controller: nameController,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ))),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 20),
                                child: Text(
                                  "State/Region",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(184, 184, 184, 1)),
                                ),
                              ),
                            ],
                          ),
                          ClipRect(
                              child: new BackdropFilter(
                                  filter: new ImageFilter.blur(
                                      sigmaX: 20.0, sigmaY: 20.0),
                                  child: new Container(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      height: 40,
                                      padding:
                                          EdgeInsets.only(left: 10, bottom: 5),
                                      width: MediaQuery.of(context).size.width *
                                          0.80,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.15),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: TextField(
                                        controller: stateController,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ))),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 20),
                                child: Text(
                                  "Country",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(184, 184, 184, 1)),
                                ),
                              ),
                            ],
                          ),
                          ClipRect(
                              child: new BackdropFilter(
                                  filter: new ImageFilter.blur(
                                      sigmaX: 20.0, sigmaY: 20.0),
                                  child: new Container(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      height: 40,
                                      padding:
                                          EdgeInsets.only(left: 10, bottom: 5),
                                      width: MediaQuery.of(context).size.width *
                                          0.80,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.15),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: TextField(
                                        controller: countryController,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ))),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.80,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.22),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(64, 206, 162, 1),
                              onPressed: () async {
                                FirebaseFirestore.instance
                                    .collection("Gardens")
                                    .doc()
                                    .set({
                                  "name": nameController.text,
                                  "state": stateController.text,
                                  "country": countryController.text
                                }).then((val) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()));
                                });
                              },
                              child: Text(
                                "Add Garden",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
