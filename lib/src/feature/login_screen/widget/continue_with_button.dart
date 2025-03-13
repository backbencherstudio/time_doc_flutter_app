import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../core/theme/theme_extensions/color_palette.dart';

class ContinueWithButton extends StatelessWidget {
  final String image;
  final String title;
  const ContinueWithButton({
    super.key, required this.image, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Container(
      height: 56.h,
      width: 380.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: isDarkMode?AppColors.darkInputDecorationStrokeColor:AppColors.inputDecorationStrokeColor)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          Gap(12.h),
          Text(title)
        ],
      ),
    );
  }
}