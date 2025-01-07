import 'package:crypto_app_ui/src/features/home/presentation/screens/home.dart';
import 'package:crypto_app_ui/src/features/swap/presentation/screens/swap.dart';
import 'package:crypto_app_ui/src/route/custom_page_route.dart';
import 'package:crypto_app_ui/src/route/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.home:
        return CustomPageRoute(builder: (_) => const Home());
      case RouteNames.swap:
        return CustomPageRoute(builder: (_) => const Swap());
    }
    return null;
  }
}
