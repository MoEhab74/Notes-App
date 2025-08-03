import 'package:flutter/material.dart';
import 'package:notes_app/widgets/simple_search_icon.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notes', style: TextStyle(fontSize: 30)),
                SimpleSearchIcon(),
              ],
            ),
          );
  }
}