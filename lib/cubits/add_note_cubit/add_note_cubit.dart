
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notees_app/constant.dart';
import 'package:notees_app/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNotesInitial());

  Future<void> addNote(NoteModel note)async{
    emit( AddNoteLoading());
    try{
  var notesBox = Hive.box<NoteModel>(kNotesBox);
  emit(AddNoteSuccess());
  await notesBox.add(note);
  } catch(e){
      AddNoteFailure(e.toString());

  }



  }

}