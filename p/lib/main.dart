import 'package:flutter/material.dart';
import 'package:p/路由/l.dart';
import 'package:p/基础控件/k.dart';
import 'package:p/列表/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("路由"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return routeClass();
                }));
              },
            ),
            ElevatedButton(
              child: Text("基础控件"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return controlClass();
                }));
              },
            ),
            ElevatedButton(
              child: Text("列表"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return listClass();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
