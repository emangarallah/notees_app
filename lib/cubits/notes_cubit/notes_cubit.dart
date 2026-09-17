

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit():super( NotesInitial());
}