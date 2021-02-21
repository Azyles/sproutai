import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:core';

import 'package:sproutai/AddPlant.dart';

class ViewGarden extends StatefulWidget {
  ViewGarden({Key key}) : super(key: key);

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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 120, bottom: 20),
              child: Text(
                "Plants",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
            Expanded(
                child: ListView(
              primary: false,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: new BackdropFilter(
                        filter:
                            new ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                        child: new Container(
                          decoration: new BoxDecoration(
                              color: Colors.white.withOpacity(0.25)),
                          child: new Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    "https://cdn2.iconfinder.com/data/icons/landscape-designer-landscape-designericons-set-iso/500/vab778_46_garden_stone_isometric_cartoon_texture_nature_construction-512.png",
                                    height: 80,
                                  ),
                                ),
                                Text('Cool Plant',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: new BackdropFilter(
                        filter:
                            new ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                        child: new Container(
                          decoration: new BoxDecoration(
                              color: Colors.white.withOpacity(0.25)),
                          child: new Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    "https://cdn2.iconfinder.com/data/icons/landscape-designer-landscape-designericons-set-iso/500/vab778_46_garden_stone_isometric_cartoon_texture_nature_construction-512.png",
                                    height: 80,
                                  ),
                                ),
                                Text(
                                  'Cool Plant',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PlantAddView()));
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
