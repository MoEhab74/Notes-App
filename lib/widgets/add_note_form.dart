import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_elevated_bottom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  // To show an error in case of a wrong input
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 24),
          CustomTextFormField(
            hintText: 'Title',
            onSaved: (data) {
              title = data;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (data) {
              subTitle = data;
            },
          ),
          const SizedBox(height: 44),
          CustomElevatedBottom(
            text: 'Add',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // Add Note logic here
                var noteModel = NoteModel(
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                  title: title!,
                  subTitle: subTitle!,
                );
                // Trigger the cubit
                // BlocProvider.read<AddNoteCubit>(context).addNote(noteModel)
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
