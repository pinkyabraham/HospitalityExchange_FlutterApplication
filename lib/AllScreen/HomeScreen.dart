import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_app/AllScreen/loginGuide.dart';

import 'LoginHost.dart';
import 'loginScreen.dart';

class HomeScreen extends StatelessWidget {
  _getSizes() {}

  _getPositions() {}

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: SingleChildScrollView(
        // padding: new EdgeInsets.only(left: 0.0, bottom: 8.0, right: 16.0),
        //  decoration: new BoxDecoration(color: Colors.blue),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen()),
                );
              },
            child : Card(
              child: Column(children: [
                Stack(
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: AssetImage("images/homepage.png"),
                        height: 300,
                        fit: BoxFit.fitHeight,
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      child: Column(children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Explore The World ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              fontFamily: 'RobotoMono'),
                        ),
                        Text(
                          " Change the way you travel and \n      stay with locals in every \n          country on earth",
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        )
                      ]),
                    )
                  ],
                ),
              ]),
            ),
            ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginHost()),
          );
        },
            child: Card(
              child: Column(children: [
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage("images/homestaynepalvillage.png"),
                        height: 300,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Become a host ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              fontFamily: 'RobotoMono'),
                        ),
                        Text(
                          " Give back and open your\n        home to travelers",
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        )
                      ]),
                    )
                  ],
                ),
              ]),
            ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginGuide()),
          );
        },
           child: Card(
              child: Column(children: [
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage("images/tourguide.png"),
                        height: 300,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Be a Guide ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              fontFamily: 'RobotoMono'),
                        ),
                        Text(
                          " Point out the way \n   and lead others",
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        )
                      ]),
                    )
                  ],
                ),
              ]),
            ),
      ),
          ],
        ),
      ),
    );
  }
}
