import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_colors.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_style.dart';
import 'package:khal971_zidney_course_webapp/core/utils/asset_path.dart';
import 'package:khal971_zidney_course_webapp/views/question_and_quiz/Question.dart';
import 'package:khal971_zidney_course_webapp/widget/custom_app_bar.dart';
import 'package:khal971_zidney_course_webapp/widget/custom_button.dart';
import 'package:khal971_zidney_course_webapp/widget/custom_search_box.dart';

class QuestionAndQuizMobile extends StatefulWidget {
  QuestionAndQuizMobile({super.key});

  @override
  State<QuestionAndQuizMobile> createState() => _QuestionAndQuizMobileState();
}

class _QuestionAndQuizMobileState extends State<QuestionAndQuizMobile> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Scaffold(
        appBar: CustomAppBar(title: 'Biological Explorations'),
        body: Column(
          spacing: 20,
          children: [
            SizedBox(height: 20),
                Text(
                  '30 Questions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppStyles.fontXL,
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
                    height: 54,
                    child: CustomSearchBox(
                      hintText: 'Search',
                      fontSize: AppStyles.fontXS,
                      width: 150,
                    ),
                  ),
                ),
                CustomButton(
                  buttonText: 'Add subject',
                  prefix: Icon(Icons.add_outlined),
                  fontSize: AppStyles.fontXS,
                  height: 46,
                  width: 150,
                ),
              ],
            ),
            Container(
              height: 46,
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
                        height: 46,
                        buttonText: 'Question',
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.6,
                        fontSize: AppStyles.fontXS,
                        prefix: SvgPicture.asset(AssetPath.question),
                        backgroundColor: isSelected
                            ? AppColors.primaryColor
                            : AppColors.primaryLightColor,
                        shadowColor: isSelected
                            ? AppColors.primaryShadow
                            : AppColors.primaryLightColor,
                        textColor: isSelected ? AppColors.whiteColor : AppColors
                            .blackColor,
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
                        height: 46,
                        fontSize: AppStyles.fontXS,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.6,
                        prefix: SvgPicture.asset(AssetPath.quiz),
                        backgroundColor: isSelected
                            ? AppColors.primaryLightColor
                            : AppColors.primaryColor,
                        shadowColor: isSelected
                            ? AppColors.primaryLightColor
                            : AppColors.primaryShadow,
                        textColor: isSelected ? AppColors.blackColor : AppColors
                            .whiteColor,
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
                  return Question(title: 'Biological Explorations',
                      subTitle: 'You are: 10th',
                      fontSize: AppStyles.fontXS);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
