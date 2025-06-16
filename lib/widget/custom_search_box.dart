import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khal971_zidney_course_webapp/core/utils/app_style.dart';

class CustomSearchBox extends StatelessWidget {
  final double? height;
  final double? width;
  final double? fontSize;
  final String? hintText;
  final VoidCallback? onTap;

  const CustomSearchBox({
    super.key,
    this.hintText,
    this.onTap, this.fontSize, this.height, this.width=250,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFFEFCFC),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFE49F13), width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              hintText!,
              style: TextStyle(
                color: Color(0xFF4D3D36),
                fontSize: fontSize,
                fontFamily: 'Futura Bk BT',
                fontWeight: FontWeight.w400,
                height: 1.2,
              ),
            ),
            const Icon(Icons.search, size: 20, color: Color(0xFF4D3D36)),
          ],
        ),
      ),
    );
  }
}
