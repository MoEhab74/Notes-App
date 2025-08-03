import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    var date = DateTime.now().toString();

    var dateParse = DateTime.parse(date);
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
                  child: const Text(
                    'Flutter tips',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: const Text(
                    'My name is boda and i\'m a flutter developer',
                    style: TextStyle(fontSize: 24, color: Colors.black54),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
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
                  dateParse.toString().substring(0, 11),
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
