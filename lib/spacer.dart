import 'package:flutter/material.dart';

class BasicSpacer extends StatefulWidget {
  @override
  _BasicSpacerState createState() => _BasicSpacerState();
}

class _BasicSpacerState extends State<BasicSpacer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Spacer"),
          elevation: 0.1,
          centerTitle: true,
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
