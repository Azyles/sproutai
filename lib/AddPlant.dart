import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:requests/requests.dart';

class PlantAddView extends StatefulWidget {
  @override
  _PlantAddViewState createState() => _PlantAddViewState();
}

class _PlantAddViewState extends State<PlantAddView> {
  var resultsList = [];

  TextEditingController searchController = new TextEditingController();

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
              "Add Plants",
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.4)),
                      child: new Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 20),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: new BackdropFilter(
                                      filter: new ImageFilter.blur(
                                          sigmaX: 16.0, sigmaY: 16.0),
                                      child: new Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        decoration: new BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.3)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 14, top: 2),
                                          child: new Center(
                                            child: TextField(
                                              controller: searchController,
                                              decoration: new InputDecoration(
                                                hintText: "Plant Name",
                                                labelStyle: new TextStyle(
                                                    color: const Color(
                                                        0xFF424242)),
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    resultsList = [];

                                    var r = await Requests.get(
                                        'https://trefle.io/api/v1/species/search?q=' +
                                            searchController.text +
                                            '&token=dBLElJqL4EQgdyxu29TMB206AVqpUDmqCZUN4sC9oZ8');
                                    r.raiseForStatus();
                                    var body = r.json();

                                    var data = body['data'];

                                    print(r.content());

                                    for (var x = 0; x <= data.length - 1; x++) {
                                      print(data[x]);
                                      resultsList.add(data[x]);
                                    }

                                    setState(() {});
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(1000),
                                      child: new BackdropFilter(
                                        filter: new ImageFilter.blur(
                                            sigmaX: 16.0, sigmaY: 16.0),
                                        child: new Container(
                                          height: 50,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          decoration: new BoxDecoration(
                                              color: Colors.black
                                                  .withOpacity(0.9)),
                                          child: new Center(
                                              child: Icon(
                                            Icons.search,
                                            color: Colors.white,
                                          )),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              "Results",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0,
                            ),
                            Expanded(
                                child: ListView.builder(
                              itemCount: resultsList.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 20),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: new BackdropFilter(
                                      filter: new ImageFilter.blur(
                                          sigmaX: 16.0, sigmaY: 16.0),
                                      child: new Container(
                                        height: 70,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        decoration: new BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.3)),
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 14, top: 2),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              resultsList[index]
                                                                  [
                                                                  'image_url'] != null ? resultsList[index]
                                                                  [
                                                                  'image_url'] : ),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      resultsList[index]
                                                          ['common_name'],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25),
                                                    ),
                                                    Text(
                                                      resultsList[index]
                                                          ['scientific_name'],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ))
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
      ),
    );
  }
}
