import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note) async {
    try {
      emit(AddNoteLoading());
      // Store the NoteModel in ur local data base ===> in the box u made
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(NoteAddedSuccessfully());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
