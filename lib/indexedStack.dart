import 'package:flutter/material.dart';

class BasicIndexedStack extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BasicIndexedStack> {
  int i = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("IndexedStack"),
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: IndexedStack(
              index: i,
              children: <Widget>[
                Container(color: Colors.red,),
                Container(color: Colors.green),
                Container(color: Colors.blue),
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                if(i < 2){
                  i++;
                } else{
                  i = 0;
                }
              });
            },
            child: Text('Changer'),
          )
        ],
      ),
    );
  }
}
