import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_app/AllScreen/HomeScreen.dart';
import 'package:tourist_app/AllScreen/addExcursionGuide.dart';
import 'package:tourist_app/AllScreen/loginGuide.dart';
import 'package:tourist_app/AllScreen/loginScreen.dart';
import 'package:tourist_app/widgets/edgeroundbutton.dart';
import 'package:tourist_app/widgets/textinput.dart';
class guideProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "images/profileimage.png"
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  child: Container(
                    alignment: Alignment(0.0,1.5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          "images/profile.png "
                      ),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "Pinky Abraham"
                ,style: TextStyle(
                  fontSize: 25.0,
                  color:Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "pinkyabras101@gmail.com"
                ,style: TextStyle(
                  fontSize: 18.0,
                  color:Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "8078203285"
                ,style: TextStyle(
                  fontSize: 15.0,
                  color:Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300
              ),
              ),
              SizedBox(
                height: 10,
              ),
    new Column(
    children: <Widget>[
              new Container(
                child: new Text(
                  'Languages',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black),
                ),
                margin: new EdgeInsets.only(left: 10.0, bottom: 5.0, top: 10.0),
              ),
              new Container(
                child: new TextFormField(
                  decoration: new InputDecoration(
                      hintText: 'English, Hindi , Malayalam, Telugu',
                      border: new UnderlineInputBorder(),
                      contentPadding: new EdgeInsets.all(5.0),
                      hintStyle: new TextStyle(color: Colors.grey)),
                ),
                margin: new EdgeInsets.only(left: 30.0, right: 30.0),
              ),
              SizedBox(
                height: 50,
              ),
              new Container(
                child: new Text(
                  'About Me',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black),
                ),
                margin: new EdgeInsets.only(left: 10.0, bottom: 5.0, top: 10.0),
              ),
              new Container(
                child: new TextFormField(
                  decoration: new InputDecoration(
                      hintText: 'Hello everyone and welcome! \n I,m one of the founding explorers in the god own country \n i have the experience of showing small groups clients around kuttanad',
                      border: new UnderlineInputBorder(),
                      contentPadding: new EdgeInsets.all(5.0),
                      hintStyle: new TextStyle(color: Colors.grey)),
                  maxLines: 6,
                ),
                margin: new EdgeInsets.only(left: 30.0, right: 30.0),
              ),
              SizedBox(
                height: 30,
              ),
                GestureDetector(
                onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Excursion()),
    );
    },
      child: Container(
        child: new Text(
    'My Excursions',
        )
      ),),
      SizedBox(
        height: 30,
      ),
      const Divider(
        height: 20,
        thickness: 1,
        color: Colors.black,
        indent: 20,
        endIndent: 20,
      ),
      SizedBox(
        height: 30,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen()),
          );
        },
        child: Container(
          child: Text(
            'Logout',
            // style: TextStyle(
            //   color: Colors.blue,
            // ),
            //     style: kBodyText,
          ),
        ),),
      SizedBox(
        height: 30,
      ),
                ]
                )
             // Tex
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [

                  // RaisedButton(
                  //   onPressed: (){
                  //   },
                  //   shape:  RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(80.0),
                  //   ),
                  //   child: Ink(
                  //     decoration: BoxDecoration(
                  //       gradient: LinearGradient(
                  //           begin: Alignment.centerLeft,
                  //           end: Alignment.centerRight,
                  //           colors: [Colors.pink,Colors.redAccent]
                  //       ),
                  //       borderRadius: BorderRadius.circular(80.0),
                  //     ),
                  //     child: Container(
                  //       constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                  //       alignment: Alignment.center,
                  //       child: Text(
                  //         "Edit Profile",
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 12.0,
                  //             letterSpacing: 2.0,
                  //             fontWeight: FontWeight.w300
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // )
             //   ],
              //)
            ],
          ),
        )
    );
  }
}