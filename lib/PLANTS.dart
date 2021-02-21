import 'dart:ui';

import 'package:flutter/material.dart';


class PlantInfoView extends StatefulWidget {
  @override
  _PlantInfoViewState createState() => _PlantInfoViewState();
}

class _PlantInfoViewState extends State<PlantInfoView> {
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
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              child: Image.network(
                  "https://www.kennysflowershoppe.com/wp-content/uploads/2021/02/4341b190b5069197c4d7783689f154a4.png"),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.height * 0.2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tempor placerat leo, vitae ",
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: new BackdropFilter(
                          filter:
                              new ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: Colors.white.withOpacity(0.95)),
                            child: new Center(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Image.network(
                                      "https://cdn.dribbble.com/users/2656181/screenshots/6375006/21.jpg?compress=1&resize=400x300",
                                      fit: BoxFit.cover,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  Text(
                                    '18',
                                    style: TextStyle(
                                        color: Colors.grey[900],
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
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: new BackdropFilter(
                          filter:
                              new ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: Colors.white.withOpacity(0.95)),
                            child: new Center(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Image.network(
                                      "https://cdn.dribbble.com/users/2656181/screenshots/6375006/21.jpg?compress=1&resize=400x300",
                                      fit: BoxFit.cover,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  Text(
                                    '19',
                                    style: TextStyle(
                                        color: Colors.grey[900],
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
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: new BackdropFilter(
                          filter:
                              new ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: Colors.white.withOpacity(0.25)),
                            child: new Center(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Image.network(
                                      "https://cdn.dribbble.com/users/2656181/screenshots/6375006/21.jpg?compress=1&resize=400x300",
                                      fit: BoxFit.cover,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  Text(
                                    '20',
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
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: new BackdropFilter(
                          filter:
                              new ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                          child: new Container(
                            decoration: new BoxDecoration(
                                color: Colors.white.withOpacity(0.25)),
                            child: new Center(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Image.network(
                                      "https://cdn.dribbble.com/users/2656181/screenshots/6375006/21.jpg?compress=1&resize=400x300",
                                      fit: BoxFit.cover,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  Text(
                                    '21',
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
