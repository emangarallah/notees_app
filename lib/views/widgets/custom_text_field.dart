

import 'package:flutter/material.dart';
import 'package:notees_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(

      cursorColor: KPrimaryColor,

      decoration: InputDecoration(
        hintText: 'Title',
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