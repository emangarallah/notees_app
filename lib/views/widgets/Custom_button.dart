import 'package:flutter/material.dart';

import '../../constant.dart';

class CustombButton extends StatelessWidget {
const CustombButton({super.key});

@override
Widget build(BuildContext context) {
return Container(
  width: MediaQuery.of(context).size.width,

height: 55,
decoration: BoxDecoration(
color: KPrimaryColor,
borderRadius: BorderRadius.circular(8),


),
child: Center(
  child: Text('Add',style: TextStyle(color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 20
  ),
  ),
),
);
}
}

