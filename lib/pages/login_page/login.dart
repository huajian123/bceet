import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: SafeArea(
            child: SingleChildScrollView(
                child: SizedBox(
          width: ScreenUtil().setWidth(600.0),
          height: ScreenUtil().setHeight(900.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              //  mainAxisSize: MainAxisSize.max,
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "美丽华夏欢迎您！",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: ScreenUtil().setSp(40.0),
                        height: ScreenUtil().setHeight(5.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "请输入美丽华夏",
                      prefixIcon: Icon(Icons.person)),
                ),
                TextField(
                  decoration: new InputDecoration(
                    hintText: '请输入密码',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: new IconButton(
                      icon: new Icon(Icons.clear, color: Colors.black45),
                      onPressed: () {},
                    ),
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                ),
                Container(
                  width: ScreenUtil().setWidth(490.0),
                  child: Card(
                    color: Colors.teal,
                    elevation: 15.0,
                    child: FlatButton(
                        onPressed: null,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "登录",
                            style:
                                TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(36.0)),
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ))),
      ),
    );
  }
}
