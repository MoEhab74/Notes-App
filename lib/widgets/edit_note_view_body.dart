import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/simple_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 42),
      child: Column(
        children: const [
          SimpleAppBar(title: 'Edit Note', icon: Icon(Icons.done, size: 35)),
          SizedBox(height: 42),
          CustomTextField(hintText: 'Edit title'),
          SizedBox(height: 42),
          CustomTextField(hintText: 'Edit content', maxLines: 5),
        ],
      ),
    );
  }
}
