import 'package:flutter/material.dart';
import 'res/listData.dart';
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
        Card(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio:20/9,//可以控制子元素的寬高比
                child:Image.network(OpenData[0]["PicURL"],fit: BoxFit.cover,),
              ),
              ListTile(
                leading: CircleAvatar(//專門處理頭像圖片,不用自定義長寬度
                  backgroundImage: NetworkImage(OpenData[0]["PicURL"]),
                ),
                title: Text(OpenData[0]["Name"]),
                subtitle: Text(OpenData[0]["Address"]),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio:20/9,//可以控制子元素的寬高比
                child:Image.network(OpenData[1]["PicURL"],fit: BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    OpenData[1]["PicURL"],fit: BoxFit.cover,height: 50,width: 50,),
                ),
                title: Text(OpenData[1]["Name"]),
                subtitle: Text(OpenData[1]["Address"]),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio:20/9,//可以控制子元素的寬高比
                child:Image.network(OpenData[2]["PicURL"],fit: BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    OpenData[2]["PicURL"],fit: BoxFit.cover,height: 50,width: 50,),
                ),
                title: Text(OpenData[2]["Name"]),
                subtitle: Text(OpenData[2]["Address"]),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio:20/9,//可以控制子元素的寬高比
                child:Image.network(OpenData[3]["PicURL"],fit: BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    OpenData[3]["PicURL"],fit: BoxFit.cover,height: 50,width: 50,),
                ),
                title: Text(OpenData[3]["Name"]),
                subtitle: Text(OpenData[3]["Address"]),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio:20/9,//可以控制子元素的寬高比
                child:Image.network(OpenData[4]["PicURL"],fit: BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    OpenData[4]["PicURL"],fit: BoxFit.cover,height: 50,width: 50,),
                ),
                title: Text(OpenData[4]["Name"]),
                subtitle: Text(OpenData[4]["Address"]),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio:20/9,//可以控制子元素的寬高比
                child:Image.network(OpenData[5]["PicURL"],fit: BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    OpenData[5]["PicURL"],fit: BoxFit.cover,height: 50,width: 50,),
                ),
                title: Text(OpenData[5]["Name"]),
                subtitle: Text(OpenData[5]["Address"]),
              ),
            ],
          ),
        ),

      ],
    );
  }

}
