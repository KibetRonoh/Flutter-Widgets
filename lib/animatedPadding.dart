import 'package:flutter/material.dart';

class BasicAnimatedPadding extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class BasicAnimatedPadding extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class BasicAnimatedPadding extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BasicAnimatedPadding> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("AnimatedPadding"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: AnimatedPadding(
              child: Container(
                color: Color.fromRGBO(58, 66, 86, 1.0),
              ),
              duration: const Duration(seconds: 1),
              padding: EdgeInsets.all(padValue),
              curve: Curves.easeInOut,
            ),
          ),
          Text('Padding Value: $padValue'),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Add Padding'),
                onPressed: () {
                  setState(() {
                    padValue = padValue + 10;
                  });
                },
              ),
              RaisedButton(
                child: Text('Sub Padding'),
                onPressed: () {
                  setState(() {
                    if(padValue != 0)
                    {
                      padValue = padValue - 10;
                    }
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}