import 'package:flutter/material.dart';

class BasicRichText extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<BasicRichText> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: new Text('Rich Text'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new RichText(
              text: TextSpan(
                text: 'NaN ',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(text: 'Rich', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' text!'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}