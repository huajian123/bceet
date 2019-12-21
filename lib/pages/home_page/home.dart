import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            body: Container(
              child: Column(
                children: <Widget>[
                  SwiperDiy(),
                  NewsList(),
                ],
              ),
            )
        ));
  }
}

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(

      ),
    );
  }
}



// 轮播组件
class SwiperDiy extends StatelessWidget {
  final List swiperList;

  SwiperDiy({this.swiperList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(400.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index){
          print(index);
          return Image.asset("static/images/swiper${index}.png",fit: BoxFit.fill,);
        },
        pagination: SwiperPagination(),
        itemCount: 5,
        loop: true,
      ),
    );
  }
}
