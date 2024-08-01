import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.svgPath, required this.text});

  final String svgPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xFFFAFAFA),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset(
            svgPath,
          ),
        ),
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: Color(0xFF8696BB),
          fontWeight: FontWeight.w400,
        ),
      ),
    ]);
  }
}
