import 'package:flutter/material.dart';

class BasicAnimatedSwitcher extends StatefulWidget {
  @override
  _BasicAnimatedSwitcherState createState() => _BasicAnimatedSwitcherState();
}

class _BasicAnimatedSwitcherState extends State<BasicAnimatedSwitcher> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0.1,
      centerTitle: true,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text("AnimatedSwitcher"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {
          },
        )
      ],
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: Text(
              '$_count',
              // This key causes the AnimatedSwitcher to interpret this as a "new"
              // child each time the count changes, so that it will begin its animation
              // when the count changes.
              key: ValueKey<int>(_count),
              style: Theme.of(context).textTheme.display1,
            ),
          ),
          RaisedButton(
            child: const Text('Increment'),
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
