import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:time_doc/src/provider/login_provider.dart';
import 'parts/login_footer_part.dart';
import 'parts/login_form.dart';
import 'parts/login_header_part.dart' show LoginHeaderPart;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Consumer<LoginProvider>(
      builder: (context, loginProvider, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginHeaderPart(textTheme: textTheme),
                  LoginForm(textTheme: textTheme),
                  SizedBox(height: 32.h),
                  LoginFooterPart(textTheme: textTheme),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

