import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_app/AllScreen/HomeScreen.dart';
import 'package:tourist_app/AllScreen/addExcursionGuide.dart';
import 'package:tourist_app/AllScreen/loginGuide.dart';
import 'package:tourist_app/AllScreen/loginScreen.dart';
import 'package:tourist_app/widgets/edgeroundbutton.dart';
import 'package:tourist_app/widgets/textinput.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                  Column(
                      children: [
                        Card(
                          child: Stack(children: [
                            Container(
                              height: 590,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/tourist3.png"
                                      ),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Column(children: [
                                SizedBox(
                                  height: 190,
                                ),
                                Text(
                                  " Change \n The Way \n You Travel",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40.0,
                                      fontFamily: 'RobotoMono'),
                                ),
                              ]),
                            ),


                            Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: Column(children: [
                                    SizedBox(
                                      height: 390,
                                    ),
                                    TextField(
                                      onChanged: (value) {
                                        filterSearchResults(value);
                                      },
                                      controller: editingController,
                                      decoration: InputDecoration(

                                          fillColor: Colors.white,
                                          filled: true,
                                          hintText: "Where you want to go?",
                                          prefixIcon: Icon(Icons.search),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25.0)))),
                                    ),

                                  ],
                                  ),
                                )
                            )
                      ]
                  ),
                        ),
    Align(
    alignment: Alignment(-0.8,0.0),
    child: Container(
    child: Column(

        children: [
    SizedBox(
    height: 50,
    ),
                        Text( " Explore near you",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontFamily: 'RobotoMono'),
                        ),
        ]
    )
    )
    ),


              Column(children: [
                SizedBox(
                  height: 40,
                ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                     child: Container(
                        alignment: Alignment.center,
                         height: 180,
                        width:300,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
    Radius.circular(20.0)),
                            image: DecorationImage(
                                image: AssetImage(
                                    "images/allapy.png"
                                ),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
              ),
             ]


         ),
          Container(
            alignment: Alignment(-0.6,0.0),
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Text(
                " Alappuzha",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontFamily: 'RobotoMono'),
              ),
            ]),
          ),

                        Column(children: [
                          SizedBox(
                            height: 40,
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              height: 180,
                              width:300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20.0)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/athirappilly.png"
                                      ),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ),
                        ]


                        ),
                        Container(
                          alignment: Alignment(-0.6,0.0),
                          child: Column(children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              " Athirappilly",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontFamily: 'RobotoMono'),
                            ),
                          ]),
                        ),

                        Column(children: [
                          SizedBox(
                            height: 40,
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              height: 180,
                              width:300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20.0)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/ezhattumkham.png"
                                      ),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ),
                        ]


                        ),
                        Container(
                          alignment: Alignment(-0.6,0.0),
                          child: Column(children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              " Ezhatumukham",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontFamily: 'RobotoMono'),
                            ),
                          ]),
                        ),

                        Column(children: [
                          SizedBox(
                            height: 40,
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              height: 180,
                              width:300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20.0)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/wagamon.png"
                                      ),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ),
                        ]


                        ),
                        Container(
                          alignment: Alignment(-0.6,0.0),
                          child: Column(children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              " Wagamon",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontFamily: 'RobotoMono'),
                            ),
                          ]),
                        ),


                ]
            ),
        ),
    );
  }
}






