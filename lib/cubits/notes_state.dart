import 'package:notes_app/models/note_model.dart';

class NotesState {}
class NotesInitial extends NotesState {}

class NotesLoadedSuccessfully extends NotesState {
 final List<NoteModel> notesList;
 NotesLoadedSuccessfully(this.notesList);
}

