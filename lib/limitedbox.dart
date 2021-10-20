import 'package:flutter/material.dart';

class BasicLimitedBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          centerTitle: true,
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          title: Text("LimitedBox"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
              },
            )
          ],
        ),
      body: Center(
        child: LimitedBox(
          maxHeight: 500.0,
          maxWidth: 500.0,
          //here, our container widget has no particular height or width
          child: Container(
            color: Color.fromRGBO(209, 224, 224, 0.2),
          ),
          //we use the maxWidth & maxHeight to limit it
        ),
      ),
    );
  }
}