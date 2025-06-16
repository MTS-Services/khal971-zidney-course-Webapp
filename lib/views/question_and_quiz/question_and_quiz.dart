import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_colors.dart';
import 'package:khal971_zidney_course_webapp/core/utils/asset_path.dart';
import 'package:khal971_zidney_course_webapp/views/question_and_quiz/Question.dart';
import 'package:khal971_zidney_course_webapp/widget/custom_app_bar.dart';
import 'package:khal971_zidney_course_webapp/widget/custom_button.dart';
import 'package:khal971_zidney_course_webapp/widget/custom_search_box.dart';

class QuestionAndQuiz extends StatefulWidget {
  QuestionAndQuiz({super.key});

  @override
  State<QuestionAndQuiz> createState() => _QuestionAndQuizState();
}

class _QuestionAndQuizState extends State<QuestionAndQuiz> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 100,right: 100),
      child: Scaffold(
        appBar: CustomAppBar(title: 'Biological Explorations'),
        body: Column(
          spacing: 20,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '30 Questions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Futura Hv BT',
                    fontWeight: FontWeight.w400,
                    height: 1.20,
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Transform.translate(
                      offset: Offset(0, 3),
                      child: SizedBox(
                        height: 58,
                        child: CustomSearchBox(
                          width: MediaQuery.of(context).size.width * 0.16,
                        ),
                      ),
                    ),
                    CustomButton(
                      buttonText: 'Add subject',
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.16,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: AppColors.primaryLightColor,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomButton(
                        onTap: () {
                          setState(() {
                            isSelected = true;
                          });
                        },
                        height: 50,
                        buttonText: 'Question',
                        width: MediaQuery.of(context).size.width * 0.6,
                        prefix: SvgPicture.asset(AssetPath.question),
                        backgroundColor: isSelected
                            ? AppColors.primaryColor
                            : AppColors.primaryLightColor,
                        shadowColor: isSelected
                            ? AppColors.primaryShadow
                            : AppColors.primaryLightColor,
                        textColor: isSelected ? AppColors.whiteColor : AppColors.blackColor,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: CustomButton(
                        onTap: () {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        buttonText: 'Quiz',
                        width: MediaQuery.of(context).size.width * 0.6,
                        prefix: SvgPicture.asset(AssetPath.quiz),
                        backgroundColor: isSelected
                            ? AppColors.primaryLightColor
                            : AppColors.primaryColor,
                        shadowColor: isSelected
                            ? AppColors.primaryLightColor
                            : AppColors.primaryShadow,
                        textColor: isSelected ? AppColors.blackColor : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
             ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Question(title: 'Biological Explorations',subTitle: 'You are: 10th',);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
