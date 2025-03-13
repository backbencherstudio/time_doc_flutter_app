import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String title;
  const ButtonWidget({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 380.w,
      height: 55.h,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          title,
          style: textTheme.titleSmall!.copyWith(color: textColor),
        ),
      ),
    );
  }
}
