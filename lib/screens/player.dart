import 'package:flutter/material.dart';
import 'package:focus_player/constants/constants.dart';

class Player extends StatefulWidget {
  static String id = 'Player';

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  ScrollController controller;
  @override
  Widget build(BuildContext context) {
    double deviceHeight= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('data types'),
        actions: [
          IconButton(
              icon: Icon(Icons.delete, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: deviceHeight*0.4,
              color: kYellow,
            ),
            Container(
              margin: EdgeInsets.only(top:20),
              padding: EdgeInsets.all(15.0),
              width: double.infinity,
              height: 200,
              color: kYellow,
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Python Data types"),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
