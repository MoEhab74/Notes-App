import 'package:flutter/material.dart';
import 'package:notes_app/widgets/simple_search_icon.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({
    super.key,
    required this.icon,
    required this.title,
    this.onPressed,
  });
  final Icon icon;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 30)),
          SimpleSearchIcon(icon: icon, onPressed: onPressed),
        ],
      ),
    );
  }
}
