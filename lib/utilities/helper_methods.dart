import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_translate_application/utilities/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class HelperMethods {
  static showSnackBar(BuildContext context, String message, Color color,
      [int duration = 1]) {
    Flushbar(
      margin: EdgeInsets.all(8.w),
      borderRadius: BorderRadius.circular(8.w),
      backgroundColor: color,
      duration: Duration(seconds: duration),
      flushbarPosition: FlushbarPosition.TOP,
      messageText: Text(
        message,
        style: GoogleFonts.inter(
          fontSize: 18.sp,
          color: Colors.white,
        ),
      ),
    ).show(context);
  }

  static showLoadingDialog() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 220.w,
              height: 120.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.sp),
                color: Colors.white,
              ),
              child: const Center(
                  child: CircularProgressIndicator(
                color: AppColor.primaryColor,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
