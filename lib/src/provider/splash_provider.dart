import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:time_doc/core/route/route_constant.dart';

class SplashProvider extends ChangeNotifier{

  Future<void> splashController(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isOpenFirst = prefs.getBool('isOpenFirst');
    await Future.delayed(Duration(seconds: 3));
    if (!context.mounted) return;
    if(isOpenFirst==null){
      prefs.setBool('isOpenFirst', true);
      context.go(RouteConstant.welcomeScreen);
    }else{
      context.go(RouteConstant.loginScreen);
    }
  }
}