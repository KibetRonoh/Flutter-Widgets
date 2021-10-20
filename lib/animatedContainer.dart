import 'package:flutter/material.dart';

class BasicAnimatedContainer extends StatefulWidget {
  @override
  _BasicAnimatedContainerState createState() => _BasicAnimatedContainerState();
}

class _BasicAnimatedContainerState extends State<BasicAnimatedContainer> {
  var _color = Colors.green;
  var _height = 100.0;
  var _width = 100.0;
  var _opacity = 0.0;

  animateContainer(){
    _color= _color==Colors.green ? Colors.red : Colors.green;
    _height= _height == 100 ? 200 : 100;
    _width= _width == 100 ? 200 : 100;
  }

  animateOpacity(){
    setState(() {
      _opacity= _opacity == 0.0 ? 1.0 : 0.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          centerTitle: true,
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          title: Text("AnimatedContainer & Opacity"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
              },
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.bounceIn,
                color: _color,
                height: _height,
                width: _width,
              ),
              OutlineButton(
                  child: Text("Animate Container"),
                  onPressed: (){
                    setState(() {
                      animateContainer();
                    });
                  }),
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: FlutterLogo(
                  size: 150.0,
                ),
              ),
              OutlineButton(
                  child: Text("Opacity"),
                  onPressed: (){
                    setState(() {
                      animateOpacity();
                    });
                  })

            ],
          ),
        ),
    );
  }
}
