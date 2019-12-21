import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:bceet/provide/current_page_index.dart';
import 'home_page/home.dart';
import 'organizational_page/organizational_page.dart';
import 'project_page/project_page.dart';
import 'user_page/user_page.dart';

List<Widget> pages = <Widget>[
  HomePage(),
  ProjectPage(),
  OrganizationalPage(),
  UserPage()
];

class IndexPage extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    CurrentPageIndexProvider provider = Provider.of<CurrentPageIndexProvider>(context);
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        body: pages[provider.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            provider.currentIndex = index;
          },
          currentIndex: provider.currentIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.format_list_bulleted,
                ),
                title: Text("项目")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.call_split,
                ),
                title: Text("体系")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.insert_emoticon,
                ),
                title: Text("我的")),
          ],
        ));
  }
}
