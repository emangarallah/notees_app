part of 'add_note_cubit.dart';

abstract class AddNoteState {}

class AddNotesInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}