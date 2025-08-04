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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

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
          CustomTextField(hintText: 'Title', onSaved: (data){
            title = data;
          },),
          const SizedBox(height: 16),
          CustomTextField(hintText: 'Content', maxLines: 5,onSaved: (data){
            subTitle = data;
          },),
          const SizedBox(height: 44),
          CustomElevatedBottom(text: 'Add',onPressed: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
              // Add Note logic here
              
            } else{
              autovalidateMode = AutovalidateMode.always;
              setState(() {
                
              });
            }
          },),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
