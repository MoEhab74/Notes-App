import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_elevated_bottom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextField(hintText: 'Title'),
            const SizedBox(height: 16),
            CustomTextField(hintText: 'Content', maxLines: 5),
            const SizedBox(height: 44),
            CustomElevatedBottom(text: 'Add',),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
