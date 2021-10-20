import 'package:flutter/material.dart';

class BasicTable extends StatefulWidget {
  @override
  _TableWidgetState createState() => _TableWidgetState();
}

class _TableWidgetState extends State<BasicTable> {
  bool _isBorderEnabled = false;
  var _actionIcon = Icons.border_all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Table & FittedBox"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 12),
        child: Table(
          border: _isBorderEnabled ? TableBorder.all() : null,
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: <TableRow>[
            ///First table row with 3 children
            TableRow(children: <Widget>[
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.red,
                  width: 48.0,
                  height: 100.0,
                  child: Center(
                    child: Text(
                      "Row 1 \n Element 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          ),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Row 1 \n Element 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                      ),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.blue,
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Row 1 \n Element 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          ),
                    ),
                  ),
                ),
              ),
            ]),
            ///Second table row with 3 children
            TableRow(children: <Widget>[
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.lightBlue,
                  width: 50.0,
                  height: 48.0,
                  child: Center(
                    child: Text(
                      "Row 2 \n Element 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                           ),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.green,
                  width: 48.0,
                  height: 48.0,
                  child: Center(
                    child: Text(
                      "Row 2 \n Element 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          ),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.blue,
                  width: 50.0,
                  height: 100.0,
                  child: Center(
                    child: Text(
                      "Row 2 \n Element 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,
                          ),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}