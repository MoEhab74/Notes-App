import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1, this.onSaved});

  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data){
        if(data?.isEmpty ?? true){
          return 'Field is required';
        }else{
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      style: TextStyle(fontSize: 24),
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hint: Text(hintText, style: TextStyle(fontSize: 24)),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
        errorBorder: buildBorder(color: Colors.red)
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white54, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(12)),
      gapPadding: 4.0,
    );
  }
}
