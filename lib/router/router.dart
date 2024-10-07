import 'package:employee_view_app/pages/add_new_user/add_new_user_page.dart';
import 'package:employee_view_app/pages/home/my_home_page.dart';
import 'package:employee_view_app/pages/login/login_page.dart';
import 'package:employee_view_app/pages/main/main_page.dart';
import 'package:employee_view_app/router/routing_constant.dart';
import 'package:flutter/material.dart';

class MetaRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutingConst.addNewUserPage:
        return MaterialPageRoute(
          builder: (context) => const AddNewUserPage(),
        );
      case RoutingConst.homePage:
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
      case RoutingConst.loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case RoutingConst.mainPage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );
    }
    return null;
  }
}
