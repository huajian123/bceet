import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Container(
      child: Scaffold(
          body: Container(
              color: Theme.of(context).primaryColor,
              child: Center(
                // 防止overFlow的现象
                child: SafeArea(
                  ///同时弹出键盘不遮挡
                  child: SingleChildScrollView(
                    child: Center(
                      child: Container(
                        width: ScreenUtil().setWidth(600.0),
                        height: ScreenUtil().setHeight(900.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                          // borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "请输入用户名", icon: Icon(Icons.person)),
                            ),
                            Padding(padding: EdgeInsets.all(10.0),),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "请输入密码",icon: Icon(Icons.person)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ))),
    );
  }
}
