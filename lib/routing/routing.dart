import 'package:flutter/material.dart';
import 'package:saudi_cars/login_view/screen/login_screen.dart';
import 'package:saudi_cars/presentation/cars_checkout/screen/checkout_cars.dart';
import 'package:saudi_cars/presentation/dash_board_page/screen/dash_board_screen.dart';
import 'package:saudi_cars/presentation/details_screen/screen/details_screen.dart';
import 'package:saudi_cars/presentation/finance_screen/screen/finance_screen.dart';
import 'package:saudi_cars/presentation/otp_login_page/screen/otp_login_screen.dart';
import 'package:saudi_cars/presentation/splash_screen/splash_screen.dart';
import 'app_routes.dart';


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
    case   AppRoutes.splash:
    return MaterialPageRoute(builder: (_) => const  SplashScreen(backgroundImagePath: 'assets/images/splash_screen.png'));
    case   AppRoutes.login:
    return MaterialPageRoute(builder: (_) => LoginPage());
    case   AppRoutes.otpLogin:
    return MaterialPageRoute(builder: (_) => OtpLoginPage());
    case   AppRoutes.dashBoard:
    return MaterialPageRoute(builder: (_) => const DashBoard());
    case AppRoutes.detailsScreen:
    return MaterialPageRoute(
    builder: (_) => DetailsScreen(selectedCar: settings.arguments as ImageModel, ),);
    case AppRoutes.checkOut:
    return MaterialPageRoute(builder: (_) => CheckoutScreen(selectedCar: settings.arguments as ImageModel),);
    case   AppRoutes.financeScreen:
    return MaterialPageRoute(builder: (_) => const  FinanceScreen());
    default:
    return MaterialPageRoute(builder: (_) => const SplashScreen(backgroundImagePath: 'assets/images/splash_screen.png'));
    }
  }
}
