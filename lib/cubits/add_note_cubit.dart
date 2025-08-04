import 'package:notes_app/cubits/notes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note)
  {
    // Store the NoteModel in ur local data base
  }

}