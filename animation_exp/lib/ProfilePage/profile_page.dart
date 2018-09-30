import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animation_exp/SwipeAnimation/index.dart';
import 'package:animation_exp/CreateProfile/CreateProfile.dart';

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
          new DecoratedBox(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/avatars/avatar-3.jpg")),
            ),
          ),
          new Center(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text('welcome to volunet',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    fontFamily: 'Roboto',
                  ),
                ),
                new Icon(account_circle, size: 72.0),
                new RaisedButton(
                  color: Colors.blue,
                  child: new Text('Log in with LinkedIn'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => new CardDemo()));
                  },
                ),
                new RaisedButton(
                  child: new Text('Create Profile'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(builder: (context) => new CreateProfile()));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}