import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  grid(String i,Color colr) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        color: colr,
        child: Text(i),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "gridview",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gridview"),
        ),
        body: Padding(
          padding: EdgeInsets.all(2.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              grid("1",Colors.red),
              grid("2",Colors.green),
              grid("3",Colors.blue),
              grid("4",Colors.red),
              grid("5",Colors.green),
              grid("6",Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
