import 'dart:math';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:requests/requests.dart';
import 'package:sproutai/dashboard.dart';

class AddGarden extends StatefulWidget {
  final double gardenWidth;
  final double gardenHeight;

  AddGarden(this.gardenWidth, this.gardenHeight);
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
                                var resultsList = [];

                                var r = await Requests.get(
                                    'https://trefle.io/api/v1/species/search?q=' +
                                        "spinach" +
                                        '&token=dBLElJqL4EQgdyxu29TMB206AVqpUDmqCZUN4sC9oZ8');
                                r.raiseForStatus();
                                var body = r.json();

                                var data = body['data'];

                                for (var x = 0; x <= data.length - 1; x++) {
                                  if (data[x]["common_name"] != null &&
                                      data[x]["scientific_name"] != null) {
                                    resultsList.add(data[x]);
                                  }
                                }

                                FirebaseFirestore.instance
                                    .collection("Gardens")
                                    .add({
                                  "name": nameController.text,
                                  "state": stateController.text,
                                  "country": countryController.text,
                                  "width": widget.gardenWidth,
                                  "height": widget.gardenHeight,
                                }).then((doc) {
                                  print(doc);

                                  var id = doc.id;

                                  Random random = new Random();
                                  int randomNumber1 = random.nextInt(
                                      resultsList.length -
                                          1); // from 0 upto 99 included

                                  int randomNumber2 = random.nextInt(
                                      resultsList.length -
                                          1); // from 0 upto 99 included

                                  int randomNumber3 = random.nextInt(
                                      resultsList.length -
                                          1); // from 0 upto 99 included

                                  FirebaseFirestore.instance
                                      .collection("Gardens")
                                      .doc(id)
                                      .collection("Plants")
                                      .add({
                                    "image": resultsList[randomNumber1]
                                        ['image_url'],
                                    "plant name": resultsList[randomNumber1]
                                        ['common_name'],
                                    "recommendation": true,
                                    "scientific name":
                                        resultsList[randomNumber1]
                                            ['scientific_name']
                                  });

                                  FirebaseFirestore.instance
                                      .collection("Gardens")
                                      .doc(id)
                                      .collection("Plants")
                                      .add({
                                    "image": resultsList[randomNumber2]
                                        ['image_url'],
                                    "plant name": resultsList[randomNumber2]
                                        ['common_name'],
                                    "recommendation": true,
                                    "scientific name":
                                        resultsList[randomNumber2]
                                            ['scientific_name']
                                  });

                                  FirebaseFirestore.instance
                                      .collection("Gardens")
                                      .doc(id)
                                      .collection("Plants")
                                      .add({
                                    "image": resultsList[randomNumber3]
                                        ['image_url'],
                                    "plant name": resultsList[randomNumber3]
                                        ['common_name'],
                                    "recommendation": true,
                                    "scientific name":
                                        resultsList[randomNumber3]
                                            ['scientific_name']
                                  }).then((val) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Dashboard()));
                                  });

                                  /*

                                          */
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
