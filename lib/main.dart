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
    return Container(
      width: 200,//如果有給予寬高 將會以寬高位置給予比例調整
      child: AspectRatio(
        aspectRatio: 2.0 / 1.0,
        //可以配置寬高比 2:1,未設置寬高,將自動以螢幕寬高px做比對
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }

}
