import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animation_exp/SwipeAnimation/index.dart';
import 'package:animation_exp/SwipeAnimation/detail.dart';
import 'package:animation_exp/SwipeAnimation/styles.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Profile();
  }
}

const IconData account_circle = IconData(0xe853, fontFamily: 'MaterialIcons');

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Center(
            child: ListView(
              children: <Widget>[
                SizedBox(height: 48.0),
                new CircleAvatar(
                  backgroundImage: avatar3,
                  radius: 96.0,
                ),
                SizedBox(height: 48.0),
                new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Text('Jane S.',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    new Text(
                      'Engineer at Google (Flutter)'
                    ),
                    SizedBox(height: 48.0),
                    new Text(
                      'Interests: Fitness, Education',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    new Text(
                      'Volunteer Points: 528',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    new RaisedButton(
                      color: Colors.blue,
                      child: new Text('Ok'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}