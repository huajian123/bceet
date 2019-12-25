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
              child: Text("业务范围"),
            ),
            Tab(
              child: Text("管理团队"),
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
          ManageTeamPage(),
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        "static/images/exper1.jpg",
                        height: ScreenUtil().setHeight(480.0),
                        width: ScreenUtil().setWidth(680.0),
                        fit: BoxFit.fill,
                      ),
                    )),
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
                      child: Text(
                        """
      关凤峻      ---原国土资源部地质环境司司长、中国地质灾害防治工程行业协会常务副会长华夏公司首席顾问
      俄罗斯自然资源科学院院士，中国地质大学、吉林大学兼职教授、博士生导师。曾任国土资源经济研究院研究室主任、副院长、院长，国土资源部储量司司长，国土资源部地质环境司司长。国务院政府特殊津贴获得者。""",
                        style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                      ),
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        "static/images/exper2.jpg",
                        height: ScreenUtil().setHeight(480.0),
                        width: ScreenUtil().setWidth(680.0),
                        fit: BoxFit.fill,
                      ),
                    )),
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
                      child: Text(
                        """
      刘仁芙      ---原国土资源部耕地保护司副巡视员美丽华夏公司顾问
      清华大学本科，北大光华经济学院在职硕士研究生，1986年就职于国家土地管理局，先后任规划司开发复垦处副处长、处长；1998年在国土资源部耕地保护司工作至2015年6月，先后任处长、副巡视员、副司长、巡视员；中国土地学会理事、中国土地学会土地整理复垦分会副主任委员。长期从事土地复垦整治管理工作，组织研究建立了中国土地复垦法规制度体系、标准化体系、监督管理体系等。""",
                        style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                      ),
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        "static/images/exper3.png",
                        height: ScreenUtil().setHeight(480.0),
                        width: ScreenUtil().setWidth(680.0),
                        fit: BoxFit.fill,
                      ),
                    )),
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
                      child: Text(
                        """
      武强      ---教授、博导、中国工程院院士，美丽华夏公司首席科学家、科技创新中心主任
       现任中国矿业大学（北京）水害防治与水资源研究所所长，兼任国家安全生产专家组成员、国家煤矿安全监察局“水害防治专家组”组长、中国地质学会理事、国际矿井水协会副主席、中国地质学会水文地质专业委员会副主任、中国矿联矿山环境保护与治理工作委员会常务理事、中国国土空间资源保护与利用创新联盟理事长，是首批国家新世纪百千万人才工程国家级人选，享受国务院政府特殊津贴。""",
                        style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                      ),
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        "static/images/exper4.png",
                        height: ScreenUtil().setHeight(480.0),
                        width: ScreenUtil().setWidth(680.0),
                        fit: BoxFit.fill,
                      ),
                    )),
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
                      child: Text(
                        """
      史京玺      ---中国绿色矿山推进会会长，美丽华夏公司绿色矿山首席顾问
      工商管理博士，高级环境工程师，先后在煤炭部173地质队、中煤地质报、中国地质矿产报、中国矿业报、中国矿业联合会任职。""",
                        style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

// 管理团队
class ManageTeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    "static/images/manager1.jpg",
                    height: ScreenUtil().setHeight(980.0),
                    width: ScreenUtil().setWidth(680.0),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          back: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width:  ScreenUtil().setWidth(680.0),
                    child: Text(
"""丁继新  ——总经理，博士，教授级高级工程师，硕士生导师。中国地质学会工程地质专业委员会第九届、第十届委员会委员、中国地质学会矿山水防治与利用专业委员会委员、财政部水工环评审专家、有色行业系统专家、中国地质灾害防治工程行业协会专家、北京市规划和国土资源管理委员会地质环境评审专家。
      从事地质灾害防治工程行业近20年，主要从事地质灾害和矿山环境治理规划、评价、工程勘查、设计、施工，风险分析，监测预警，矿山地质环境治理规划及恢复治理研究等相关工作，积极参加地质灾害和矿山环境治理应急处置。多年来，先后主持了数十项地质研究项目及上百项地质灾害和矿山环境规划、调查、评估、勘查、设计和施工项目。先后获得省部级科技进步二等奖、三等奖各1项。
      在《中国科学》、《岩石力学与工程学报》、《岩土力学》等SCI、EI及国家核心期刊上发表学术论文30余篇，出版专著1部，拥有专利1项。""",
                      style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                    ),
                  )),
            ),
          ),
        ),
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    "static/images/manager2.jpg",
                    height: ScreenUtil().setHeight(980.0),
                    width: ScreenUtil().setWidth(680.0),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          back: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width:  ScreenUtil().setWidth(680.0),
                    child: Text(
                      """ 刘衡秋  ——副总经理，地质工程专业博士，教授级高级工程师，硕士生导师，北京市规划和国土资源管理委员会地质环境专家，北京市地质勘查局水工环专家。
      一直致力于复杂地质岩土工程勘察、地质灾害评估、勘查、设计、施工以及矿山环境综合治理的关键技术研究与生产实践。参加国家高技术产业化项目、国家973项目、国家“十一五”科技支撑项目、中科院知识创新工程重要方向项目以及国土部财政部两权价款项目、中国地质调查局公益性调查项目近20项，主持或审核完成百余项岩土工程勘察、地质环境治理勘查设计和施工项目。
      目前在国内外核心期刊上发表学术论文近30篇（其中SCI收录1篇，EI收录5篇）,合作专著1部（排名第2），专利3项。获得过中国有色金属工业科学技术奖、北京市规划委员会工程勘察奖、北京市工程咨询协会优秀工程咨询成果奖和优质工程奖（施工类），2011年个人获中国地质学会第十三届青年地质科技奖——银锤奖。""",
                      style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                    ),
                  )),
            ),
          ),
        ),
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    "static/images/manager3.jpg",
                    height: ScreenUtil().setHeight(980.0),
                    width: ScreenUtil().setWidth(680.0),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          back: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width:  ScreenUtil().setWidth(680.0),
                    child: Text(
                      """白晓波  ——英国Napier 大学商学院工商管理硕士，武汉理工大学材料工程专业，曾获得美国杜邦公司安全管理体系认证和澳大利亚博斯格钢铁全球高绩效管理人认证。
      25年一直专注于公司市场策略和营销管理。曾任美国贝伦建筑系统中国区副总经理，澳大利亚博斯格钢铁来实北方区总经理，美国联合纤维大中华区总经理等职位。曾协同美国美安盛私募基金完成国内上市公司鲁阳节能的并购重组。""",
                      style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                    ),
                  )),
            ),
          ),
        ),
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    "static/images/manager4.jpg",
                    height: ScreenUtil().setHeight(980.0),
                    width: ScreenUtil().setWidth(680.0),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          back: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width:  ScreenUtil().setWidth(680.0),
                    child: Text(
                      """潘睿  ——副总经理，纽约理工大学MBA，哈尔滨工业大学经济学学士。2012年~2016年就职于中央汇金投资有限责任公司，担任证券机构管理部经理职位，主要负责中国建投和齐鲁证券的股权管理工作，并参与中金公司H股IPO事宜；2016年~2018年就职于汉富（北京）资本管理有限公司，担任资产管理部副总经理职位，主持部门日常管理工作，负责上市公司再融资、并购及产业基金、PPP项目投资等业务。
      多年金融证券从业经验，熟悉国内外会计准则和证券市场制度，在投资、资金管理、风险控制等方面拥有坚实的理论基础和丰富的实践经验。曾参与研究并撰写《证券公司直投业务研究》、《监管新政下券商资产管理业务的机遇和挑战》以及《资本市场未来发展定位与证券行业发展研究》等课题，主持完成多家上市公司的再融资、并购项目，与多家央企、上市公司、金融机构建立长期战略合作关系。""",
                      style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                    ),
                  )),
            ),
          ),
        ),
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    "static/images/manager5.jpg",
                    height: ScreenUtil().setHeight(980.0),
                    width: ScreenUtil().setWidth(680.0),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          back: Card(
            elevation: 5.0,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width:  ScreenUtil().setWidth(680.0),
                    child: Text(
                      """王迷军  ——副总经理，博士，高级工程师，国际矿山测量协会（ISM）中国委员会委员，中国黄金协会信息化与数字矿山专家，国家科技奖测绘与信息技术专家。
      从事测绘与地理信息工程、智慧矿山建设等研发、技术应用与经营管理工作20年，具有丰富全面的生产、科研与管理经验，熟悉软件产品研发、科研与项目管理，利用物联网、云计算、大数据、人工智能等新技术实现生态与自然环境智能监测预警。
      作为项目负责人先后完成了国家、省和地方30多项专项基金研发项目，EI、SCI及核心期刊发表论文30多篇，获得省部级科技奖和荣誉20多项。""",
                      style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
