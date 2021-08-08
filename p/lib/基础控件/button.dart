import 'package:flutter/material.dart';

//简单列表
class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //按钮
            RaisedButton(
              child: Text("漂浮按钮"),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("扁平按钮"),
              onPressed: () {},
            ),
            OutlineButton(
              child: Text("边框按钮"),
              onPressed: () {},
            ),
            IconButton(
              //纯图标按钮
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("圆角按钮"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
            ),
            RaisedButton.icon(
              icon: Icon(Icons.thumb_up),
              label: Text("图文按钮"),
              splashColor:Colors.red,//水波纹
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
