import 'package:flutter/material.dart';

class BasicPlaceholder extends StatefulWidget {
  @override
  _BasicPlaceholderState createState() => _BasicPlaceholderState();
}

class _BasicPlaceholderState extends State<BasicPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text('PlaceHolder'),
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
            SizedBox(height: 20),
            SizedBox(
              height: 100.0,
              child: Container(
                height: 100,
                child: Placeholder(
                  color: Colors.green,
                  strokeWidth: 10,
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              child: Container(
                constraints: BoxConstraints.expand(height: 100, width: 100),
                child: Placeholder(
                  color: Colors.pink,
                  strokeWidth: 5,
                  fallbackHeight: 100,
                  fallbackWidth: 50,
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 100.0,
              child: Container(
                height: 100,
                child: Placeholder(
                  color: Colors.blue,
                  strokeWidth: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
