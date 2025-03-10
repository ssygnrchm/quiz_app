import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 248, 198, 96),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        minimumSize: Size(MediaQuery.sizeOf(context).width, 59),
      ),
      onPressed: onPressed,
      child: CustomText(title: title, fsize: 24, fweight: FontWeight.w600),
    );
  }
}
