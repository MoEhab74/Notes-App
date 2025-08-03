import 'package:flutter/material.dart';

class SimpleSearchIcon extends StatelessWidget {
  const SimpleSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:  const Color.fromRGBO(255, 255, 255, 0.05),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 35)),
    );
  }
}
