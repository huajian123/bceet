import 'package:flutter/material.dart' show BuildContext;
import 'package:provider/provider.dart'
    show ChangeNotifierProvider, MultiProvider, Consumer, Provider;

import 'currentIndex.dart';
import 'current_page_index.dart';

class Store {
  static BuildContext context;
  static BuildContext widgetCtx;

  static init({context, child}) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => CurrentPageIndexProvider()),
      ],
      child: child,
    );
  }

  //  通过Provider.value<T>(context)获取状态数据
  static T value<T>(context){
    return Provider.of(context);
  }

  static Consumer connect<T>({builder, child}) {
    return Consumer<T>(builder: builder, child: child);
  }
}
