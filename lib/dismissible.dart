import 'package:flutter/material.dart';

class BasicDismissible extends StatefulWidget {
  @override
  _BasicDismissibleState createState() => _BasicDismissibleState();
}

class _BasicDismissibleState extends State<BasicDismissible> {

  final items = new List<String>.generate(10, (i) => "Widget $i");
  @override
  Widget build(BuildContext context) {
    var listView = new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items[index];
        return new Dismissible(
          direction: DismissDirection.endToStart,
          key: new Key(item),
          onDismissed: (direction) {
            items.removeAt(index);
          },
          background: new Container(
              padding: EdgeInsets.only(right: 20.0),
              color: Colors.red,
              child: new Align(
                alignment: Alignment.centerRight,
                child: new Text('Supprimer',
                    textAlign: TextAlign.right,
                    style: new TextStyle(color: Colors.white)),
              )),
          child: new ListTile(
            title:Card(
              elevation: 5.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: Text('$item'),
              ),
            ),
          ),
        );
      },
    );
    var scafford = new Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Dismissible"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
            },
          )
        ],
      ),
      body: listView,
    );
    return scafford;
  }
}
