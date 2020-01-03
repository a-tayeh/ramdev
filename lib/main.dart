// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'WELCOME TO RAMDEV',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'PoiretOne',
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0),
          ),
          backgroundColor: Colors.amber[400],
        ),
        body: Center(
          child: Text('In progress',
              style: TextStyle(fontSize: 25, color: Colors.white)),
        ),
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          child: Text('Check in!'),
          onPressed: () {},
          backgroundColor: Colors.amber[400],
        ),
      ),
    );
  }
}
