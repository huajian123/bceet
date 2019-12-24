import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganizationalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:

        Card(
            elevation: 5.0,
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Row(
                mainAxisSize:MainAxisSize.max ,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '江西编导艺考联考也被曝疑似出现泄题和作弊的情况。',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xff111111),
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '2019-12-134',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black38),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: ScreenUtil().setHeight(170.0),
                    width: ScreenUtil().setWidth(200.0),
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                            image: AssetImage("static/images/news1.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
