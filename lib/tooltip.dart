import 'package:flutter/material.dart';

class BasicTooltip extends StatefulWidget {
  @override
  _BasicTooltipState createState() => _BasicTooltipState();
}

class _BasicTooltipState extends State<BasicTooltip> {
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
      body: Center(
        child: Container(
          child: Tooltip(
            message: "I love Flutter",
            showDuration: const Duration(milliseconds: 3000),
            child: FlutterLogo(size: 200,),),
        ),
      ),
    );
  }
}
