import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomElevatedBottom extends StatelessWidget {
  const CustomElevatedBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 200,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(kPrimaryColor),
        ),
        onPressed: () {},
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 56, 66, 71),
          ),
        ),
      ),
    );
  }
}
