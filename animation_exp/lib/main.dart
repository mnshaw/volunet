import 'package:animation_exp/WelcomeScreen/welcome.dart';
import 'package:animation_exp/CreateProfile/CreateProfile.dart';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      // showPerformanceOverlay: true,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: new PageMain(),
//      home: new CardDemo(),
      home: new CreateProfile(),
      //home: BottomNavigationDemo(),
      // home:new exp(),
    );
  }
}
