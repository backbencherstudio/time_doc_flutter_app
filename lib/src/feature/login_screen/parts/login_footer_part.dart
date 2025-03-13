import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Column(
      children: [
        Center(child: Text('- Or sign in with -')),
        SizedBox(height: 32.h),
        ContinueWithButton(
          image: 'assets/images/login/Social icon.png',
          title: 'Sign in with Google',
        ),
        SizedBox(height: 20.h),
        ContinueWithButton(
          image: 'assets/images/login/Social icon (1).png',
          title: 'Sign in with Facebook',
        ),
        SizedBox(height: 20.h),
        ContinueWithButton(
          image: 'assets/images/login/Social icon (2).png',
          title: 'Sign in with Apple',
        ),
        SizedBox(height: 32.h,),
        Center(
          child: RichText(
            text: TextSpan(
              style: textTheme.bodyMedium,
              children: [
                TextSpan(text: "Don't have an account? "),
                TextSpan(
                  text: "Sign up",
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