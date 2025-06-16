import 'package:flutter/material.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_colors.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_style.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final Color? borderColor;
  final double borderWidth;
  final Color? shadowColor;
  final double elevation;
  final Color? backgroundColor;
  final Widget? child;
  final BoxShape shape;

  const CustomContainer({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.margin,
    this.borderRadius,
    this.borderColor,
    this.borderWidth = 1.5,
    this.shadowColor,
    this.elevation = 4.0,
    this.backgroundColor = Colors.white,
    this.shape = BoxShape.rectangle,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: shape,
        borderRadius: shape == BoxShape.rectangle ? (borderRadius ?? AppStyles.radiusS) : null,
        border: Border.all(
          color: borderColor ?? AppColors.primaryColor,
          width: borderWidth,
        ),
        boxShadow: [
          BoxShadow(
            color: (shadowColor ?? AppColors.primaryColor),
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: child,
    );
  }
}
