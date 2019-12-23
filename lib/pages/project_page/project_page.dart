import 'package:bceet/pages/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>
    with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          tabs: <Widget>[
            Tab(
              child: Text("页面1"),
            ),
            Tab(
              child: Text("页面2"),
            ),
            Tab(
              child: Text("页面3"),
            ),
          ],
          controller: _controller,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
            ],
          ),
          ListView(
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
            ],
          ),
          ListView(
            children: <Widget>[
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
            ],
          ),
        ],
        controller: _controller,
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
