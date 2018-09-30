import 'package:flutter/material.dart';


class MyOptions extends StatefulWidget {
  @override
  _MyOptionsState createState() => new _MyOptionsState();
}

var labels = ['Fitness', 'Education', 'Environment', 'Animal Welfare'];

class _MyOptionsState extends State<MyOptions> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return new Wrap(
      children: new List<Widget>.generate(
        3,
            (int index) {
          return new ChoiceChip(
            label: new Text(labels[index]),
            selected: false,//_value == index,
            onSelected: (bool selected) {
              selected = !selected;
            },
          );
        },
      ).toList(),
    );
  }
}

class CreateProfile extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _CreateProfileState createState() => new _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 24.0,
        child: Image.asset('assets/addprofile.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final name = new Column(
      children: <Widget>[
        new TextFormField(
          autofocus: false,
          initialValue: '',
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'First Name',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)),
          ),
        ),

        new TextFormField(
          autofocus: false,
          initialValue: '',
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Last Name',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)),
          ),
        ),
      ],
    );

    final createProfileButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            //Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Complete', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final choiceChips =  new MyOptions();

    final interests = TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Interests:'
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        children: <Widget>[
          new Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logo,
                SizedBox(height: 8.0),
                new Center(child: new Text('add profile picture')),
                SizedBox(height: 48.0),
                email,
                SizedBox(height: 8.0),
                password,
                name,
                interests,
                choiceChips,
                SizedBox(height: 24.0),
                createProfileButton,
              ],
            ),
          ),
        ],
      ),
    );
  }
}