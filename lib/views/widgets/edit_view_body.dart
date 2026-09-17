

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notees_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notees_app/model/note_model.dart';
import 'package:notees_app/views/widgets/custom_app_bar.dart';
import 'package:notees_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {

   String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomAppBar(
            onPressed: (){

                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note..save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);




            },

              title: 'Edit Note',icon: Icons.check),
          SizedBox(height: 6),
          CustomTextField(
            onChanged: (value){
              title = value;
            },
              hint: widget.note.title),
          SizedBox(height: 16),
          CustomTextField(
            onChanged: (value){
              content = value;
            },
              hint: widget.note.subTitle,
          maxLines: 5),

        ],

      ),
    );
  }
}
