import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_translate_application/screens/splash/provider/interter_checker_provider.dart';
import 'package:flutter_translate_application/screens/splash/view/spalsh_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_translate_application/utilities/app_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );

  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer(
          builder: (context, ref, child) {
            ref.watch(checkInternetProvider(context));
            return const MyApp();
          },
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.72, 826.90),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme().appTheme,
          debugShowCheckedModeBanner: false,
          home: const SplashPage(),
        );
      },
    );
  }
}
