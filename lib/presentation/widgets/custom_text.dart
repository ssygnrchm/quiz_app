// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.string,
    double? fsize,
    FontWeight? fweight,
    Color? fcolor,
  });
  final String string;
  final double? fsize = 18;
  final FontWeight? fweight = FontWeight.normal;
  final Color? fcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Text(
      string,
      style: TextStyle(fontSize: fsize, fontWeight: fweight, color: fcolor),
    );
  }
}
