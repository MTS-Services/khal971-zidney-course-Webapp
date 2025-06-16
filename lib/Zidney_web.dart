import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:khal971_zidney_course_webapp/views/question_and_quiz/responsive_question.dart';
import 'core/utils/themdata.dart';

class ZidneyWeb extends StatelessWidget {
  const ZidneyWeb({super.key});

  @override
  Widget build(BuildContext context) {
        return ScreenUtilInit(
          minTextAdapt: true,
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themData(),
            home: ResponsiveQuestion(),
          ),
        );
  }
}
