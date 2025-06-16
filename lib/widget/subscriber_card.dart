
import 'package:flutter/material.dart';

Widget SubscriberCard({
  required String title,
  required String count,
  required Color bgColor,
  required Color innerColor,
  double? width,
}) {
  return Flexible(
    child: Container(
      width: width,
      padding: const EdgeInsets.only(bottom: 12),
      decoration: ShapeDecoration(
        color: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: ShapeDecoration(
          color: innerColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: ShapeDecoration(
                color: const Color(0xFFF0E4DE),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(400)),
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFEFCFC),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(400)),
                ),
                child: SizedBox(width: 48, height: 48),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF200D04),
                      fontSize: 20,
                      fontFamily: 'Futura Bk',
                      fontWeight: FontWeight.w400,
                      height: 1.20,
                    ),
                  ),
                  Text(
                    count,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF200D04),
                      fontSize: 40,
                      fontFamily: 'Futura Hv BT',
                      fontWeight: FontWeight.w400,
                      height: 1.20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
