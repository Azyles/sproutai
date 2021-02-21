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
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            RaisedButton(
              child: Text("Add garden screen"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddGarden()));
              },
            ),
            RaisedButton(
              child: Text("View garden screen"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewGarden()));
              },
            ),
            RaisedButton(
              child: Text("Add garden Camera Screen"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GardenAddCamera()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
