import 'package:flutter/material.dart';

class BasicConstrainedBox extends StatefulWidget {
  @override
  _BasicConstrainedBoxState createState() => _BasicConstrainedBoxState();
}

class _BasicConstrainedBoxState extends State<BasicConstrainedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("ConstrainedBox"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
            },
          )
        ],
      ),
      body: ConstrainedBox(
          constraints: BoxConstraints.tight(Size(125, 100)),
          child: Container(
            color: Colors.orange,
            child: Padding(padding: EdgeInsets.all(16), child: Text('Box Constraint', style: TextStyle(color: Colors.white),)),
          )
      ),
    );
  }
}
