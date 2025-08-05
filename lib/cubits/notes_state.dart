import 'package:notes_app/models/note_model.dart';

class NotesState {}
class NotesInitial extends NotesState {}

class NoteseLoading extends NotesState {}

class NotesLoadedSuccessfully extends NotesState {
 final List<NoteModel> notesList;
 NotesLoadedSuccessfully(this.notesList);
}

class NotesLoadedFailure extends NotesState {
  final String errorMessage;
  NotesLoadedFailure(this.errorMessage);
}