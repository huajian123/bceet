import 'package:bceet/pages/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

Handler homeHander = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});
