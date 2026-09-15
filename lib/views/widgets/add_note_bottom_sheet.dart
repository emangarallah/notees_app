import 'package:flutter/material.dart';

import 'package:notees_app/views/widgets/custom_text_field.dart';

import 'Custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
        
          children: const  [
            SizedBox(height: 32),
            CustomTextField(hint: 'Title',),
            SizedBox(height: 16),
        
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(height: 32),
        
            CustombButton(),
            SizedBox(height: 16),
        
          ],
        
        
        ),
      ),
    );
  }
}




