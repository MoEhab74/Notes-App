import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    // var date = DateTime.now().toString();
    // var dateParse = DateTime.parse(date);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNoteView();
        },),);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: 400,
        // height: 280,
        decoration: BoxDecoration(
          color: Colors.yellow[700],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 12),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child:  Text(
                    note.title ,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child:  Text(
                    note.subTitle,
                    style: TextStyle(fontSize: 24, color: Colors.black54),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    // The note must be deleted from the ui ===> Refresh the ui
                    BlocProvider.of<NotesCubit>(context).fetshAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 50,
                    color: Color.fromARGB(255, 56, 66, 71),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  // dateParse.toString().substring(0, 11),
                  note.date.toString().substring(0, 11),
                  style: TextStyle(color: Colors.black54, fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
