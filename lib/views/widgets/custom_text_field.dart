

import 'package:flutter/material.dart';
import 'package:notees_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1,this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved:onSaved ,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';

        }else{
          return null;
        }
      },
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