import 'package:flutter/material.dart';

class BasicFloatingActionButton extends StatefulWidget {
  @override
  _BasicFloatingActionButtonState createState() => _BasicFloatingActionButtonState();
}

class _BasicFloatingActionButtonState extends State<BasicFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Floating Action Button & tooltip"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Tooltip(
            message: "I love Flutter",
            showDuration: const Duration(milliseconds: 3000),
            child: FlutterLogo(size: 200,),),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Container(height: 80,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () { print('Clicked'); },
      ),
    );
  }
}
