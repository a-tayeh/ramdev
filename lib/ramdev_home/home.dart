import 'package:flutter/material.dart';
import 'package:ramdev/services/auth_service.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'RAMDEV',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'PoiretOne',
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0),
          ),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('Log me out!'),
              onPressed: () async {
                await _auth.logOut();
              },
            )
          ],
          backgroundColor: Colors.amber[400],
        ),
        body: Center(
          child: Text('In progresses',
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
