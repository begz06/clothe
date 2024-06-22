import 'package:clothe/presentation/auth/presentation/sign_in.dart';
import 'package:clothe/presentation/auth/presentation/sign_up.dart';
import 'package:clothe/presentation/bottom_navbar/bottom_navbar.dart';
import 'package:clothe/presentation/home/presentation/home_page.dart';
import 'package:clothe/onboarding.dart';
import 'package:clothe/presentation/home/presentation/product_info_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();
  static RouteGenerator get router => _generator;

  RouteGenerator._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
//main routing
      case 'onboard':
        return _navigate(const OnBoardingPage());
      case 'sign_up':
        return _navigate(const SignUpPage());
         case 'sign_in':
        return _navigate(const SignInPage());
          case 'navbar':
        return _navigate(const BottomNavBar());
        case 'infoPage':
        return _navigate(const ProductInfoPage());


      default:
    }
    return null;
  }

  MaterialPageRoute _navigate(Widget widget) {
    return MaterialPageRoute(builder: (contex) => widget);
  }
}
