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
        primaryColor: Colors.red,
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
        title: Text("First Rater Media"),
        elevation: 30,
        shadowColor: Colors.grey,
      ),
      body: BackDrop(
        backLayerColor: Colors.red,
        foreLayerColor: Colors.black,
        foreLayerWidget: Container(),
      ),
    );
  }
}

// BackDrop
class BackDrop extends StatefulWidget {
  final Key key;
  final Color backLayerColor;
  final Color foreLayerColor;
  final Widget foreLayerWidget;
  BackDrop(
      {this.key,
      @required this.backLayerColor,
      @required this.foreLayerColor,
      @required this.foreLayerWidget})
      : super(key: key);

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
        color: widget.backLayerColor,
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Card(
            elevation: 30,
            child: AnimatedContainer(
              padding: EdgeInsets.fromLTRB(18, 18, 18, 0),
              duration: Duration(milliseconds: 900),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 56,
              child: widget.foreLayerWidget,
              color: widget.foreLayerColor,
            ),
          )),
    ]);
  }
}

var s =
    'http://newsapi.org/v2/top-headlines?country=us&apiKey=4d547f2d7ef549c9bb849833e790d744';
