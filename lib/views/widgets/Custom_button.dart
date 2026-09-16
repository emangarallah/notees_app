import 'package:flutter/material.dart';

import '../../constant.dart';

class CustombButton extends StatelessWidget {
const CustombButton({super.key, this.onTap,  this.isLoading = false});
final void Function()? onTap;
final bool isLoading;

@override
Widget build(BuildContext context) {
return GestureDetector(
  onTap:onTap ,
  child: Container(
    width: MediaQuery.of(context).size.width,

  height: 55,
  decoration: BoxDecoration(
  color: KPrimaryColor,
  borderRadius: BorderRadius.circular(8),


  ),
  child: Center(
    child: isLoading ? SizedBox(height: 24,
        width: 24,
        child: const CircularProgressIndicator(color: Colors.black,)):
    const Text('Add',style: TextStyle(color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20
    ),
    ),
  ),
  ),
);
}
}

