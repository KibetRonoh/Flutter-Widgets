import 'package:flutter/material.dart';
import 'dart:math' as math;

class BasicTransform extends StatefulWidget {
  @override
  _BasicTransformState createState() => _BasicTransformState();
}

class _BasicTransformState extends State<BasicTransform> {
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Transform"),
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

          Flexible(
            child: ListView(
              children: <Widget>[
                SizedBox(height: 25.0,),
                Center(
                  child: Transform.rotate(
                     angle: sliderValue * math.pi / 180.0,
                    child: Container(
                      color: Colors.deepOrangeAccent,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(height: 55.0,),
                Center(
                  child: Transform.scale(
                    scale: sliderValue / MediaQuery.of(context).size.width,
                    child: Container(
                      color: Colors.green,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(height: 35.0,),
                Row(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(sliderValue, 0.0),
                      child: Container(
                        color: Colors.indigo,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
                Slider(
                  min: 0.0,
                    max: MediaQuery.of(context).size.width,
                    value: sliderValue,
                    onChanged: (newValue){
                      setState(() {
                        sliderValue = newValue;
                      });
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
