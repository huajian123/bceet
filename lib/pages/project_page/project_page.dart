import 'package:bceet/pages/home_page/home.dart';
import 'package:flip_card/flip_card.dart';
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
              child: Text("公司项目"),
            ),
            Tab(
              child: Text("业务范围"),
            ),
            Tab(
              child: Text("专家团队"),
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
          ExpertTeamPage(),
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

// 专家团队
class ExpertTeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          FlipCard(
            direction: FlipDirection.HORIZONTAL, // 翻转方向 基于Y轴翻转
            front: Card(
              elevation: 5.0,
              child: Center(
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius:BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        "static/images/exper1.jpg",
                        height: ScreenUtil().setHeight(480.0),
                        width: ScreenUtil().setWidth(680.0),
                        fit: BoxFit.fill,
                      ),
                    )
                ),
              ),
            ),
            back: Card(
              elevation: 5.0,
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(480.0),
                    child: Center(
                      child:  Text(
                        """
      关凤峻      ---原国土资源部地质环境司司长、中国地质灾害防治工程行业协会常务副会长华夏公司首席顾问
      俄罗斯自然资源科学院院士，中国地质大学、吉林大学兼职教授、博士生导师。曾任国土资源经济研究院研究室主任、副院长、院长，国土资源部储量司司长，国土资源部地质环境司司长。国务院政府特殊津贴获得者。""",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(30.0)
                        ),),
                    ),
                  )),
            ),
          ),
          FlipCard(
            direction: FlipDirection.HORIZONTAL, // 翻转方向 基于Y轴翻转
            front: Card(
              elevation: 5.0,
              child: Center(
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius:BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        "static/images/exper2.jpg",
                        height: ScreenUtil().setHeight(480.0),
                        width: ScreenUtil().setWidth(680.0),
                        fit: BoxFit.fill,
                      ),
                    )
                ),
              ),
            ),
            back: Card(
              elevation: 5.0,
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(480.0),
                    child: Center(
                      child:  Text(
                        """
      刘仁芙      ---原国土资源部耕地保护司副巡视员美丽华夏公司顾问
      清华大学本科，北大光华经济学院在职硕士研究生，1986年就职于国家土地管理局，先后任规划司开发复垦处副处长、处长；1998年在国土资源部耕地保护司工作至2015年6月，先后任处长、副巡视员、副司长、巡视员；中国土地学会理事、中国土地学会土地整理复垦分会副主任委员。长期从事土地复垦整治管理工作，组织研究建立了中国土地复垦法规制度体系、标准化体系、监督管理体系等。""",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(30.0)
                        ),),
                    ),
                  )),
            ),
          ),
          FlipCard(
            direction: FlipDirection.HORIZONTAL, // 翻转方向 基于Y轴翻转
            front: Card(
              elevation: 5.0,
              child: Center(
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius:BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        "static/images/exper3.png",
                        height: ScreenUtil().setHeight(480.0),
                        width: ScreenUtil().setWidth(680.0),
                        fit: BoxFit.fill,
                      ),
                    )
                ),
              ),
            ),
            back: Card(
              elevation: 5.0,
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(480.0),
                    child: Center(
                      child:  Text(
                        """
      武强      ---教授、博导、中国工程院院士，美丽华夏公司首席科学家、科技创新中心主任
       现任中国矿业大学（北京）水害防治与水资源研究所所长，兼任国家安全生产专家组成员、国家煤矿安全监察局“水害防治专家组”组长、中国地质学会理事、国际矿井水协会副主席、中国地质学会水文地质专业委员会副主任、中国矿联矿山环境保护与治理工作委员会常务理事、中国国土空间资源保护与利用创新联盟理事长，是首批国家新世纪百千万人才工程国家级人选，享受国务院政府特殊津贴。""",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(30.0)
                        ),),
                    ),
                  )),
            ),
          ),
          FlipCard(
            direction: FlipDirection.HORIZONTAL, // 翻转方向 基于Y轴翻转
            front: Card(
              elevation: 5.0,
              child: Center(
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius:BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        "static/images/exper4.png",
                        height: ScreenUtil().setHeight(480.0),
                        width: ScreenUtil().setWidth(680.0),
                        fit: BoxFit.fill,
                      ),
                    )
                ),
              ),
            ),
            back: Card(
              elevation: 5.0,
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(480.0),
                    child: Center(
                      child:  Text(
                        """
      史京玺      ---中国绿色矿山推进会会长，美丽华夏公司绿色矿山首席顾问
      工商管理博士，高级环境工程师，先后在煤炭部173地质队、中煤地质报、中国地质矿产报、中国矿业报、中国矿业联合会任职。""",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(30.0)
                        ),),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
