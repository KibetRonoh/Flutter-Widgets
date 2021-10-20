import 'package:flutter/material.dart';

class BasicAspectRatio extends StatefulWidget {
  @override
  _BasicAspectRatioState createState() => _BasicAspectRatioState();
}

class _BasicAspectRatioState extends State<BasicAspectRatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AspectRatio"),
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
      body: Center(
        child: AspectRatio(
          aspectRatio: 3/2,
          child: Container(
              color: Colors.black12,
              child: FlutterLogo(size: 100,),
          ),
        ),
      ),
    );
  }
}
