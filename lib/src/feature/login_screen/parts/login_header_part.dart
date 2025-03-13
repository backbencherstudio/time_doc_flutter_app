import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_doc/core/constant/texts.dart';
class LoginHeaderPart extends StatelessWidget {
  const LoginHeaderPart({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 64.h),
        Text(
          AppTexts.welcomeBack,
          style: textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          AppTexts.pleaseEnterYourLoginInformation,
          style: textTheme.bodyMedium,
        ),
        SizedBox(height: 32.h),
      ],
    );
  }
}