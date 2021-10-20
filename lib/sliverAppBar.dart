import 'package:flutter/material.dart';

class BasicSliverAppBar extends StatefulWidget {
  @override
  _BasicSliverAppBarState createState() => _BasicSliverAppBarState();
}

ScrollController _scrollController;

class _BasicSliverAppBarState extends State<BasicSliverAppBar> {
  @override
  void initState(){
   _scrollController= ScrollController();
   _scrollController.addListener(_scrollListener);
   super.initState();
  }

  Color clr = Color.fromRGBO(58, 66, 86, 1.0);
  _scrollListener() {

    if (_scrollController.offset > _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        clr = Color.fromRGBO(58, 66, 86, 1.0);
      });
    }

    if (_scrollController.offset <= _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        clr = Color.fromRGBO(58, 66, 86, 1.0);
      });
    }

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:  new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:
        new Container(
          child:
          CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: 280.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("",
                      style: const TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      )),
                  background: FlutterLogo(
                    size: 20.0,
                    colors: Colors.blue,
                  ),
                ),
                backgroundColor: clr,
              ),
              SliverFixedExtentList(
                itemExtent: 70.0,
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.lightBlue[100 * (index % 9)],
                      child: Text('list item $index'),
                    );
                  },
                  childCount: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
