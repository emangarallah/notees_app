

import 'package:flutter/material.dart';
import 'package:notees_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1});
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,

      cursorColor: KPrimaryColor,

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: KPrimaryColor
        ),
        border:buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder:buildBorder(KPrimaryColor),
      ),
    );
  }
}


OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color:color ?? Colors.white
    ),
  );
}