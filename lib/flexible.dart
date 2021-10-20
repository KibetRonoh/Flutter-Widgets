import 'package:flutter/material.dart';

class BasicFlexible extends StatefulWidget {
  @override
  _BasicFlexibleState createState() => _BasicFlexibleState();
}

class _BasicFlexibleState extends State<BasicFlexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Flexible"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
            },
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 30,),
          Flexible(
            child: Container(color: Colors.cyanAccent, height: 80, width: 80),
            flex: 2,
          ),
          Flexible(
            child: Container(color: Colors.indigoAccent, height: 80, width: 80),
            flex: 3,
          ),
          Flexible(
            child: Container(color: Colors.orange, height: 80, width: 80),
            flex: 4,
          ),
        ],
      ),
    );
  }
}
