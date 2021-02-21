import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sproutai/addGardenScreen.dart';
import 'package:sproutai/gardenAddCameraScreen.dart';
import 'package:sproutai/viewGarden.dart';

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
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Expanded(
                child: GridView.count(
              primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 16.0, sigmaY:16.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.25)),
                      child: new Center(
                        child: Column(
                          children: [
                            Image.network("https://cdn2.iconfinder.com/data/icons/landscape-designer-landscape-designericons-set-iso/500/vab778_46_garden_stone_isometric_cartoon_texture_nature_construction-512.png",width: 120,),
                            Text('Garden',
                                style: TextStyle(color: Colors.white, fontSize: 30)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 16.0, sigmaY:16.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.25)),
                      child: new Center(
                        child: Column(
                          children: [
                            Image.network("https://cdn2.iconfinder.com/data/icons/landscape-designer-landscape-designericons-set-iso/500/vab778_46_garden_stone_isometric_cartoon_texture_nature_construction-512.png",width: 120,),
                            Text('Garden',
                                style: TextStyle(color: Colors.white, fontSize: 30)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 16.0, sigmaY:16.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.25)),
                      child: new Center(
                        child: Column(
                          children: [
                            Image.network("https://cdn2.iconfinder.com/data/icons/landscape-designer-landscape-designericons-set-iso/500/vab778_46_garden_stone_isometric_cartoon_texture_nature_construction-512.png",width: 120,),
                            Text('Garden',
                                style: TextStyle(color: Colors.white, fontSize: 30)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 16.0, sigmaY:16.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.25)),
                      child: new Center(
                        child: Column(
                          children: [
                            Image.network("https://cdn2.iconfinder.com/data/icons/landscape-designer-landscape-designericons-set-iso/500/vab778_46_garden_stone_isometric_cartoon_texture_nature_construction-512.png",width: 120,),
                            Text('Garden',
                                style: TextStyle(color: Colors.white, fontSize: 30)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 16.0, sigmaY:16.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.25)),
                      child: new Center(
                        child: Column(
                          children: [
                            Image.network("https://cdn2.iconfinder.com/data/icons/landscape-designer-landscape-designericons-set-iso/500/vab778_46_garden_stone_isometric_cartoon_texture_nature_construction-512.png",width: 120,),
                            Text('Garden',
                                style: TextStyle(color: Colors.white, fontSize: 30)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 16.0, sigmaY:16.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.25)),
                      child: new Center(
                        child: Column(
                          children: [
                            Image.network("https://cdn2.iconfinder.com/data/icons/landscape-designer-landscape-designericons-set-iso/500/vab778_46_garden_stone_isometric_cartoon_texture_nature_construction-512.png",width: 120,),
                            Text('Garden',
                                style: TextStyle(color: Colors.white, fontSize: 30)),
                          ],
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
    );
  }
}
