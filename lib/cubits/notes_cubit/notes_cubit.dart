

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notees_app/constant.dart';

import '../../model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit():super( NotesInitial());
  fetchAllNotes()async{
    try{
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));

    }catch(e){

    }


  }
}