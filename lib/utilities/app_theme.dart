import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_translate_application/utilities/app_color.dart';

class AppTheme {
  ThemeData get appTheme {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24.w)),
          ),
          backgroundColor: AppColor.primaryColor,
        ),
      ),
      appBarTheme: AppBarTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.w),
                bottomRight: Radius.circular(15.w))),
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
      ),
    );
  }
}
