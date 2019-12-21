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
    )));
  }
}

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
        ],
      ),
    );

//    return  Column(
//      children: <Widget>[
//        NewsItem(),
//        NewsItem(),
//        NewsItem(),
//      ],
//    );
  }
}

class NewsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '继山东编导艺考联考被曝疑似出现泄题和作弊的情况。江西编导艺考联考也被曝疑似出现泄题和作弊的情况。',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff111111),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 85.0,
              width: 115.0,
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
        Container(
          color: Color(0xffeaeaea),
          constraints: BoxConstraints.expand(height: 4.0),
        )
      ],
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
        autoplay: false,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            "static/images/swiper${index}.png",
            fit: BoxFit.fill,
          );
        },
        pagination: SwiperPagination(),
        itemCount: 5,
        loop: true,
      ),
    );
  }
}
