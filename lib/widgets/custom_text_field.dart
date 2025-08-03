import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      style: TextStyle(fontSize: 24),
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hint: Text(
          hintText,
          style: TextStyle(fontSize: 24),
        ),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
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
