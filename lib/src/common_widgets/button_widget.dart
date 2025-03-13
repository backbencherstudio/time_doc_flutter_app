import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constant/texts.dart';
import '../../core/theme/theme_extensions/color_palette.dart';
import 'package:flutter/material.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 380.w,
      height: 55.h,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          AppTexts.letsGetStarted,
          style: textTheme.titleMedium!.copyWith(
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}