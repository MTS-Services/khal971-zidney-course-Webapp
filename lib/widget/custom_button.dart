import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_colors.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final String buttonText;
  final Widget? child;
  final Widget? prefix;
  final Widget? suffix;
  final Color backgroundColor;
  final Color shadowColor;
  final BorderRadius borderRadius;
  final Color textColor;
  final BoxBorder? border;
  final double? fontSize;


  const CustomButton({
    super.key,
    this.child,
    this.backgroundColor = AppColors.primaryColor,
    this.shadowColor = AppColors.primaryShadow,
    this.borderRadius = AppStyles.radiusS,
    required this.buttonText,
    this.prefix,
    this.suffix,
    this.textColor = Colors.white,
    this.onTap,
    this.height,
    this.width=250,
    this.border,
    this.fontSize = AppStyles.fontL,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: borderRadius,
            boxShadow: [
              BoxShadow(color: shadowColor, offset: const Offset(0, 8)),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (prefix != null) ...[prefix!],
              Padding(
                padding: AppStyles.paddingM,
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontWeight: AppStyles.weightBold,
                    fontSize: fontSize,
                    color: textColor,
                  ),
                ),
              ),
              if (suffix != null) ...[suffix!],
            ],
          ),
        ),
      ),
    );
  }
}
