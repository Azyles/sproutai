import 'package:flutter/material.dart';
import 'dart:core';

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
        color: Colors.amberAccent,
        child: Column(

          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 80),
              child: Text('Plants'),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Plant('some name'),
                ],
              ),
            ),
          ],
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
      color: Color.fromRGBO(255, 255, 255, 0.37),
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
