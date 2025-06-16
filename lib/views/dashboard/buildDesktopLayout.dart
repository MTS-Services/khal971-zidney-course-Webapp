import 'package:flutter/material.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_colors.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_style.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_text_styles.dart';
import 'package:khal971_zidney_course_webapp/core/utils/asset_path.dart';
import 'package:khal971_zidney_course_webapp/widget/custom_app_bar.dart';
import 'package:khal971_zidney_course_webapp/widget/custom_button.dart';
import 'package:khal971_zidney_course_webapp/widget/custom_search_box.dart';
import 'package:khal971_zidney_course_webapp/widget/subscriber_card.dart';

class BuildDesktopLayout extends StatelessWidget {

  const BuildDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 100, right: 100),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Admin panel',
        ),
        body: Padding(
          padding: AppStyles.paddingVerticalM,
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your subscribers',
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
                spacing: 20,
                children: [
                  SubscriberCard(title: 'Current free subscription', count: '2000', bgColor: AppColors.primaryColor, innerColor: AppColors.primaryLightColor),
                  SubscriberCard(title: 'Current pro subscriber', count: '500', bgColor: AppColors.secondaryColor, innerColor: AppColors.secondaryLightColor),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All subjects',
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
                            child: CustomSearchBox()),
                      ),
                      CustomButton(buttonText: 'Add subject',
                      height: 50,
                      width: 250,),
                    ],
                  )
                ],
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primaryLightColor,
                      AppColors.primaryLightColor,
                      Colors.black,
                      Colors.black,
                      Colors.white,
                      Colors.white,
                    ],
                    stops: [
                      0.0,
                      0.3,
                      0.301,
                      0.302,
                      0.303,
                      1.0
                    ],
                  ),
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
