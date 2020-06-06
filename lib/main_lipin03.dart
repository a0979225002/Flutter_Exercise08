import 'package:flutter/material.dart';
import 'res/listData.dart';
void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  ///循環for 讀取json

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
//        backgroundColor: Colors.brown,//更改整體背景顏色
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text(
            "AspectRatio＆Card調整寬高比",
            style: TextStyle(
            ),
          ),
        ),
        body:
        LayoutDemo(),
      ),
    );
  }
}
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTileTheme(//使用主題
//      textColor: Colors.blue,//可以更改整體list內的文字顏色
        child: ListView(
          children: OpenData.map((value){//抓取已經放入的json資料,循環拉出
            return Card(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 20/9,
                      child: Image.network(
                        value["PicURL"],
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(value["PicURL"]),
                      ),
                      title: Text(
                        value["Name"],
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20
                        ),
                      ),
                      subtitle: Text(
                        value["HostWords"],
                        maxLines: 2,//設置可顯示兩行
                        overflow:
                        TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            }
          ).toList(),
        ),
    );
  }

}
