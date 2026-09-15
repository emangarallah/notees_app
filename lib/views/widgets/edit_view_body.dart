

import 'package:flutter/material.dart';
import 'package:notees_app/views/widgets/custom_app_bar.dart';
import 'package:notees_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const[
          SizedBox(height: 24),
          CustomAppBar(title: 'Edit Note',icon: Icons.check),
          SizedBox(height: 6),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16),
          CustomTextField(hint: 'content',
          maxLines: 5),

        ],

      ),
    );
  }
}
