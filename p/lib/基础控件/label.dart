import 'package:flutter/material.dart';

//简单列表
class label extends StatelessWidget {
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
            //一般文本
            Text(
              "Hello world! I'm Jack. " * 4,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blue,
                  background: new Paint()..color = Colors.yellow),
            ),
            //2,富文本
            Text.rich(TextSpan(children: [
              
              TextSpan(text: "富文本: "),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.blue),
              
              ),
            ])),
            //3，默认文本和继承
            DefaultTextStyle(
              //1.设置文本默认样式
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("样式继承1"),
                  Text(
                    "不继承",
                    style: TextStyle(
                        inherit: false, //2.不继承默认样式
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            //4,盒子容器里面的label
            Container(
              height: 90.0,
              width: 150,
              color: Colors.red,
              child: Text(
                "盒子容器里面的LB",
                textAlign: TextAlign.center,
                // TextDirection:TextAlign.center
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blue,
                    background: new Paint()..color = Colors.yellow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
