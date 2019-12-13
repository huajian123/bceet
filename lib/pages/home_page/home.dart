import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("美丽华夏"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print("分享");
            },
          )
        ],
      ),
      drawer: Container(
        child: MyDrawer(),
      ),
      // floatingActionButton:
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home)),
            SizedBox(), //中间位置空出
            IconButton(icon: Icon(Icons.business)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
    ));
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "static/images/user.jpg",
                        width: 80.0,
                      ),
                    ),
                  ),
                  Text(
                    "董事长",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ),


            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("添加"),
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text("退出"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
