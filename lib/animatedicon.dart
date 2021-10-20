import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class BasicAnimatedIcon extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BasicAnimatedIcon>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Animted Icon"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              _launchurl('https://github.com/nick-ko/flutter_widget_app/blob/master/lib/animatedicon.dart');
            },
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              /*IconButton(
                iconSize: 100,
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: () => _handleOnPressed(),
              ),*/
              IconButton(
                iconSize: 200,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: _animationController,
                ),
                onPressed: () => _handleOnPressed(),
              ),
            ],
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

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

}