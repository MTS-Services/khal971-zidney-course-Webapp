import 'package:flutter/material.dart';
import 'package:khal971_zidney_course_webapp/views/question_and_quiz/question_and_quiz_desktop.dart';
import 'package:khal971_zidney_course_webapp/views/question_and_quiz/question_and_quiz_mobile.dart';
import 'package:khal971_zidney_course_webapp/views/question_and_quiz/question_and_quiz_tab.dart';


class ResponsiveQuestion extends StatelessWidget {
  const ResponsiveQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1200) {
            return QuestionAndQuizDesktop();
          } else if (constraints.maxWidth >= 768) {
            return QuestionAndQuizTab();
          } else {
            return QuestionAndQuizMobile();
          }
        },
      ),
    );
  }
}