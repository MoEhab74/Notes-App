import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;

  void fetshAllNotes()  {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      // The values of the hive box are stored in an Iterable (list)
      // ===> convert it to a list so that we can use it
      notes = notesBox.values.toList();
      // Pass note from the state
      emit(NotesLoadedSuccessfully(notes!));

      
  }
        
}
