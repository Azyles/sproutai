import 'dart:ui';

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
              Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.25),
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25, ),
                            child: Text(
                              "Add Garden",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.80,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color.fromRGBO(64, 206, 162, 1),
                          onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
