import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:time_doc/src/provider/splash_provider.dart';
import '../../../core/theme/theme_extensions/color_palette.dart';
import '../../../core/constant/images.dart';
import '../../../core/constant/texts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SplashProvider>(context, listen: false)
          .splashController(context);
    });
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(306.h),
            Center(child: SvgPicture.asset(AppImages.appLogo)),
            Gap(426.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppTexts.termsAndConditions,
                      style: textTheme.bodyMedium!.copyWith(
                        color: AppColors.whiteColor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.whiteColor,
                      ),
                    ),
                    Gap(10),
                    Text(
                      AppTexts.privacyPolicy,
                      style: textTheme.bodyMedium!.copyWith(
                        color: AppColors.whiteColor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  AppTexts.copyRightMessage,
                  style: textTheme.bodyMedium!.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
