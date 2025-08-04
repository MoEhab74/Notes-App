class AddNotesState {}

class AddNoteInitial extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class NoteAddedSuccessfully extends AddNotesState {}

class AddNoteFailure extends AddNotesState {
  final String errorMessage;
  AddNoteFailure(this.errorMessage);
}
