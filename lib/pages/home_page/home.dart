import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("美丽华夏"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print("分享");
            },
          )
        ],
      ),
      drawer: Container(
        child: MyDrawer(),
      ),
      // floatingActionButton:
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home)),
            SizedBox(), //中间位置空出
            IconButton(icon: Icon(Icons.business)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
    ));
  }
}

class MyDrawer extends StatelessWidget {
  final double _menuFontSize = ScreenUtil().setSp(30.0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 38.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          "static/images/user.jpg",
                          width: 80.0,
                        ),
                      ),
                    ),
                    Text(
                      "董事长",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "问题反馈",
                      style: TextStyle(fontSize: _menuFontSize),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "阅读历史",
                      style: TextStyle(fontSize: _menuFontSize),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "个人信息",
                      style: TextStyle(fontSize: _menuFontSize),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "切换主题",
                      style: TextStyle(fontSize: _menuFontSize),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "语言切换",
                      style: TextStyle(fontSize: _menuFontSize),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "检测更新",
                      style: TextStyle(fontSize: _menuFontSize),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "关于",
                      style: TextStyle(fontSize: _menuFontSize),
                    ),
                  ),
                  Container(
                      width: ScreenUtil().setWidth(1.0),
                      height: ScreenUtil().setHeight(90.0),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0,right: 15.0),
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            "退 出",
                            style: TextStyle(fontSize: _menuFontSize,color: Colors.white),
                          ),
                          elevation: 2.0,
                          onPressed: () {
                            print("退出");
                          },
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
,*/
