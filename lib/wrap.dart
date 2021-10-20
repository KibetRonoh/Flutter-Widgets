import 'package:flutter/material.dart';

class BasicWrap extends StatefulWidget {
  @override
  _BasicWrapState createState() => _BasicWrapState();
}

class _BasicWrapState extends State<BasicWrap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Wrap"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
            },
          )
        ],
      ),
      body: Wrap(
        runSpacing: 4.0,
        spacing: 8.0,
        children: <Widget>[
          Container(height: 100,width: 100,color: Colors.red,),
          Container(height: 100,width: 100,color: Colors.orange,),
          Container(height: 100,width: 100,color: Colors.blue),
          Container(height: 100,width: 100,color: Colors.pink),
          Container(height: 100,width: 100,color: Colors.amberAccent,),
          Container(height: 100,width: 100,color: Colors.deepOrangeAccent),
          Container(height: 100,width: 100,color: Colors.purple),
          Container(height: 100,width: 100,color: Colors.greenAccent),
          Container(height: 100,width: 100,color: Colors.amberAccent),
          Container(height: 100,width: 100,color: Colors.lightBlueAccent),
          Container(height: 100,width: 100,color: Colors.grey),
          Container(height: 100,width: 100,color: Colors.amberAccent,),
          Container(height: 100,width: 100,color: Colors.blue),
          Container(height: 100,width: 100,color: Colors.purple),
        ],
      ),
    );
  }
}
