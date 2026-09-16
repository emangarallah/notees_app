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
        child: AddNoteForm(),
      ),
    );
  }
}




class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
      
        children:   [
          SizedBox(height: 32),
          CustomTextField(
            onSaved: (value){
              title = value;

            },
              hint: 'Title'),
        const  SizedBox(height: 16),
      
          CustomTextField(
            onSaved: (value){
              title = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
        const  SizedBox(height: 16),
      
          CustombButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                autovalidateMode = AutovalidateMode.always;
              }

            },
          ),

      
        ],
      
      
      ),
    );
  }
}
