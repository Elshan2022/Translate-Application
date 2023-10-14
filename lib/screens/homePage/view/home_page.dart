import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_translate_application/gen/assets.gen.dart';
import 'package:flutter_translate_application/screens/homePage/service/translate_service.dart';
import 'package:flutter_translate_application/screens/homePage/view/custom_text_form_field.dart';
import 'package:flutter_translate_application/utilities/helper_methods.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final FocusNode __translationTextFocusNode = FocusNode();
  final FocusNode __resultFocusNode = FocusNode();
  final TextEditingController _translationText = TextEditingController();
  final TextEditingController _result = TextEditingController();
  final TranslationService _service = TranslationService();

  Future<void> _translateText() async {
    try {
      final text = await _service.translation(_translationText.text);
      setState(() {
        _result.text = text?.translatedText! ?? "";
      });
      if (!mounted) return;
    } catch (e) {
      HelperMethods.showSnackBar(context, e.toString(), Colors.red);
    }
  }

  bool _keyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: _keyboardVisible ? 150.h : 320.h,
                width: double.infinity,
                margin: EdgeInsets.only(left: 16.w, right: 16.w),
                child: CustomTextFormField(
                  focusNode: __translationTextFocusNode,
                  controller: _translationText,
                  iconPath: Assets.icons.paste.path,
                  onPressed: () async {
                    await FlutterClipboard.paste().then((value) {
                      setState(() {
                        _translationText.text = value;
                      });
                    });
                  },
                  hintText: "Type here",
                ),
              ),
              SizedBox(height: 16.h),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: _keyboardVisible ? 150.h : 320.h,
                width: double.infinity,
                margin: EdgeInsets.only(left: 16.w, right: 16.w),
                child: CustomTextFormField(
                  focusNode: __resultFocusNode,
                  controller: _result,
                  iconPath: Assets.icons.copy.path,
                  onPressed: () async {
                    await FlutterClipboard.copy(_result.text).then(
                      (_) {
                        HelperMethods.showSnackBar(
                            context, "Text copied", Colors.green);
                      },
                    );
                  },
                  hintText: "Result",
                ),
              ),
              SizedBox(height: 16.h),
              _translateButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Container _translateButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64.h,
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
      child: ElevatedButton(
        onPressed: () async {
          await _translateText();
        },
        child: Text(
          "Translate",
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
