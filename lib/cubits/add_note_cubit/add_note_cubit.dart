
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notees_app/constant.dart';
import 'package:notees_app/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNotesInitial());

  Future<void> addNote(NoteModel note) async {
    emit(AddNoteLoading());

   // await Future.delayed(const Duration(seconds: 2));

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);

      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }



  }

