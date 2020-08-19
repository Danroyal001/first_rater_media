import 'dart:async';
// import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News and all',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Rater Media")
      )
    );
  }
}

// BackDrop
class BackDrop extends StatefulWidget {
  final Key key;
  BackDrop({this.key}) : super(key: key);

  @override
  _BackDropState createState() => _BackDropState();
}

class _BackDropState extends State<BackDrop> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 900),
        ),
      ]);
  }
}
