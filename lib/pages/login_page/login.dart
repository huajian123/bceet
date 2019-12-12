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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "美丽华夏欢迎您！",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                    fontSize: ScreenUtil().setSp(40.0),
                      height: ScreenUtil().setHeight(5.0)
                    ),
                    
                  ),
                ),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "请输入美丽华夏",
                      prefix: Icon(Icons.person)),
                ),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "请输入美丽华夏",
                      prefix: Icon(Icons.person)),
                )
              ],
            ),
          ),
        ))),
      ),
    );
  }
}
