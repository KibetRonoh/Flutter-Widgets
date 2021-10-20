import 'package:flutter/material.dart';

class BasicStack extends StatefulWidget {
  @override
  _BasicStackState createState() => _BasicStackState();
}

class _BasicStackState extends State<BasicStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //our code.
            _alignStack()
          ],
        ),
      ),
    );
  }

  Widget _alignStack() => Container(
    color: Colors.orange,
    constraints: BoxConstraints.expand(height: 560),
    child: Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 200,
          width: 200,
          color: Colors.white,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ),
      ],
    ),
  );
}
