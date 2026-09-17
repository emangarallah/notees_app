import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notees_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notees_app/model/note_model.dart';

import 'Custom_button.dart';
import 'colors_list_view.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),

          // Title
          CustomTextField(
            onSaved: (value) {
              title = value;
            },

            hint: 'Title',
          ),

          const SizedBox(height: 16),

          // Content
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',

            maxLines: 5,
          ),
          const SizedBox(height: 32),
          const ColorsListView(),

          const SizedBox(height: 16),


          // Add Note Button
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustombButton(
                isLoading: state is AddNoteLoading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    final currentDate = DateTime.now();

                    final formattedCurrent = DateFormat('dd-MM-yyyy')
                        .format(currentDate);

                    final noteModel = NoteModel(
                      title: title!,
                      subTitle: subtitle!,
                      date: formattedCurrent,
                      color: Colors.blue.value,
                    );

                    context.read<AddNoteCubit>().addNote(noteModel);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
