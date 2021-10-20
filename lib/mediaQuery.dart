import 'package:flutter/material.dart';

class BasicMediaQuery extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<BasicMediaQuery> {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Media Query"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
          color: Color.fromRGBO(58, 66, 86, 1.0),
          width: sizeX,
          height: sizeY,
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Largeur de l'ecran: $sizeX", style: TextStyle(color: Colors.white),),
              Text("Hauteur de l'ecran: $sizeY",  style: TextStyle(color: Colors.white), ),
            ],
          )
      ),
    );
  }
}
