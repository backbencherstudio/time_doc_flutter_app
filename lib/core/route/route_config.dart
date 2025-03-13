import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:time_doc/src/feature/login_screen/login_screen.dart';
import '../../src/feature/on_boarding_screen/on_boarding_screen.dart';
import '../../src/feature/splash_screen/splash_screen.dart';
import 'route_constant.dart';

class RouteConfig {
  static final GoRouter goRouter = GoRouter(
    initialLocation: RouteConstant.initialRoute,
    routes: [
      GoRoute(
        path: RouteConstant.initialRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: RouteConstant.welcomeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingScreen();
        },
      ),
      GoRoute(
        path: RouteConstant.loginScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
    ],
  );
}
