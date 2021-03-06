/// References:
/// https://github.com/simplezhli/flutter_deer/blob/master/lib/routers/routers.dart
/// https://github.com/simplezhli/flutter_deer/blob/master/lib/routers/router_init.dart

import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';

import 'package:sentrei/app/app.dart';
import 'package:sentrei/home/home.dart';
import 'package:sentrei/login/login.dart';
import 'package:sentrei/widgets/widgets.dart';

class Routes {
  static String home = '/home';

  static List<IRouterProvider> _listRouter = [];

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      debugPrint('Route not found');
      return WidgetNotFound();
    });

    router.define(
      home,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
            HomePage(),
      ),
    );

    _listRouter.clear();

    _listRouter.add(LoginRouter());

    _listRouter.forEach((routerProvider) {
      routerProvider.initRouter(router);
    });
  }
}
