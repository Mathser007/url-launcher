import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text("View"),
    ),
    body: new Center(
      child: ElevatedButton(
          onPressed: () => launchUrl("tel:+919778153657"),
          child: new Text("Call me")),
    ),
  );
}

void main() {
  runApp(
    new MyApp(),
  );
}
void launchUrl(String url) async {
  if (await canLaunch(url)) {
    launch(url);
  } else {
    throw "Could not launch $url";
  }
}