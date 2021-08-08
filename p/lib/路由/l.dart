import 'package:flutter/material.dart';

//新路由
class routeClass extends StatelessWidget {

  void _incrementCounter(){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route路径"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
       floatingActionButton: FloatingActionButton(
        
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
       )
    );
  }
}