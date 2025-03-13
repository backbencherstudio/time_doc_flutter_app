import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:time_doc/core/route/route_constant.dart';
import '../../../core/constant/images.dart';
import '../../../core/constant/texts.dart';
import '../../../core/theme/theme_extensions/color_palette.dart';
import '../../common_widgets/button_widget.dart';
import '../splash_screen/splash_screen.dart';
import 'pages/on_boarding_pages.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
          ),

          SizedBox(
            height: ScreenUtil().screenHeight - 100.h,
            width: ScreenUtil().screenWidth,
            child: OnBoardingSlider(
              hasFloatingButton: false,
              trailingFunction: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const SplashScreen(),
                  ),
                );
              },
              controllerColor: AppColors.primaryColor,
              totalPage: 4,
              headerBackgroundColor:
                  isDarkMode
                      ? AppColors.darkModeBgColor
                      : AppColors.lightModeBgColor,
              pageBackgroundColor:
                  isDarkMode
                      ? AppColors.darkModeBgColor
                      : AppColors.lightModeBgColor,
              background: [
                Image.asset(AppImages.onBoarding1, height: 400),
                Image.asset(AppImages.onBoarding2, height: 400),
                Image.asset(AppImages.onBoarding3, height: 400),
                Image.asset(AppImages.onBoarding4, height: 400),
              ],
              speed: 1.8,
              pageBodies: [
                OnBoardingPages(
                  title: AppTexts.page1Title,
                  subtitle: AppTexts.page1Subtitle,
                ),
                OnBoardingPages(
                  title: AppTexts.page2Title,
                  subtitle: AppTexts.page2Subtitle,
                ),
                OnBoardingPages(
                  title: AppTexts.page3Title,
                  subtitle: AppTexts.page3Subtitle,
                ),
                OnBoardingPages(
                  title: AppTexts.page4Title,
                  subtitle: AppTexts.page4Subtitle,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: InkWell(
                onTap: ()=>context.go(RouteConstant.loginScreen),
                child: ButtonWidget(
                  bgColor: AppColors.primaryColor,
                  textColor: AppColors.whiteColor,
                  title: AppTexts.letsGetStarted,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
