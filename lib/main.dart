import 'package:bceet/pages/login_page/login.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'routers/routes.dart';
import 'routers/application.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 注册路由
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return Container(
      child: MaterialApp(
        title: "美丽华夏",
        home: Login(),
        onGenerateRoute: Application.router.generator,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
      ),
    );
  }
}

/*

import 'package:flutter/material.dart';

import 'pages/login_page/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
*/
