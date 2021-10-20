import 'package:flutter/material.dart';

class BasicPageView extends StatefulWidget {
  @override
  _BasicPageViewState createState() => _BasicPageViewState();
}

class _BasicPageViewState extends State<BasicPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("PageView"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
            },
          )
        ],
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.teal,
          ),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
