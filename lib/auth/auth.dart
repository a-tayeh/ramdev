import 'package:flutter/material.dart';
import 'package:ramdev/form_input.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Auth BABY!!',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'AUTH PAGE',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'PoiretOne',
                fontWeight: FontWeight.normal,
                letterSpacing: 3.0),
          ),
          backgroundColor: Colors.amber[400],
        ),
        body: Form(
            child: Column(
          children: <Widget>[
            FormInput(
              placeholder: "Email",
              labelIcon: Icon(Icons.email),
            ),
            FormInput(
              placeholder: "Password",
              labelIcon: Icon(Icons.lock),
            )
          ],
        )),
        backgroundColor: Colors.black,
      ),
    );
  }
}
