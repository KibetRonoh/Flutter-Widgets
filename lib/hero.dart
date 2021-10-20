import 'package:flutter/material.dart';

class BasicHero extends StatefulWidget {
  @override
  _BasicHeroState createState() => _BasicHeroState();
}

class _BasicHeroState extends State<BasicHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Hero"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
            },
          )
        ],
      ),

    );
  }
}
