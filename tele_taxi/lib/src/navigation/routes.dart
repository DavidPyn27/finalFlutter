import 'package:flutter/material.dart';
import 'package:tele_taxi/src/widgets/menu.dart';

class Routes {
  static const root = '/';

  static Route routes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case root:
        return _buildRoute(const Menu());
      default:
        throw Exception('Route does not exists');
    }
  }

  static MaterialPageRoute _buildRoute(Widget widget) =>
      MaterialPageRoute(builder: (_) => widget);
}