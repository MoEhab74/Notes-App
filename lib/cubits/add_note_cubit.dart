import 'package:notes_app/cubits/notes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote({required String title, required String subTitle}){

  }

}