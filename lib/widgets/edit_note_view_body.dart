import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/simple_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, this.note});
  final NoteModel? note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 42),
      child: Column(
        children: [
          SimpleAppBar(
            title: 'Edit Note',
            icon: Icon(Icons.done, size: 35),
            onPressed: () {
              widget.note!.title = title ?? widget.note!.title;
              widget.note!.subTitle = content ?? widget.note!.subTitle;
              // Update the note ===> save provided by hive
              widget.note!.save();
              // Refresh the UI by fetching all notes after updating the note
              BlocProvider.of<NotesCubit>(context).fetshAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 42),
          CustomTextFormField(
            hintText: widget.note!.title,
            onChanged: (data) {
              title = data;
            },
          ),
          const SizedBox(height: 42),
          CustomTextFormField(
            hintText: widget.note!.subTitle,
            maxLines: 5,
            onChanged: (data) {
              content = data;
            },
          ),
        ],
      ),
    );
  }
}
