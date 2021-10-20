import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:url_launcher/url_launcher.dart';

class BasicAnimatedList extends StatefulWidget {
  @override
  AnimatedListExampleState createState() {
    return new AnimatedListExampleState();
  }
}

class AnimatedListExampleState extends State<BasicAnimatedList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  List<String> _data = [
    WordPair.random().toString(),
    WordPair.random().toString(),
    WordPair.random().toString(),
    WordPair.random().toString(),
    WordPair.random().toString(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("AnimatedList"),
          elevation: 0.1,
          centerTitle: true,
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                _launchurl('https://github.com/nick-ko/flutter_widget_app/blob/master/lib/animatedList.dart');
              },
            )
          ],
        ),
      persistentFooterButtons: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            _addAnItem();
          },
        ),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            _removeLastItem();
          },
        ),
        IconButton(
          icon: Icon(Icons.delete_forever),
          onPressed: () {
            _removeAllItems();
          },
        ),
        SizedBox(width: 70)
      ],
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _data.length,
        itemBuilder: (context, index, animation) => _buildItem(context, _data[index], animation),
      ),
    );
  }

  Widget _buildItem(BuildContext context, String item, Animation<double> animation) {
    TextStyle textStyle = new TextStyle(fontSize: 20);

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        sizeFactor: animation,
        axis: Axis.vertical,
        child: SizedBox(
          height: 50.0,
          child: Card(
            child: Center(
              child: Text(item, style: textStyle),
            ),
          ),
        ),
      ),
    );
  }

  void _launchurl(String url) async{

    if(await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _addAnItem() {
    _data.insert(0, WordPair.random().toString());
    _listKey.currentState.insertItem(0);
  }

  void _removeLastItem() {
    String itemToRemove = _data[0];

    _listKey.currentState.removeItem(
      0,
          (BuildContext context, Animation<double> animation) => _buildItem(context, itemToRemove, animation),
      duration: const Duration(milliseconds: 250),
    );

    _data.removeAt(0);
  }

  void _removeAllItems() {
    final int itemCount = _data.length;

    for (var i = 0; i < itemCount; i++) {
      String itemToRemove = _data[0];
      _listKey.currentState.removeItem(0,
            (BuildContext context, Animation<double> animation) => _buildItem(context, itemToRemove, animation),
        duration: const Duration(milliseconds: 250),
      );

      _data.removeAt(0);
    }
  }
}
