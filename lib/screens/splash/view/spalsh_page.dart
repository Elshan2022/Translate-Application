import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_translate_application/gen/assets.gen.dart';
import 'package:flutter_translate_application/screens/homePage/view/home_page.dart';
import 'package:flutter_translate_application/utilities/app_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  _navigate() async {
    await Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushAndRemoveUntil(
          CupertinoPageRoute(builder: (_) => const HomePage()),
          (route) => false),
    );
  }

  @override
  void initState() {
    _navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 200.h, top: 50.h),
              child: Text(
                "AZLingoPro",
                style: GoogleFonts.inter(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Center(
              child: Lottie.asset(
                Assets.lottie.splash,
                repeat: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
