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
                        width: ScreenUtil().setWidth(300.0),
                        height: ScreenUtil().setHeight(300.0),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Text('123')
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
