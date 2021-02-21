import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:core';

import 'package:sproutai/AddPlant.dart';

import 'dashboard.dart';

class ViewGarden extends StatefulWidget {
  String gardenID = "";

  ViewGarden(id) {
    gardenID = id;
  }

  @override
  _ViewGardenState createState() => _ViewGardenState();
}

class _ViewGardenState extends State<ViewGarden> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // however u want to do background img
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/24/b9/00/24b900ccb620531b3e3283965cb49aac.jpg'),
                  fit: BoxFit.cover)),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
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
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      "Plants",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 20),
                        child: Text(
                          "Recommendations",
                          style: TextStyle(
                              color: Colors.grey[300],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("Gardens")
                        .doc(widget.gardenID)
                        .collection("Plants")
                        .where("recommendation", isEqualTo: true)
                        .snapshots(),
                    builder: (context, snap) {
                      if (snap.hasData) {
                        var plantsList = [];

                        snap.data.docs.forEach((data) {
                          plantsList.add(data);
                        });

                        return Container(
                            height: plantsList.length * 130 * 1.0001,
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: plantsList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 7),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: new BackdropFilter(
                                        filter: new ImageFilter.blur(
                                            sigmaX: 16.0, sigmaY: 16.0),
                                        child: new Container(
                                          decoration: new BoxDecoration(
                                              color: Colors.white
                                                  .withOpacity(0.25)),
                                          child: new Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 80,
                                                        width: 80,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: Image.network(
                                                          plantsList[index][
                                                                      'image'] !=
                                                                  null
                                                              ? plantsList[
                                                                      index]
                                                                  ['image']
                                                              : "https://www.sustainability-times.com/wp-content/uploads/thumbs/leaves-3420078_960_720-39pnqmosh2oq6ra9pzs54w.jpg",
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            plantsList[index]
                                                                ['plant name'],
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)),
                                                        Text(
                                                            plantsList[index][
                                                                'scientific name'],
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[300],
                                                              fontSize: 18,
                                                            )),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ));
                      } else {
                        return Center(child: Text("No Data"));
                      }
                    },
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 20),
                        child: Text(
                          "My Plants",
                          style: TextStyle(
                              color: Colors.grey[100],
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("Gardens")
                        .doc(widget.gardenID)
                        .collection("Plants")
                        .where("recommendation", isEqualTo: null)
                        .snapshots(),
                    builder: (context, snap) {
                      if (snap.hasData) {
                        var plantsList = [];

                        snap.data.docs.forEach((data) {
                          plantsList.add(data);
                        });

                        return Container(
                            height: plantsList.length * 200 * 1.0,
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: plantsList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 7),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: new BackdropFilter(
                                        filter: new ImageFilter.blur(
                                            sigmaX: 16.0, sigmaY: 16.0),
                                        child: new Container(
                                          decoration: new BoxDecoration(
                                              color: Colors.white
                                                  .withOpacity(0.25)),
                                          child: new Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 80,
                                                        width: 80,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: Image.network(
                                                          plantsList[index][
                                                                      'image'] !=
                                                                  null
                                                              ? plantsList[
                                                                      index]
                                                                  ['image']
                                                              : "https://www.sustainability-times.com/wp-content/uploads/thumbs/leaves-3420078_960_720-39pnqmosh2oq6ra9pzs54w.jpg",
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            plantsList[index]
                                                                ['plant name'],
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)),
                                                        Text(
                                                            plantsList[index][
                                                                'scientific name'],
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[300],
                                                              fontSize: 18,
                                                            )),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ));
                      } else {
                        return Center(child: Text("No Data"));
                      }
                    },
                  ),
                ],
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlantAddView(widget.gardenID)));
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.grey.shade900,
        ),
      ),
    );
  }
}

class Plant extends StatelessWidget {
  final String name;

  Plant(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/736x/24/b9/00/24b900ccb620531b3e3283965cb49aac.jpg'),
              fit: BoxFit.cover)),
      child: Row(
        children: [
          Container(),
          SizedBox(
            width: 50,
          ),
          Text('testing'),
        ],
      ),
    );
  }
}
