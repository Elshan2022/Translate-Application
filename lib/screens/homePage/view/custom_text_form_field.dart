import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_translate_application/utilities/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.iconPath,
    required this.onPressed,
    required this.hintText,
    required this.focusNode,
  });

  final TextEditingController controller;
  final String iconPath;
  final Function()? onPressed;
  final String hintText;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.colorWhite,
        borderRadius: BorderRadius.circular(24.w),
        border: Border.all(color: AppColor.colorGrey, width: 2.w),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hintText,
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.darkGrey,
                  ),
                ),
                InkWell(
                  onTap: onPressed,
                  child: Image.asset(iconPath, width: 18.w, height: 18.w),
                ),
              ],
            ),
            Expanded(
              child: TextFormField(
                controller: controller,
                maxLines: 15,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
