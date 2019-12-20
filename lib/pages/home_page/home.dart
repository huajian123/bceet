import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Center(
        child: Text('首页'),
      ),
      // floatingActionButton:
    ));
  }
}

/*class MyDrawer extends StatelessWidget {
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
                      "张 董 您 好",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(35.0)),
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
                  Padding(
                    padding: EdgeInsets.all(20.0),
                  ),
                  Container(
                      width: ScreenUtil().setWidth(1.0),
                      height: ScreenUtil().setHeight(90.0),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            "退 出",
                            style: TextStyle(
                                fontSize: _menuFontSize, color: Colors.white),
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
}*/
