import 'package:flutter/material.dart';

class BasicSafeArea extends StatefulWidget {
  @override
  _BasicSafeAreaState createState() => _BasicSafeAreaState();
}

class _BasicSafeAreaState extends State<BasicSafeArea> {
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
        body: Align(
          alignment: Alignment.topLeft,
          child: SafeArea(
            left: true,
            top: true,
            right: true,
            bottom: true,
            minimum: const EdgeInsets.all(16.0),
            child: Text(
                'Mon widget: Ceci est mon widget. Il a un contenu que je ne veux pas '
            'bloqué par certains fabricants qui ajoutent des entailles, des trous et des coins arrondis.'),
          ),
        ),
    );
  }
}
