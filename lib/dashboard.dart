import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sproutai/addGardenScreen.dart';
import 'package:sproutai/gardenAddCameraScreen.dart';
import 'package:sproutai/viewGarden.dart';

import 'addGardenScreen.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/736x/24/b9/00/24b900ccb620531b3e3283965cb49aac.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Text(
              "Gardens",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("Gardens").snapshots(),
              builder: (context, snap) {
                if (snap.hasData) {
                  var list = [];

                  //print(snap.data);

                  snap.data.docs.forEach((value) {
                    var data = value.data();

                    data['id'] = value.id;

                    list.add(data);
                  });

                  list.add("data");

                  return Expanded(
                    child: GridView.builder(
                      itemCount: list.length,
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        print(index);

                        if (index == list.length - 1 || list.length == 0) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GardenAddCamera()));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: new BackdropFilter(
                                filter: new ImageFilter.blur(
                                    sigmaX: 16.0, sigmaY: 16.0),
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.white.withOpacity(0.25)),
                                  child: new Center(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 70),
                                          child: Center(
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 50,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewGarden(list[index]['id'])));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: new BackdropFilter(
                                filter: new ImageFilter.blur(
                                    sigmaX: 16.0, sigmaY: 16.0),
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.white.withOpacity(0.25)),
                                  child: new Center(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 15),
                                          child: Image.asset(
                                            "lib/Assets/gardenISO.png",
                                            width: 100,
                                          ),
                                        ),
                                        /*
                                    Image.network(
                                      "https://cdn2.iconfinder.com/data/icons/landscape-designer-landscape-designericons-set-iso/500/vab778_46_garden_stone_isometric_cartoon_texture_nature_construction-512.png",
                                      width: 120,
                                    ),
                                    */

                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(list[index]['name'],
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
