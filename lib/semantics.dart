import 'package:flutter/material.dart';

class BasicSemantics extends StatefulWidget {
  @override
  _BasicSemanticsState createState() => _BasicSemanticsState();
}

class _BasicSemanticsState extends State<BasicSemantics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Semantics"),
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 50, left: 50, width: 250, height: 250,
            child: Semantics(label: "Red", child: Container(color: Colors.orange)),
          ),
          Positioned(
            top: 75, left: 75, width: 250, height: 250,
            child: Semantics(label: "White", child: Container(color: Colors.white)),
          ),
          Positioned(
            top: 100, left: 100, width: 250, height: 250,
            child: Semantics(label: "Vert", child: Container(color: Colors.green)),
          )
        ],
      ),
    );
  }
}
