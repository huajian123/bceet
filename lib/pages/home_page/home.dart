import 'package:bceet/provide/tap_to_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TapToTopModelProvider tapToTopModelProvider = Provider.of<TapToTopModelProvider>(context);
    tapToTopModelProvider.init();
    return Container(
        child: Scaffold(
            body: CustomScrollView(
      //“预加载”的区域,0.0 为关闭预加载
      cacheExtent: 1.0,
      physics: AlwaysScrollableScrollPhysics(), //滑动阻尼效果
      slivers: <Widget>[
        SliverAppBar(
          title: Text("新闻中心"),
          expandedHeight: ScreenUtil().setHeight(350.0),
          floating: false,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            background: SwiperDiy(),
          ),
          forceElevated: true,
          elevation: 5.0,
          centerTitle: true,

          // elevation:14.0
        ),
        SliverList(
            delegate: SliverChildListDelegate([
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
        ]))
      ],
    )));

//            Container(
//      child: Column(
//        children: <Widget>[
//          SwiperDiy(),
//          NewsList(),
//        ],
//      ),
//    )));
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
  }
}

class NewsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 5.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '继山东编导艺考联考被曝疑似出现泄题和作弊的情况。江西编导艺考联考也被曝疑似出现泄题和作弊的情况。',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff111111),
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '2019-12-134',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black38),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
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
        ),
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
