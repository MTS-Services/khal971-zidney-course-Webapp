import 'package:flutter/material.dart';

class CustomSearchBox extends StatelessWidget {
  final double width;
  final String hintText;
  final VoidCallback? onTap;

  const CustomSearchBox({
    super.key,
    this.width = 250,
    this.hintText = 'Search',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 200, maxWidth: width),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
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
                hintText,
                style: const TextStyle(
                  color: Color(0xFF4D3D36),
                  fontSize: 16,
                  fontFamily: 'Futura Bk BT',
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                ),
              ),
              const Icon(Icons.search, size: 20, color: Color(0xFF4D3D36)),
            ],
          ),
        ),
      ),
    );
  }
}
