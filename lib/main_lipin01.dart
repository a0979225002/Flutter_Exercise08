import 'package:flutter/material.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AspectRatio＆Card調整寬高比"),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ///注意listview 裡面不能再包一個listview
        Card(
          color: Colors.yellow,
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                    "姓名:XiaoLipin",
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),
                subtitle: Text(
                    "Flutter 工程師",
                ),
              ),
              ListTile(
                title: Text(
                  "電話:0979225XXX",
                ),
              ),
                ListTile(
                title: Text(
                  " 地址:台灣省台中市外埔區甲后路",
                  ),
                ),
            ],
          ),
        ),
        Card(
          color: Colors.deepOrange,
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "姓名:XiaoLipin02",
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
                subtitle: Text(
                  "Flutter 工程師",
                ),
              ),
              ListTile(
                title: Text(
                  "電話:0979225XXX",
                ),
              ),
              ListTile(
                title: Text(
                  " 地址:台灣省台中市外埔區甲后路",
                ),
              ),
            ],
          ),
        ),Card(
          color: Colors.cyanAccent,
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "姓名:XiaoLipin03",
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
                subtitle: Text(
                  "Flutter 工程師",
                ),
              ),
              ListTile(
                title: Text(
                  "電話:0979225XXX",
                ),
              ),
              ListTile(
                title: Text(
                  " 地址:台灣省台中市外埔區甲后路",
                ),
              ),
            ],
          ),
        ),
        Card(
          color: Colors.blue,
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "姓名:XiaoLipin03",
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
                subtitle: Text(
                  "Flutter 工程師",
                ),
              ),
              ListTile(
                title: Text(
                  "電話:0979225XXX",
                ),
              ),
              ListTile(
                title: Text(
                  " 地址:台灣省台中市外埔區甲后路",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}
