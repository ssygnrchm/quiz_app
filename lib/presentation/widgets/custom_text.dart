import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double? fsize;
  final FontWeight? fweight;
  final Color? fcolor;

  const CustomText({
    super.key,
    required this.title,
    this.fsize = 18,
    this.fweight = FontWeight.w600,
    this.fcolor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: fsize, fontWeight: fweight, color: fcolor),
    );
  }
}
