import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_doc/core/constant/images.dart';
import 'package:time_doc/core/constant/texts.dart';
import '../../../../core/theme/theme_extensions/color_palette.dart';
import '../widget/continue_with_button.dart';
class LoginFooterPart extends StatelessWidget {
  const LoginFooterPart({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Column(
      children: [
        Center(child: Text(AppTexts.orSignInWith)),
        SizedBox(height: 32.h),
        ContinueWithButton(
          image: AppImages.googleLogo,
          title: AppTexts.signInWithGoogle,
        ),
        SizedBox(height: 20.h),
        ContinueWithButton(
          image: AppImages.facebookLogo,
          title: AppTexts.signInWithFacebook,
        ),
        SizedBox(height: 20.h),
        ContinueWithButton(
          image: isDarkMode?AppImages.appleLogoDark:AppImages.appleLogo,
          title: AppTexts.signInWithApple,
        ),
        SizedBox(height: 32.h,),
        Center(
          child: RichText(
            text: TextSpan(
              style: textTheme.bodyMedium,
              children: [
                TextSpan(text: AppTexts.doNotHaveAnAccount),
                TextSpan(
                  text: AppTexts.signUp,
                  style: textTheme.bodyMedium!.copyWith(
                    color: AppColors.primaryColor, // Highlight "Sign up"
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}