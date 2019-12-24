import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        ClipPath(
            // 绘制塞贝二曲线
            clipper: BottomClipper(),
            // 对最小宽度进行限制，限制为宽度为100%
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: double.infinity),
              child: Container(
                  height: ScreenUtil().setHeight(500.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            "static/images/user_avatar.png",
                            height: ScreenUtil().setHeight(180.0),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            "点击登录",
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(40.0),
                                color: Colors.white),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )),
            )),
        Container(
          child: Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("收藏"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("收藏"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("收藏"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("收藏"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("收藏"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("收藏"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("收藏"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("收藏"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

// 贝塞尔曲线绘制
class BottomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0); // 第一个点
    path.lineTo(0, size.height - 50); //第二个点

    var p1 = Offset(size.width / 2, size.height);
    var p2 = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
