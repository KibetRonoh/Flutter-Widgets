import 'package:flutter/material.dart';
import 'animatedicon.dart';
import 'richtext.dart';
import 'limitedbox.dart';
import 'placeholder.dart';
import 'animatedPadding.dart';
import 'mediaQuery.dart';
import 'animatedOpacity.dart';
import 'indexedStack.dart';
import 'ReorderableListView.dart';
import 'stack.dart';
import 'draggable.dart';
import 'aspectRatio.dart';
import 'animatedList.dart';
import 'constrainedBox.dart';
import 'flexible.dart';
import 'animatedSwitcher.dart';
import 'semantics.dart';
import 'spacer.dart';
import 'floatingActionButton.dart';
import 'pageview.dart';
import 'pageViewDots.dart';
import 'sliverAppBar.dart';
import 'home2.dart';

class HomePage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<HomePage> {

  void toNewPage(Widget widget){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return widget;
    }));
  }

  List<Widget> page=[
    BasicAnimatedIcon(),
    BasicAnimatedList(),
    BasicAnimatedOpacity(),
    BasicAnimatedPadding(),
    BasicAnimatedIcon(),
    BasicAnimatedSwitcher(),
    BasicAspectRatio(),
    BasicConstrainedBox(),
    BasicDraggable(),
    BasicFlexible(),
    BasicIndexedStack(),
    BasicAnimatedIcon(),
    BasicLimitedBox(),
    BasicMediaQuery(),
    BasicPlaceholder(),
    BasicReorderableListView(),
    BasicRichText(),
    BasicSemantics(),
    BasicSpacer(),
    BasicStack(),
    BasicFloatingActionButton(),
    BasicPageViewDots(),
    BasicSliverAppBar(),
  ];

  List<String> title=[
    "AnimatedIcon",
    "AnimatedList",
    "AnimatedOpacity",
    "AnimatedPadding",
    "AnimatedPositioned",
    "AnimatedSwitcher",
    "AspectRadio",
    "ConstrainedBox",
    "Draggable",
    "Flexible",
    "IndexedStack",
    "InheritedWidget",
    "LimitedBox",
    "MediaQuery",
    "Placeholder",
    "ReorderableListView",
    "RichText",
    "Semantics",
    "Spacer",
    "Stack",
    "FloatingActionButton",
    "PageView",
    "SliverAppBar",

  ];
  List docs;
  TextEditingController editingController = TextEditingController();

  List<String> duplicateItems = ["invisible","frap", "jusqu'au bout", "ma grande famille","teenager"];
  var items = List<String>();

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if(item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }

  }

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(title, page) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.code, color: Colors.white),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                // tag: 'hero',
                child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                    value: 0.0,
                    valueColor: AlwaysStoppedAnimation(Colors.green)),
              )),
          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("",
                    style: TextStyle(color: Colors.white))),
          )
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
        toNewPage(page);
      },
    );

    Card makeCard(title,page) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(title, page),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child:
      /*Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              filterSearchResults(value);
            },
            controller: editingController,
            decoration: InputDecoration(
                labelText: "Chercher",
                hintText: "Chercher un film ou une serie",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          ),
        ),*/
      ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: title.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(title[index], page[index]);
        },
      ),
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.code, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeTwoPage()),
                );
              },
            )
          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      centerTitle: true,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text("My Flutter Doc App"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}

