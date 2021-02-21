import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddGarden extends StatefulWidget {
  @override
  _AddGardenState createState() => _AddGardenState();
}

class _AddGardenState extends State<AddGarden> {
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
              ClipRect(
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: new Container(
                      height: MediaQuery.of(context).size.height * 0.70,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.25),
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
                              onPressed: () {
                                FirebaseFirestore.instance
                                    .collection("Gardens")
                                    .doc()
                                    .set({
                                      "name": 
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
