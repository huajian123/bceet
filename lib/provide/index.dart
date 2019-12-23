import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart'
    show ChangeNotifierProvider, MultiProvider, Consumer, Provider;
import 'current_page_index.dart';
import 'tap_to_top.dart';

class Store {
  static BuildContext context;
  static BuildContext widgetCtx;

  static init({context, child}) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => CurrentPageIndexProvider()),
        ChangeNotifierProvider(builder: (_) => TapToTopModelProvider(ScrollController())),
      ],
      child: child,
    );
  }

  //  通过Provider.value<T>(context)获取状态数据
  static T value<T>(context) {
    return Provider.of(context);
  }

  static Consumer connect<T>({builder, child}) {
    return Consumer<T>(builder: builder, child: child);
  }
}
