import 'package:flutter/material.dart';

class Basics extends StatefulWidget {
  @override
  _BasicsState createState() => _BasicsState();
}

class _BasicsState extends State<Basics> {
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
      body: Column(
        children: <Widget>[
          Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(0.0),
                color: Colors.cyanAccent,
                width: 100.0,
                height: 100.0,
                child: Text("Align"),
              )
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(color: Colors.cyan, height: 80),
                flex: 2,
              ),
              Expanded(
                child: Container(color: Colors.indigoAccent, height: 80),
                flex: 3,
              ),
              Expanded(
                child: Container(color: Colors.orange, height: 80),
                flex: 4,
              ),
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tight(Size(double.infinity, 256)),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Positioned(
                  top: 0.0,
                  child: Icon(Icons.calendar_today,
                      size: 78.0, color: Colors.lightBlueAccent),
                ),
                Positioned(
                    top: 4,
                    right: 110,
                    child: CircleAvatar(radius: 16, backgroundColor: Colors.red)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
