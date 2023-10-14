import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final checkInternetProvider = Provider.family<void, BuildContext>(
  (ref, context) {
    Connectivity().onConnectivityChanged.listen(
      (event) {
        if (event == ConnectivityResult.none) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30.h),
                  AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.w)),
                    title: Text(
                      "Please check internet !",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                ],
              );
            },
          );
        }  else {
          Navigator.canPop(context) ? Navigator.pop(context) : null;
        } 
      },
    );
  },
);
