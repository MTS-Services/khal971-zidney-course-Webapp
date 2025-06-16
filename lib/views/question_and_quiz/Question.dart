import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_text_styles.dart';

class Question extends StatelessWidget {
  final String title;
  final String subTitle;
  const Question({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 500,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              title: Text(title,style: AppTextStyle.bold14,),
              subtitle: Text(subTitle,style: AppTextStyle.regular12,),
            ),
          ),
        )

      ],
    );
  }
}
