import 'package:_3rd_course/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String Hint;
  const AppTextField({super.key, required this.Hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: Hint,
        labelText: Hint,
        labelStyle: TextStyle(color: AppColors.white),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        filled: true,
        fillColor: AppColors.fieldColor,
      ),
    );
  }
}
