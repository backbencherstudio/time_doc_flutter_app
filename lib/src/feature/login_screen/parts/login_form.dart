import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:time_doc/core/constant/texts.dart';
import '../../../../core/theme/theme_extensions/color_palette.dart';
import '../../../common_widgets/button_widget.dart';
import '../../../provider/login_provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
        builder: (context, loginProvider, child){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTexts.email,
                style: textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: loginProvider.emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline_rounded),
                  hintText: AppTexts.enterYourEmail,
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                AppTexts.password,
                style: textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: loginProvider.passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: AppTexts.enterYourPassword,
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          loginProvider.setIsRememberMe();
                        },
                        child: Container(
                          height: 19.h,
                          width: 19.h,
                          decoration: BoxDecoration(
                            color:
                            loginProvider.getIsRememberMe
                                ? AppColors.primaryColor
                                : WidgetStateColor.transparent,
                            border: Border.all(
                              color: AppColors.iconColorLight,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color:
                              loginProvider.getIsRememberMe
                                  ? AppColors.whiteColor
                                  : AppColors.iconColorLight,
                              size: 16.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(AppTexts.rememberMe, style: textTheme.bodyMedium),
                    ],
                  ),
                  Text(
                    AppTexts.forgetPassword ,
                    style: textTheme.bodyMedium!.copyWith(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 48.h),
              ButtonWidget(
                bgColor: loginProvider.getIsFilledForm?AppColors.primaryColor:Color(0xffDAE4FF),
                textColor: Color(0xff8A94A6),
                title: AppTexts.login,
              ),
            ],
          );
        });
  }
}