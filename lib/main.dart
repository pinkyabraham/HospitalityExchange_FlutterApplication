import 'package:flutter/material.dart';
import 'package:tourist_app/AllScreen/HomeScreen.dart';
import 'package:tourist_app/AllScreen/HostReg.dart';
import 'package:tourist_app/AllScreen/LoginHost.dart';
import 'package:tourist_app/AllScreen/MainScreen.dart';
import 'package:tourist_app/AllScreen/guideReg.dart';
import 'package:tourist_app/AllScreen/loginScreen.dart';
import 'package:tourist_app/widgets/SelectImage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}
