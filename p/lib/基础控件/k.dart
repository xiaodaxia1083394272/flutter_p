import 'package:flutter/material.dart';
import 'package:p/基础控件/button.dart';
import 'package:p/基础控件/label.dart';

class controlClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text("按钮"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return button();
              }));
            },
          ),
          ElevatedButton(
            child: Text("label"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return label();
              }));
            },
          ),
        ],
      ),
    );
  }
}
