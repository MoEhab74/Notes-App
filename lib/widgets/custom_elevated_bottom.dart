import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';

class CustomElevatedBottom extends StatelessWidget {
  const CustomElevatedBottom({super.key, required this.text, required this.onPressed, this.isLoading = false});
  final String text;
  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 200,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(kPrimaryColor),
        ),
        onPressed: onPressed,
        child: isLoading ? const CircularProgressIndicator(
          color: Colors.black54,
        ) : Text(
          text,
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
