import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            backgroundColor:  const Color.fromARGB(255, 16, 125, 139),
            onPressed: () {},
            shape: const CircleBorder(),
            child: Icon(Icons.add, size: 32),
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
